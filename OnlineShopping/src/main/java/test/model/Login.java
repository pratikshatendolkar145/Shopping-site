package test.model;

public class Login 
{
	private String userName;
	private String pass;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	@Override
	public String toString() {
		return "Login [userName=" + userName + ", pass=" + pass + "]";
	}
	
	
	

}
