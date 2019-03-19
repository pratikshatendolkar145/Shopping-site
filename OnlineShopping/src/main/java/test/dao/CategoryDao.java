package test.dao;

import java.util.List;
import test.model.Category;

public interface CategoryDao 
{
	boolean addCategory(Category category);
	List<Category> getCategoryList();
	public boolean deleteCategory(int categoryId);
	public Category getCategory(int categoryId);
}
