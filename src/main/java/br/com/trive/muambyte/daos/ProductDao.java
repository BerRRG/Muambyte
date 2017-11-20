package br.com.trive.muambyte.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceContext;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;

import br.com.trive.muambyte.models.PaginatedList;
import br.com.trive.muambyte.models.Product;

@Repository
public class ProductDao
{

    @Autowired
    private SessionFactory sessionFactory;
	
	
   @PersistenceContext
   private EntityManager manager;

   public List<Product> all()
   {
      return manager.createQuery("select p from Product p", Product.class).getResultList();
   }
   
   public List<Product> getFeatured()
   {
	   return manager.createQuery("select p from Product p where p.featured = 1", Product.class).getResultList();	   
   }

   public void save(Product product)
   {
      manager.persist(product);
   }

   public Product findById(Integer id)
   {
      return manager.find(Product.class, id);
   }

   public void remove(Product product)
   {
      manager.remove(product);
   }

   public void update(Product product)
   {
      manager.merge(product);
   }

   public PaginatedList paginated(int page, int max)
   {
      return new PaginatorQueryHelper().list(manager, Product.class, page, max);
   }
   
   public PaginatedList FeaturedPaginated (int page, int max)
   {
	   return new PaginatorQueryHelper().featuredList(manager, Product.class, page, max);
   }
   
   public Product findProduct(String code) {
       Session session = sessionFactory.getCurrentSession();
       Criteria crit = session.createCriteria(Product.class);
       crit.add(Restrictions.eq("code", code));
       return (Product) crit.uniqueResult();
   }
//   
//   public static Session getSession() throws HibernateException {         
//	   Session sess = null;       
//	   try {         
//	       sess = sessionFactory.getCurrentSession();  
//	   } catch (org.hibernate.HibernateException he) {  
//	       sess = sessionFactory.openSession();     
//	   }             
//	   return sess;
//	} 
   
}
