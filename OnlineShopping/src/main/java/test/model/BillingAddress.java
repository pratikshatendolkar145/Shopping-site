package test.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class BillingAddress 
{
	@Id
	@GeneratedValue
	private int bilingAddressId;
	private String city;
	private String state;
	private String dist;
	private String address;
	private String landmark;
	private int zipcode;
	private String userEmail;
	
	
	
	
	public int getBilingAddressId() {
		return bilingAddressId;
	}

	public void setBilingAddressId(int bilingAddressId) {
		this.bilingAddressId = bilingAddressId;
	}

	public String getUserEmail() {
		return userEmail;
	}
	
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDist() {
		return dist;
	}
	public void setDist(String dist) {
		this.dist = dist;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}
	
	@Override
	public String toString() {
		return "BillingAddress [Bid=" + bilingAddressId + ", city=" + city + ", state=" + state + ", dist=" + dist + ", address="
				+ address + ", landmark=" + landmark + ", zipcode=" + zipcode + ", userEmail=" + userEmail + "]";
	}
	
	
	
	

}
