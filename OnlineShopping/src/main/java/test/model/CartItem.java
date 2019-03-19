package test.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class CartItem {

	@Id
	@GeneratedValue
	@Column(name="cartId")
	private int cartId;
	@Column(name="productId")
	private int productId;
	@Column(name="userEmail")
	private String userEmail;
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	@Override
	public String toString() {
		return "CartItem [cartId=" + cartId + ", productId=" + productId + ", userEmail=" + userEmail + "]";
	}

	
}
