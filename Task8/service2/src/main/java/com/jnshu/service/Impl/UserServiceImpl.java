package com.jnshu.service.Impl;

import com.jnshu.common.utils.MD5Utils;
import com.jnshu.dao.BaseDao;
import com.jnshu.dao.UserDao;
import com.jnshu.entity.User;
import com.jnshu.service.UserService;
import com.jnshu.service.support.Impl.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Created by LALH on 2017/7/3.
 */
@Service
public class UserServiceImpl extends BaseServiceImpl<User, Integer> implements UserService {

    @Autowired
    public UserDao userDao;

    @Override
    public BaseDao<User, Integer> getBaseDao() {
        return this.userDao;
    }

    @Override
    public User findByUsername(String username) {
        return userDao.findByUsername(username);
    }

    @Override
    public void saveOrUpdate(User user) {
        if(user.getId() != null){
            User dbUser = find(user.getId());
            dbUser.setUsername(user.getUsername());
            dbUser.setPassword(user.getPassword());
            dbUser.setName(user.getName());
            //dbUser.setTel(user.getTel());
            dbUser.setEmail(user.getEmail());
            dbUser.setSex(user.getSex());
            dbUser.setAvatar(user.getAvatar());
            dbUser.setUpdateTime(new Date());
            update(dbUser);
        }else{
            user.setCreateTime(new Date());
            user.setUpdateTime(new Date());
            user.setPassword(MD5Utils.md5("111111"));
            save(user);
        }
    }

    @Override
    public void delete(Integer id) {
        User user = find(id);
        super.delete(id);
    }
}
