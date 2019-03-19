package test.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.dao.CategoryDao;
import test.model.Category;
import test.model.User;

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao
{
	@Autowired
	SessionFactory sessionFactory; 

	@Override
	public boolean addCategory(Category category)
	{
		try
		{
		sessionFactory.getCurrentSession().save(category);
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
	public List<Category> getCategoryList()
	{
			try
			{
				List<Category> catlist=sessionFactory.getCurrentSession().createQuery("from Category").list();
				return catlist;
				
			}
			catch(Exception e)
			{
				return null;
			}
	}

	@Override
	public boolean deleteCategory(int categoryId) 
	{
		try {
			System.out.println("Dao Id"+categoryId);
			Category category=	sessionFactory.getCurrentSession().get(Category.class, categoryId);
			if(category!=null)
			{
				sessionFactory.getCurrentSession().delete(category);
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
	public Category getCategory(int categoryId) 
	{
		Category category=	sessionFactory.getCurrentSession().get(Category.class, categoryId);
		return category;
	}

}
