package com.jnshu.service.Impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.jnshu.mapper.UserMapper;
import com.jnshu.entity.User;
import com.jnshu.service.UserService;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by LALH on 2017/5/16.
 */
@Service
@Component("userService")
public class UserServiceImpl implements UserService{

    @Resource
    UserMapper userMapper;

    public void addUser(User user){
        userMapper.addUser(user);
    }

    public List<User> getUser(String userName,String password){
        return userMapper.getUser(userName,password);
    }

}
