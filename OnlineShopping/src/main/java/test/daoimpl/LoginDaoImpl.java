package test.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.dao.LoginDao;
import test.dao.UserDao;
import test.model.User;

@Repository
@Transactional
public class LoginDaoImpl implements LoginDao{

	@Autowired
	SessionFactory sessionFactory;

	@Autowired
	UserDao userDao;
	
	@SuppressWarnings("unchecked")
	public boolean userLogin(String email, String pass) 
	{
		try 
		{
			List<User> ul=sessionFactory.getCurrentSession().createQuery("from User where email='"+email+"'").list();
			for(User u:ul) 
			{
			if(u!=null && u.getEmail().equals(email) && u.getPass().equals(pass))
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
	public boolean adminLogin(String email, String pass) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkUser(String email, String pass) {
		// TODO Auto-generated method stub
		return false;
	}

}
