package com.vege.service;

import javax.annotation.Resource;

import com.vege.dao.UserDao;
import com.vege.model.UserDto;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao UserDao;

    public void setUserDao(com.vege.dao.UserDao userDao) {
        UserDao = userDao;
    }

    @Override
    public int insert(UserDto userDto) {
        System.out.println("hahaha");
        UserDao.insert(userDto);
        return 0;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        System.out.println("deleteSuccess");
        UserDao.deleteByPrimaryKey(id);
        return 0;
    }

    @Override
    public int updateByPrimaryKey(UserDto userDto) {
        System.out.println("updateSuccess");
        UserDao.updateByPrimaryKey(userDto);
        return 0;
    }
}

