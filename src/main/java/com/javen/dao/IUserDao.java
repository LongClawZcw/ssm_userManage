package com.javen.dao;

import java.util.List;

import com.javen.model.User;


public interface IUserDao {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	User findLogin(User user);

	List<User> userList();

	List<User> updateid(User user);

	User selectByNameandAge(User user);
}