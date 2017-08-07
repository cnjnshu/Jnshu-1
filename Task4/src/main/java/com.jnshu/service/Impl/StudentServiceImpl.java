package com.jnshu.service.Impl;

import com.jnshu.entity.Student;
import com.jnshu.service.StudentService;
import com.jnshu.mapper.StudentMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
/**
 * Created by LALH on 2017/5/8.
 */

@Service
@Component("studentService")
public class StudentServiceImpl implements StudentService{

    @Resource
    private StudentMapper studentMapper;

    @Override
    public List<Student> findAllStudent(){
        List<Student> studentList = studentMapper.findAllStudent();
        return studentList;
    }

}
