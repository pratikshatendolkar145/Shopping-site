package test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import test.dao.CategoryDao;
import test.model.Category;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDao categoryDao;
	@RequestMapping(value="category")
	public ModelAndView categoryPage()
	{
		return new ModelAndView("category");
	}
	
	@RequestMapping(value="addCategory")
	public ModelAndView addCategory(@ModelAttribute("category")Category category)
	{
		categoryDao.addCategory(category);
		return new ModelAndView("index");
	}
	
	@RequestMapping(value="categoryList")
	public ModelAndView categoryList()
	{
		ModelAndView mv=new ModelAndView("categoryList");
		List<Category> cl=categoryDao.getCategoryList();
		mv.addObject("clist", cl);
		return mv;
	}
	
	@RequestMapping(value="deleteCategory{categoryId}")
	public ModelAndView deleteCategory(@PathVariable("categoryId")int categoryId)
	{
		categoryDao.deleteCategory(categoryId);
		return new ModelAndView("redirect:/categoryList");
	}

}
