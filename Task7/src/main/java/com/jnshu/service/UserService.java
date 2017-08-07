package com.jnshu.service;


import com.jnshu.service.support.BaseService;
import com.jnshu.entity.User;
/**
 * Created by LALH on 2017/7/3.
 */
public interface UserService extends BaseService<User, Integer>{
    /**
     * 根据用户名查找用户
     * @param username
     * @return
     */
    User findByUsername(String username);

    /**
     * 增加或者修改用户
     * @param user
     */
    void saveOrUpdate(User user);
}
