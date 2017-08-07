package com.jnshu.dao;


import com.jnshu.entity.User;
import org.springframework.stereotype.Repository;

/**
 * Created by LALH on 2017/7/3.
 */
@Repository
public interface UserDao extends BaseDao<User, Integer> {

    User findByUsername(String username);

}
