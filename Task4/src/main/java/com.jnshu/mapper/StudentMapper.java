package com.jnshu.mapper;

import com.jnshu.entity.Student;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import java.util.List;
/**
 * DAO层，数据库的增删改查（CURD）
 * Created by LALH on 2017/5/8.
 */
@Component
@Repository
public interface StudentMapper {
/**
    //使用 MapperFactoryBean 将映射器 Mapper 接口配置成 Spring bean 实体
    @Select("select * from student")
    @Results({
            @Result(id=true, column="id", property="id"),
            @Result(column="name", property="name"),
            @Result(column="avatar", property="avatar"),
            @Result(column="postion", property="postion"),
            @Result(column="introduction", property="introduction")
    })
*/

    List<Student> findAllStudent();

}
