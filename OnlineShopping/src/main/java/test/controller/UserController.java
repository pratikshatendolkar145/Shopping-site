package test.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import test.dao.CategoryDao;
import test.dao.ProductDao;
import test.dao.UserDao;
import test.model.Category;
import test.model.Product;
import test.model.User;

@Controller
public class UserController 
{
	@Autowired
	UserDao userDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value={"/","home","index"})
	public ModelAndView HomePage(HttpSession session)
	{
		System.out.println("hello page");
		ModelAndView mv=new ModelAndView("index");
		List<Category> cl=categoryDao.getCategoryList();
		session.setAttribute("clist", cl);
		
		List<Product> pl=productDao.getProductList();
		session.setAttribute("plist", pl);
		System.out.println("java");
		return mv;
	}
	
	@RequestMapping(value="register")
	public ModelAndView RegisterPage()
	{
		return new ModelAndView("signup");
	}
	
	@RequestMapping(value="contactus")
	public ModelAndView ContactUs()
	{
		return new ModelAndView("contactus");
	}
	
	@RequestMapping(value="aboutus")
	public ModelAndView AboutUs()
	{
		return new ModelAndView("aboutus");
	}
	
	@RequestMapping(value="addUser")
	public ModelAndView addUser(@ModelAttribute("user")User user)
	{
		System.out.println("Adduser Method called  "+user);
		userDao.addUser(user);
		return new ModelAndView("redirect:/index");
	}
	
	@RequestMapping(value="userlist")
	public ModelAndView userList()
	{
		ModelAndView mv=new ModelAndView("userlist");
		List<User> ul=userDao.getUserList();
		mv.addObject("ulist",ul);
		return mv;
		
	}
	
	@RequestMapping(value="editUser")
	public ModelAndView editUser(@ModelAttribute("user")User user)
	{
		userDao.updateUser(user);
		return new ModelAndView("index");
	}

	
	@RequestMapping("deleteUser{id}")
	public ModelAndView deleteUser(@PathVariable("id") int id)
	{
		System.out.println("delette Con"+id);
		System.out.println(userDao.deleteUser(id));
		return new ModelAndView("redirect:/userlist");
	}
	
	/*@RequestMapping("updateUser{id}")
	public ModelAndView updateUser(@PathVariable("id")int id)
	{		
		System.out.println("Check Edit "+id);
		User u=userDao.getUser(id);
		System.out.println("Value Of User Is "+u);
		return new ModelAndView("updateUser","ul",u);
	}*/
	
	@RequestMapping("updateUser{email}")
	public ModelAndView updateUser(@PathVariable("email")String email)
	{		
		/*System.out.println("Check Edit "+id);*/
		User u=userDao.getUser(email);
		System.out.println("Value Of User Is "+u);
		return new ModelAndView("updateUser","ul",u);
	}
	
	@RequestMapping(value="editProfile")
	public ModelAndView upadateUserPage(HttpSession session)
	{
		ModelAndView mv=new ModelAndView("updateUser");
		String userEmail=(String) session.getAttribute("userName");
		User user=userDao.getUserByEmail(userEmail);
		mv.addObject("ul",user);
		System.out.println("Controller use data"+user);
		return mv;
	}

}
