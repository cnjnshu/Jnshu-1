package com.jnshu.task2.serviceImpl;

import com.jnshu.task2.service.StudentService;
import com.jnshu.task2.model.Student;
import com.jnshu.task2.mapper.StudentMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
/**
 * Created by LALH on 2017/5/2.
 */
@Service
public class StudentServiceImpl implements StudentService{
    @Resource
    StudentMapper studentMapper;
    @Override
    public List<Student> findStudents(HashMap<String, Object> hashMap) throws Exception{
        List<Student> students = studentMapper.selectStudents(hashMap);
        return students;
    }

    @Override
    public int add(Student record){
        int id = studentMapper.insertStudent(record);
        return id;
    }

    @Override
    public Student findOne(long id){
        Student student = studentMapper.selectByPrimaryKey(id);
        return student;
    }

    @Override
    public int update(Student record){
        int result = studentMapper.updateByPrimaryKeySelective(record);
        return result;
    }

    @Override
    public int count(HashMap<String, Object> hashMap){
        int c = studentMapper.count(hashMap);
        return c;
    }
}
