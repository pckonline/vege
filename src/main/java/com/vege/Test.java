package com.vege;

import com.vege.model.UserDto;
import com.vege.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;



public class Test {
    public static void main(String[] args) {
        ApplicationContext ctx =
                new ClassPathXmlApplicationContext("classpath:spring-mybatis.xml");
        UserService userService = (UserService) ctx.getBean("userServiceImpl");
        UserDto userDto = new UserDto();
        userDto.setUsername("11");
        userDto.setPassword("p5385676");
        userService.insert(userDto);
    }
}
