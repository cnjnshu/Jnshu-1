package com.jnshu.service;

import java.util.List;
import com.jnshu.entity.User;
import org.springframework.stereotype.Service;

/**
 * Created by LALH on 2017/5/16.
 */
@Service
public interface UserService {

    void addUser(User user);

    List<User> getUser(String userName,String password);

}
