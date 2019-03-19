package test.dao;

import java.util.List;

import test.model.Product;

public interface ProductDao 
{
	boolean addProduct(Product product);
	List<Product> getProductList();
	public Product getProduct(int productId);
	public boolean updateProduct(Product product);
	void deleteProduct(int id);

}
