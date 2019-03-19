package test.dao;

import java.util.List;

import test.model.CartItem;
import test.model.Product;

public interface CartDao 
{
	public boolean addCart(CartItem cart);
	public List getCartList(String userEmail);
	public List<Product> sortProductByCategory(int category);
	public boolean deleteCart(int productId);
	public boolean clearCartByUserEmail(String userEmail);

}
