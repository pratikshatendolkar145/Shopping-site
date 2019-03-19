package test.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import test.dao.ProductDao;
import test.model.Product;

@Controller
public class ProductController
{
	@Autowired
	ProductDao productDao;
	
	@RequestMapping(value="product")
	public ModelAndView ProductPage()
	{
		return new ModelAndView("product");
	}
	
	@RequestMapping(value="addProduct")
	public ModelAndView addProduct(@ModelAttribute("product")Product product,BindingResult result,Model mv,HttpServletRequest request)
	{
		System.out.println("product adding");
		productDao.addProduct(product);
		
		System.out.println(request.getServletContext().getRealPath("/"));
		//image uploading
		Path path=Paths.get(request.getServletContext().getRealPath("/")+"webapp/resources/images"+product.getProductId()+".jpeg");
		
		MultipartFile img=product.getFile();//image uploaded by the user
		if(img!=null && !img.isEmpty())
		{
			File file=new File(path.toString());
			try 
			{
				img.transferTo(file);
			} 
			catch (IllegalStateException e) 
			{
				e.printStackTrace();
			} 
			catch (IOException e) 
			{
				e.printStackTrace();
			}
		}
		return new ModelAndView("index");		
	}
	
	@RequestMapping("deleteproduct{productId}")
	public ModelAndView deleteproduct(@PathVariable("productId") int productId ,HttpServletRequest request)
	{
		Path paths=Paths.get(request.getServletContext().getRealPath("/")+"webapp/resources/images/"+productId+".jpg");
		if(Files.exists(paths))
		{
			try 
			{
				Files.delete(paths);
			} 
			catch (IOException e) 
			{
				e.printStackTrace();
			}
		}
		System.out.println("delete Con"+productId);
		productDao.deleteProduct(productId);
		return new ModelAndView("redirect:/productDisplay");
	}
	
	@RequestMapping(value="editProduct")
	public ModelAndView editProduct(@ModelAttribute("product")Product product)
	{
		productDao.updateProduct(product);
		return new ModelAndView("index");
	}
	
	@RequestMapping("updateProduct{productId}")
	public ModelAndView updateProduct(@PathVariable("productId")int productId)
	{		
		System.out.println("Check Edit "+productId);
		Product product=productDao.getProduct(productId);
		System.out.println("Value Of Product Is "+product);
		return new ModelAndView("updateProduct","pl",product);
	}

	
	@RequestMapping(value="productDisplay")
	public ModelAndView productDisplay()
	{
		ModelAndView mv=new ModelAndView("productDisplay");
		List<Product> pl=productDao.getProductList();
		mv.addObject("plist", pl);
		return mv;
	}

	
}
