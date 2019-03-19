package test.daoimpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.dao.CartDao;
import test.model.Cart;
import test.model.CartItem;
import test.model.Product;

@Repository
@Transactional
public class CartDaoImpl implements CartDao
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addCart(CartItem cart) 
	{

		
	//	String hql="insert into cart(productId,userEmail) values ("+cart.getProductId()+",'"+cart.getUserEmail()+"')";
		try 
		{	

			sessionFactory.getCurrentSession().save(cart);
			return true;

		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);			
			return false;
		}
	}

	
	public static Connection getConnect(){
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project2","root", "root");

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public List<Cart> getCartList(String userEmail) 
	{
		List<Cart> l=new ArrayList<>();
			 
		String hql="select c.cartId,price,productDesc,productName,quantity from product p inner join cartitem c on p.productId=c.productId where c.userEmail='"+userEmail+"'";
		try 
		{		
			PreparedStatement ps=getConnect().prepareStatement(hql);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				Cart c=new Cart();
				c.setProductId(rs.getInt("cartId"));
				c.setProductDec(rs.getString("productDesc"));
				c.setPrice(rs.getDouble("price"));
				c.setProductName(rs.getString("productName"));
				c.setProductQty(rs.getInt("quantity"));
				l.add(c);
				}
		
			for(Cart o:l)System.out.println(o);
			
			return l;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Product> sortProductByCategory(int categoryId) {

		String hql="select price,productDesc,productName,quantity from product p inner join category c on p.categoryId=c.categoryId where c.categoryId='"+categoryId+"'";
		List<Product> pl=new ArrayList<>();
		try
		{
			PreparedStatement ps=getConnect().prepareStatement(hql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Product p=new Product();
				p.setPrice(rs.getInt("price"));
				p.setProductDesc(rs.getString("productDesc"));
				p.setProductName(rs.getString("productName"));
				p.setQuantity(rs.getInt("quantity"));
			pl.add(p);
			}
			
			return pl;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		return null;
	}

	@Override
	public boolean deleteCart(int productId) 
	{
		try 
		{
			System.out.println("Dao Id"+productId);
			CartItem cart=	sessionFactory.getCurrentSession().get(CartItem.class, productId);
			System.out.println("My Cart Data    :  "+cart);
			if(cart!=null)
			{
				sessionFactory.getCurrentSession().delete(cart);
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
	public boolean clearCartByUserEmail(String userEmail) {
		try {
			
			List<CartItem> clist=sessionFactory.getCurrentSession().createQuery("from CartItem where userEmail='"+userEmail+"'").getResultList();
			for(CartItem c:clist) {
				
				sessionFactory.getCurrentSession().delete(c);
			}
			return true;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
