package test.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.dao.FeedbackDao;
import test.model.Category;
import test.model.Feedback;

@Repository
@Transactional
public class FeedbackDaoImpl implements FeedbackDao 
{
	@Autowired
	SessionFactory sessionFactory;

	public boolean addFeedback(Feedback feedback) 
	{
		try
		{
		sessionFactory.getCurrentSession().save(feedback);
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
	public List<Feedback> getFeedbackList() 
	{
		try
		{
			
			List<Feedback> feedlist=sessionFactory.getCurrentSession().createQuery("from Feedback").list();
			return feedlist;
			
		}
		catch(Exception e)
		{
			return null;
		}
	}

	@Override
	public boolean deleteFeedback(int fid) 
	{
		try {
			System.out.println("Dao Id"+fid);
			Feedback feedback=	sessionFactory.getCurrentSession().get(Feedback.class, fid);
			if(feedback!=null)
			{
				sessionFactory.getCurrentSession().delete(feedback);
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
	public Feedback getFeedback(int fid) 
	{
		Feedback feedback=	sessionFactory.getCurrentSession().get(Feedback.class, fid);
		return feedback;
	}

}
