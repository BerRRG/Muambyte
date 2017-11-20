package br.com.trive.muambyte.daos;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.trive.muambyte.models.CartInfo;
import br.com.trive.muambyte.models.CartLineInfo;
import br.com.trive.muambyte.models.CustomerInfo;
import br.com.trive.muambyte.models.Order;
import br.com.trive.muambyte.models.OrderDetail;
import br.com.trive.muambyte.models.OrderDetailInfo;
import br.com.trive.muambyte.models.OrderInfo;
import br.com.trive.muambyte.models.PaginationResult;
import br.com.trive.muambyte.models.Product;
 
@Transactional
@Repository
public class OrderDao{
 
   @PersistenceContext
   private EntityManager manager;
	   
    @Autowired
    private  SessionFactory sessionFactory;
 
    @Autowired
    private ProductDao productDao;
 
    private int getMaxOrderNum() {
        String sql = "Select max(o.orderNum) from " + Order.class.getName() + " o ";
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery(sql);
        Integer value = (Integer) query.uniqueResult();
        if (value == null) {
            return 0;
        }
        return value;
    }
 
    public void saveOrder(CartInfo cartInfo) {
        Session session = sessionFactory.getCurrentSession();
 
        int orderNum = this.getMaxOrderNum() + 1;
        Order order = new Order();
 
        order.setId(UUID.randomUUID().toString());
        order.setOrderNum(orderNum);
        order.setOrderDate(new Date());
        order.setAmount(cartInfo.getAmountTotal());
 
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        
        CustomerInfo customerInfo = cartInfo.getCustomerInfo();
        order.setUserName(auth.getName());
        order.setCustomerName(customerInfo.getName());
        order.setCustomerEmail(customerInfo.getEmail());
        order.setCustomerPhone(customerInfo.getPhone());
        order.setCustomerAddress(customerInfo.getAddress());
 
        session.persist(order);
 
        List<CartLineInfo> lines = cartInfo.getCartLines();
 
        for (CartLineInfo line : lines) {
            OrderDetail detail = new OrderDetail();
            detail.setId(UUID.randomUUID().toString());
            detail.setOrder(order);
            detail.setAmount(line.getAmount());
            detail.setPrice(line.getProductInfo().getPrice());
            detail.setQuanity(line.getQuantity());
 
            Integer code = Integer.parseInt(line.getProductInfo().getCode());
            Product product = this.productDao.findById(code);
            if (product.getId() instanceof Integer && product !=null) {
            	product.setStock(product.getStock() - line.getQuantity());
            	productDao.save(product);
            }
            
            detail.setProduct(product);
 
            session.persist(detail);
        }

        cartInfo.setOrderNum(orderNum);
    }
 
    public PaginationResult<OrderInfo> listOrderInfo(int page, int maxResult, int maxNavigationPage) {
        String sql = "Select new " + OrderInfo.class.getName()//
                + "(ord.id, ord.orderDate, ord.orderNum, ord.amount, "
                + " ord.customerName, ord.customerAddress, ord.customerEmail, ord.customerPhone) " + " from "
                + Order.class.getName() + " ord "//
                + " order by ord.orderNum desc";
        Session session = this.sessionFactory.getCurrentSession();
 
        Query query = session.createQuery(sql);
 
        return new PaginationResult<OrderInfo>(query, page, maxResult, maxNavigationPage);
    }
 
    public Order findOrder(String orderId) {
        Session session = sessionFactory.getCurrentSession();
        Criteria crit = session.createCriteria(Order.class);
        crit.add(Restrictions.eq("id", orderId));
        return (Order) crit.uniqueResult();
    }
 
    public OrderInfo getOrderInfo(String orderId) {
        Order order = this.findOrder(orderId);
        if (order == null) {
            return null;
        }
        return new OrderInfo(order.getId(), order.getOrderDate(), //
                order.getOrderNum(), order.getAmount(), order.getCustomerName(), //
                order.getCustomerAddress(), order.getCustomerEmail(), order.getCustomerPhone());
    }
 
    public List<OrderDetailInfo> listOrderDetailInfos(String orderId) {
        String sql = "Select new " + OrderDetailInfo.class.getName() //
                + "(d.id, d.product.code, d.product.name , d.quanity,d.price,d.amount) "//
                + " from " + OrderDetail.class.getName() + " d "//
                + " where d.order.id = :orderId ";
 
        Session session = this.sessionFactory.getCurrentSession();
 
        Query query = session.createQuery(sql);
        query.setParameter("orderId", orderId);
 
        return query.list();
    }

    
//    public static Session getSession() throws HibernateException {         
// 	   Session sess = null;       
// 	   try {         
// 	       sess = sessionFactory.getCurrentSession();  
// 	   } catch (org.hibernate.HibernateException he) {  
// 	       sess = sessionFactory.openSession();     
// 	   }             
// 	   return sess;
// 	} 

}