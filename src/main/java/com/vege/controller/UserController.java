package com.vege.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import com.vege.model.UserDto;
import com.vege.service.UserService;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;



@Controller
@RequestMapping("/user")
public class UserController {
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Resource(name = "userServiceImpl")
    private UserService userService;

    //注册
    @RequestMapping("/insertUser")
    public String insertUser(HttpServletRequest request,Model model){
        UserDto userDto= new UserDto();
        userDto.setUsername("pckonline");
        userDto.setPassword("p5385676");
        this.userService.insert(userDto);
        model.addAttribute("user", userDto);
        System.out.println("hihi");
        return "user/showUser";
    }
    //注销
    @RequestMapping("/deleteUser")
    public String deleteUser(HttpServletRequest request,Model model){
        UserDto userDto= new UserDto();
        userDto.setUsername("测试");
        userDto.setPassword("p5385676");
        this.userService.deleteByPrimaryKey(2);
        model.addAttribute("user", userDto);
        System.out.println("hihi");
        return "user/showUser";
    }
    //更新
    @RequestMapping("/updateUser")
    public String updateUser(HttpServletRequest request,Model model){
        UserDto userDto= new UserDto();
        userDto.setUsername("测试");
        userDto.setPassword("p5385676");
        this.userService.updateByPrimaryKey(userDto);
        model.addAttribute("user", userDto);
        System.out.println("hihi");
        return "user/showUser";
    }
}
