package test.dao;

public interface LoginDao 
{

	boolean userLogin(String email,String pass);
	boolean adminLogin(String email,String pass);
	boolean checkUser(String email,String pass);
	

}
