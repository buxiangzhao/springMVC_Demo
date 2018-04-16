package com.bxz.service.impl;

import com.bxz.mapper.UserMapper;
import com.bxz.model.User;
import com.bxz.service.UserService;
import com.bxz.utils.ActionReturnUtil;
import com.bxz.utils.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public ActionReturnUtil getAll(){
        List<User> userList = userMapper.getAllUser();
        List<Map<String,Object>> list = new ArrayList<>();
        for(int i=0;i<userList.size();i++){
            User user = userList.get(i);
            Map<String,Object> map = new HashMap<>();
            map.put("userName",user.getT_name());
            map.put("passWord",user.getT_pwd());
            list.add(map);
        }
        return ActionReturnUtil.returnSuccessWithData(list);
    }

    @Override
    public ActionReturnUtil login(String userName, String passWord){
        User user = new User();
        user.setT_name(userName);
        user.setT_pwd(passWord);
        if(userMapper.login(user)!=null) {
            HttpSession session = SessionUtil.getSession();
            session.setAttribute("user",userName);
            return ActionReturnUtil.returnSuccess();
        }else {
            return ActionReturnUtil.returnError();
        }
    }

    @Override
    public ActionReturnUtil deleteUser(String userName){
        if(userMapper.deleteUser(userName)!=0){
            return ActionReturnUtil.returnSuccess();
        }else{
            return ActionReturnUtil.returnError();
        }
    }

    @Override
    public ActionReturnUtil updateUser(User user){
        if(userMapper.updateUser(user)!=0){
            return ActionReturnUtil.returnSuccess();
        }else{
            return ActionReturnUtil.returnError();
        }
    }
    @Override
    public ActionReturnUtil addUser(User user){
        if(userMapper.addUser(user)!=0){
            return ActionReturnUtil.returnSuccess();
        }else{
            return ActionReturnUtil.returnError();
        }
    }
}
