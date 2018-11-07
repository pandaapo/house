package com.panda.house.web.controller;

import com.panda.house.common.model.User;
import com.panda.house.biz.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HelloController {

    @Autowired
    private UserService userService;

    @RequestMapping("hello")
    public String hello(ModelMap modelMap){
        List<User> userList = userService.getUsers();
        User one = userList.get(0);
        if (one != null) {
            throw new IllegalArgumentException();
        }
        modelMap.put("user", one);
        return "hello";
    }

    @RequestMapping("index")
    public String index(){
        return "homepage/index";
    }
}
