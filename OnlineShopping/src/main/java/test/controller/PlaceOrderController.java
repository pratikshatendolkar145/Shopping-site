package test.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import test.dao.BillingAddressDao;
import test.dao.CartDao;
import test.dao.OrderDao;
import test.model.BillingAddress;
import test.model.Order;

@Controller

public class PlaceOrderController 
{
	@Autowired
	BillingAddressDao billingAddressDao;

	@Autowired
	OrderDao orderDao;

	@Autowired
	CartDao cartDao;

	@RequestMapping(value="finalPlaceOrder")
	public ModelAndView PlaceOrder(HttpSession session)
	{
		ModelAndView mv=null;
		String userEmail=(String)session.getAttribute("userName");
		Order o=new Order();
		double totalBill=(double)session.getAttribute("totalAmount");
		o.setTotalAmt(totalBill);
		o.setOrderStatus("Processing");
		o.setUserEmail(userEmail);
		o.setOrderDate(new Date().toString());
		boolean b=orderDao.addOrder(o);
		if(b) {
			mv=new ModelAndView("final");
			BillingAddress bl=orderDao.getAddressifExist(userEmail);
			Order od=orderDao.getOrder(userEmail);
			mv.addObject("bl",bl);
			mv.addObject("od", od);

			boolean clearCart=cartDao.clearCartByUserEmail( userEmail);
			if(clearCart) 
			{
				return mv;
			}
		}

		return new ModelAndView("error");
	}

	@RequestMapping(value="addAddress")
	public ModelAndView addAddress(@ModelAttribute("address")BillingAddress address)
	{
		billingAddressDao.addAddress(address);
		return new ModelAndView("payment");
	}

	@RequestMapping(value="updateAddress")
	public ModelAndView updateAddress(@ModelAttribute("address")BillingAddress address)
	{
		billingAddressDao.updateAddress(address);
		return new ModelAndView("payment");
	}

}
