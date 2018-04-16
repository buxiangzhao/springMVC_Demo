package com.bxz.service;

import com.bxz.model.User;
import com.bxz.utils.ActionReturnUtil;

public interface UserService {
	ActionReturnUtil login(String userName,String passWord);
	ActionReturnUtil  getAll();
	ActionReturnUtil deleteUser(String userName);
	ActionReturnUtil updateUser(User user);
	ActionReturnUtil addUser(User user);
}