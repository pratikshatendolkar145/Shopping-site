package test.dao;

import test.model.BillingAddress;

public interface BillingAddressDao 
{
	public boolean addAddress(BillingAddress address);
	public boolean updateAddress(BillingAddress address);

}
