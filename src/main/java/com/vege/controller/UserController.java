package com.vege.controller;

import javax.annotation.Resource;

import com.vege.model.UserDto;
import com.vege.service.UserService;
import org.springframework.web.bind.annotation.*;
import org.springframework.stereotype.Controller;

import java.util.Map;


@Controller
@RequestMapping(value = "/user",method = {RequestMethod.POST })
public class UserController {
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Resource(name = "userServiceImpl")
    private UserService userService;

    //登录
    @RequestMapping(value = "/checkUser",method = {RequestMethod.POST })
    @ResponseBody
    public UserDto checkUser(@RequestBody UserDto userDto){
        System.out.println(userDto.getUsername());
//        System.out.println(username);
        return userDto;

    }

}
