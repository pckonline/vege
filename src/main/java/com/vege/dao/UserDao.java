package com.vege.dao;

import com.vege.model.UserDto;

public interface UserDao {
    int insert(UserDto userDto);
    int deleteByPrimaryKey(Integer id);

    UserDto selectByPrimaryKey(Integer id);
    int updateByPrimaryKey(UserDto userDto);
}