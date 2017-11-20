package br.com.trive.muambyte.daos;

import java.util.List;

import br.com.trive.muambyte.models.CartInfo;
import br.com.trive.muambyte.models.OrderDetailInfo;
import br.com.trive.muambyte.models.OrderInfo;
import br.com.trive.muambyte.models.PaginationResult;


public interface OrderDao {

   public void saveOrder(CartInfo cartInfo);

   public PaginationResult<OrderInfo> listOrderInfo(int page,
           int maxResult, int maxNavigationPage);
   
   public OrderInfo getOrderInfo(String orderId);
   
   public List<OrderDetailInfo> listOrderDetailInfos(String orderId);

}