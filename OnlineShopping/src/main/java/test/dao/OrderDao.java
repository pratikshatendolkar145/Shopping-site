package test.dao;

import java.util.List;

import test.model.BillingAddress;
import test.model.Order;

public interface OrderDao 
{

	boolean addOrder(Order order);
	boolean deleteOrder(int orderId);
	/*List<Order> getOrderList(String userEmail);*/
	BillingAddress getAddressifExist(String userName);
	public Order getOrder(String userEmail) ;
	List<Order> getOrderList();
	

}
