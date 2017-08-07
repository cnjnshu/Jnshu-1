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

    List<Student> findAllStudent();

}
