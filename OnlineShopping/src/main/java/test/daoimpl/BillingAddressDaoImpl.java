package test.daoimpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.dao.BillingAddressDao;
import test.model.BillingAddress;

@Repository
@Transactional
public class BillingAddressDaoImpl implements BillingAddressDao 
{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean addAddress(BillingAddress address) 
	{
		try 
		{	

			sessionFactory.getCurrentSession().save(address);
			System.out.println(address);
			return true;

		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);			
			return false;
		}
	}

	@Override
	public boolean updateAddress(BillingAddress address) {
		try 
		{	

			sessionFactory.getCurrentSession().saveOrUpdate(address);
			System.out.println(address);
			return true;

		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);			
			return false;
		}
	}

}
