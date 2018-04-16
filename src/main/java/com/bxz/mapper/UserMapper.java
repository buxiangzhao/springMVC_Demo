package com.bxz.mapper;

import com.bxz.model.User;

import java.util.List;

public interface UserMapper {

	List<User> getAllUser();
	User login(User user);
	int deleteUser(String userName);
	int updateUser(User user);
	int addUser(User user);

}