
package test.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.dao.UserDao;
import test.model.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao
{
	@Autowired
	SessionFactory sessionFactory;
	//public static List<User> ulist=new ArrayList<>();

	@Override
	public boolean addUser(User user) 
	{
		try
		{
			
			sessionFactory.getCurrentSession().save(user);
			
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	public List<User> getUserList() 
	{
		try 
		{
			//Session session=sessionFactory.openSession();
			List<User> list=sessionFactory.getCurrentSession().createQuery("from User").list();
			//session.close();
			return list;
		}
		catch(Exception e) 
		{
			return null;
		}
	}


	@Override
	public boolean deleteUser(int  id) {
		try {
			System.out.println("Dao Id"+id);
			User user=	sessionFactory.getCurrentSession().get(User.class, id);
			if(user!=null) {
				sessionFactory.getCurrentSession().delete(user);

				return true;
			}

		}
		catch (Exception e) 
		{
			e.printStackTrace();

		}
		return false;
	}

	@Override
	public User getUser(String email) 
	{
		User user=	sessionFactory.getCurrentSession().get(User.class, email);
		return user;
	}

	@Override
	public boolean updateUser(User User) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(User);
			return true;

		}catch(Exception e)
		{
			return false;
		}			
	}

	@SuppressWarnings("unchecked")
	@Override
	public User getUserByEmail(String userEmail) 
	{
		try {
			List<User> ul=sessionFactory.getCurrentSession().createQuery("from User where email='"+userEmail+"'").list();
			for(User uu:ul)
				return uu;
			
		}catch (Exception e) 
		{
			e.printStackTrace();
			System.out.println(e);
		}
		return null;
	}

}
