package test.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import test.dao.FeedbackDao;
import test.dao.LoginDao;
import test.model.Category;
import test.model.Feedback;
import test.model.Login;

@Controller
public class LoginController 
{
	@Autowired
	LoginDao loginDao;
	
	@Autowired
	FeedbackDao feedbackDao;

	@RequestMapping(value="loginPage")
	public ModelAndView loginPage()
	{
		System.out.println("Check Login");
		return new ModelAndView("signin");
	}

	@RequestMapping(value="loginUser")
	public ModelAndView login(@ModelAttribute("l")Login l,HttpSession session)
	{
		System.out.println("login data"+l);
		boolean b=loginDao.userLogin(l.getUserName(), l.getPass());
		if(b)
		{
			session.setAttribute("userName",l.getUserName());
			return new ModelAndView("redirect:/index");
		}
		else if(l.getUserName().equals("a") && l.getPass().equals("a")) {
			session.setAttribute("adminName",l.getUserName());
			return new ModelAndView("redirect:/index");
		}
		else 
		{
			return new ModelAndView("error");
		}
	}

	@RequestMapping(value="logOut")
	public ModelAndView logOut(HttpSession session)
	{
		session.invalidate();
		return new ModelAndView("redirect:/index");
	}
	
	@RequestMapping(value="feedbackPage")
	public ModelAndView feedback()
	{
		return new ModelAndView("Feedback");
	}
	
	@RequestMapping(value="addFeedback")
	public ModelAndView addFeedback(@ModelAttribute("feedback")Feedback feedback)
	{
		feedbackDao.addFeedback(feedback);
		return new ModelAndView("index");
	}

	@RequestMapping(value="feedbackList")
	public ModelAndView feedbackList()
	{
		ModelAndView mv=new ModelAndView("feedbackList");
		List<Feedback> fl=feedbackDao.getFeedbackList();
		mv.addObject("flist", fl);
		return mv;
	}
	
	@RequestMapping(value="deleteFeedlist{fid}")
	public ModelAndView deleteFeedlist(@PathVariable("fid")int fid)
	{
		System.out.println("enter in feedback controller");
		feedbackDao.deleteFeedback(fid);
		return new ModelAndView("redirect:/feedbackList");

	}

}
