package blog.dao;

import blog.model.User;

public interface UserDao {

	boolean register(String username, String password);

	User login(String username, String password);

}