package test.dao;

import java.util.List;

import test.model.User;

public interface UserDao 
{
	boolean addUser(User user);
	List<User> getUserList();
	public boolean deleteUser(int id);
	public boolean updateUser(User User);
	/*public User getUser(int id);*/
	public User getUser(String email);
	User getUserByEmail(String userEmail);

}
