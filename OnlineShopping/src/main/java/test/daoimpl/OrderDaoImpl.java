package test.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.dao.OrderDao;
import test.model.BillingAddress;
import test.model.Category;
import test.model.Order;

@Repository
@Transactional
public class OrderDaoImpl implements OrderDao 
{
	@Autowired
	SessionFactory sessionFactory; 

	@Override
	public boolean addOrder(Order order) {
		try {
			sessionFactory.getCurrentSession().save(order);
			return true;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}

	@Override
	public boolean deleteOrder(int orderId) 
	{
		try {
			System.out.println("Dao Id"+orderId);
			Order order=	sessionFactory.getCurrentSession().get(Order.class, orderId);
			if(order!=null)
			{
				sessionFactory.getCurrentSession().delete(order);
				return true;
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			System.out.println(e);

		}
		return false;
		
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public BillingAddress getAddressifExist(String userName) {
		
		try {
			
	List<BillingAddress> bl=sessionFactory.getCurrentSession().createQuery("from BillingAddress where userEmail='"+userName+"'").getResultList();
	
	for(BillingAddress b:bl)
		return b;
	
		}catch (Exception e) {
		e.printStackTrace();	
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public Order getOrder(String userEmail) {
		
		try {
		String sql="from  Order where userEmail='"+userEmail+"' order by orderId desc";
		List<Order> currentOrder=sessionFactory.getCurrentSession().createQuery(sql).getResultList();
		return currentOrder.get(0);
		
		}catch (Exception e) {
		e.printStackTrace();
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Order> getOrderList() 
	{
		try
		{	
			List<Order> orderlist=sessionFactory.getCurrentSession().createQuery("from Order").list();
			return orderlist;	
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);
			return null;
		}
	}
}
