package com.vege.service;

import com.vege.model.UserDto;

/**
 * Created by 59258 on 2017/12/28.
 */
public interface UserService {
    public int insert(UserDto userDto);
    public int deleteByPrimaryKey(Integer id);
    public int updateByPrimaryKey(UserDto userDto);
}
