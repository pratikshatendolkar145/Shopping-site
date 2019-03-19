package test.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import test.dao.CartDao;
import test.dao.OrderDao;
import test.model.BillingAddress;
import test.model.Cart;
import test.model.CartItem;
import test.model.Category;
import test.model.Order;
import test.model.Product;

@Controller
public class CartController 
{
	@Autowired
	CartDao cartDao;
	@Autowired
	OrderDao orderDao;
	CartItem cart=new CartItem();
	
	@RequestMapping(value="addToCart{productId}")
	public ModelAndView addToCart(@PathVariable("productId")int productId,HttpSession session) 
	{
		ModelAndView md=new ModelAndView("redirect:/index");
		String userEmail=(String)session.getAttribute("userName");
		cart.setUserEmail(userEmail);
		cart.setProductId(productId);
		System.out.println("my CSRTSSS    "+cart);
		boolean b=cartDao.addCart(cart);
		System.out.println( b+"  value data");
		if(b) 
		{
			md.addObject("cartMsg","Cart Added successfully");
		}
		else 
		{
			md.addObject("cartMsg","Cart not added successfully");
		}
		System.out.println("My Data"+cart);
		
		return md;
	}
	
	@RequestMapping(value="cartList")
	public ModelAndView cartList(HttpSession session) {
		ModelAndView md=new ModelAndView("cartList");
		String userEmail=(String)session.getAttribute("userName");

		try {
			List<Cart> cl=cartDao.getCartList(userEmail);
			session.setAttribute("cl", cl);
			
			return md;
		}catch (Exception e) {
			e.printStackTrace();
			return md;
		}
		

	}

	@RequestMapping(value="sortByName{categoryId}")
	public ModelAndView sortByCategory(@PathVariable("categoryId")int categoryId,HttpSession session) 
	{
		ModelAndView md=new ModelAndView("index");
		
		List<Product> pl=cartDao.sortProductByCategory(categoryId);
		session.setAttribute("plist", pl);
		return md;
	
	}
	
	@RequestMapping(value="placeOrder")
	public ModelAndView placeOrder(HttpServletRequest request,HttpSession session)
	{
		ModelAndView mv= null;
		
		String userName=(String)session.getAttribute("userName");
		double totalAmont=0;
		ArrayList<Double> productPrice=new ArrayList<>();
		
		ArrayList<Double> pricel = new ArrayList<>();
		ArrayList<Integer> qtyl= new ArrayList<>();
		
		
		String price[]=request.getParameterValues("price");
		String qty[]=request.getParameterValues("qty");
		
		for(int i=0;i<price.length;i++) {
			totalAmont=totalAmont+Double.parseDouble(price[i])*Integer.parseInt(qty[i]);
			productPrice.add(Double.parseDouble(price[i])*Integer.parseInt(qty[i]));
			pricel.add(Double.parseDouble(price[i]));
			qtyl.add(Integer.parseInt(qty[i]));
			
		}
		BillingAddress bl=orderDao.getAddressifExist(userName);
		System.out.println(bl);
		if(bl!=null) {
			mv= new ModelAndView("editAddressOrder");
			mv.addObject("adr",bl);
			session.setAttribute("pricel", pricel);
			session.setAttribute("qtyl",qtyl);
			session.setAttribute("totalAmount",totalAmont);
			session.setAttribute("priceList", productPrice);
			mv.addObject("totalAmnt", totalAmont);
		return mv;
		}
		else {
			mv= new ModelAndView("order");
			session.setAttribute("pricel", pricel);
		session.setAttribute("qtyl",qtyl);
		session.setAttribute("totalAmount",totalAmont);
		session.setAttribute("priceList", productPrice);
		mv.addObject("totalAmnt", totalAmont);
		
		return mv;
		}
	}
	
	@RequestMapping(value="deleteCart{productId}")
	public ModelAndView deleteCart(@PathVariable("productId") int productId, HttpSession session)
	{
		System.out.println("Datatata   : "+productId);
		/*String userEmail=(String)session.getAttribute("userName");*/
		System.out.println("delete id"+productId);
		System.out.println(cartDao.deleteCart(productId));
		return new ModelAndView("redirect:/cartList");
	}
	
	@RequestMapping(value="orderList")
	public ModelAndView orderList()
	{
		ModelAndView mv=new ModelAndView("orderDisplay");
		List<Order> ol=orderDao.getOrderList();
		mv.addObject("olist", ol);
		return mv;
	}
	
	@RequestMapping(value="deleteOrder{orderId}")
	public ModelAndView deleteOrder(@PathVariable("orderId")int orderId)
	{
		System.out.println("delete Con"+orderId);
		System.out.println(orderDao.deleteOrder(orderId));
		return new ModelAndView("redirect:/orderList");
		
	}	
}
