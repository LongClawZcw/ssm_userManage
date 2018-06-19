package com.javen.service;  

import java.util.HashMap;
import java.util.List;

import com.javen.model.User;
  
  
public interface IUserService {  
    public User getUserById(int userId);

	public void addUserInfo(User user);

	public User dologin(User user);

	public List<User> getUserList();

	public List<User> getupdateid(User user);

	public String getdelete(int id);

	public String getupdate(User user);

	public String getinsert(User user);

	public User selectByNameandAge(User user);

}  