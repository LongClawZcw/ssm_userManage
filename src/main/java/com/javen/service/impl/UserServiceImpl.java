package com.javen.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;  

import com.javen.dao.IUserDao;
import com.javen.model.User;
import com.javen.service.IUserService;
  
  
@Service("userService")  
public class UserServiceImpl implements IUserService {  
    @Resource  
    private IUserDao userDao;  
    
    public User getUserById(int userId) {  
         
        return this.userDao.selectByPrimaryKey(userId);  
    }

	public void addUserInfo(User user) {
		this.userDao.insert(user);
	}

	public User dologin(User user) {
		User result = this.userDao.findLogin(user);
		return result;
	}

	public List<User> getUserList() {
		List<User> userinfoList = userDao.userList();  
        return userinfoList;
	}

	public List<User> getupdateid(User user) {
		List<User> updateid = userDao.updateid(user);  
        return updateid; 
	}

	public String getdelete(int id) {
		int d = userDao.deleteByPrimaryKey(id);  
        String message="";  
        if(d > 0){  
            message = "删除成功";  
        }else{  
            message = "删除失败";  
        }  
        return message; 
	}

	public String getupdate(User user) {
		int d = userDao.updateByPrimaryKey(user);  
        String message="";  
        if(d > 0){  
            message = "更新成功";  
        }else{  
            message = "更新失败";  
        }  
        return message; 
	}

	public String getinsert(User user) {
		int d = userDao.insertSelective(user);  
        String message="";  
        if(d > 0){  
            message = "添加成功";  
        }else{  
            message = "添加失败";  
        }  
        return message; 
	}  
  
}  
