package com.bxz.controller;

import com.bxz.model.User;
import com.bxz.service.UserService;
import com.bxz.utils.ActionReturnUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(){
        return "login" ;
    }
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(@RequestParam(value = "userName") final String userName, @RequestParam(value = "passWord") final String passWord){
        return "login" ;
    }

    @RequestMapping(value = "/getAll",method = RequestMethod.GET)
    public ActionReturnUtil showUser()throws Exception{
        return userService.getAll();
    }

    @RequestMapping(value = "/deleteUser",method = RequestMethod.DELETE)
    public ActionReturnUtil deleteUser(@RequestParam(value = "userName") final String userName) throws Exception{
        return userService.deleteUser(userName);
    }

    @RequestMapping(value = "/updateUser",method = RequestMethod.POST)
    public ActionReturnUtil updateUser(User user) throws Exception{
        return userService.updateUser(user);
    }

    @RequestMapping(value="/addUser",method = RequestMethod.PUT)
    public ActionReturnUtil addUser(User user)throws Exception{
        user.setT_id(33L);
        user.setT_name("李四");
        user.setT_pwd("11111111");
        return userService.addUser(user);
    }

}
