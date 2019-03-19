package test.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.dao.ProductDao;
import test.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao 
{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean addProduct(Product product) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(product);
			return true;
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProductList() 
	{
		try
		{
			List<Product> list=sessionFactory.getCurrentSession().createQuery("from Product").list();
			return list;
			
		}catch(Exception e)
		{
			return null;
		}
	}

	@Override
	public Product getProduct(int productId) 
	{
		Product product=sessionFactory.getCurrentSession().get(Product.class, productId);
		return product;
	}

	

	@Override
	public void deleteProduct(int productId) 
	{
		Session session=sessionFactory.getCurrentSession();
		Product product =new Product();
		product.setProductId(productId);
		session.delete(product);
		
	}

	@Override
	public boolean updateProduct(Product product) 
	{
		
		try
		{
			sessionFactory.getCurrentSession().update(product);
			return true;

		}
		catch(Exception e)
		{
			return false;
		}	
	}


}
