package com.jnshu.mapper;

import java.util.List;
import java.util.Map;
import com.jnshu.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
 *用户Mapper接口
 * Created by LALH on 2017/5/16.
 */
@Component
@Repository
public interface UserMapper {
    // 添加用户
    void addUser(@Param("user") User user);
    // 查找用户
    List<User> getUser(@Param("userName") String userName,@Param("password") String password);

}
