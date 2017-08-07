package com.jnshu.task2.service;

import org.springframework.stereotype.Service;
import com.jnshu.task2.model.Student;
import java.util.HashMap;
import java.util.List;
/**
 * Created by LALH on 2017/5/2.
 */
@Service
public interface StudentService {
    List<Student> findStudents(HashMap<String, Object> hashMap) throws Exception;

    int add(Student record);

    Student findOne(long id);

    int update(Student record);

    int count(HashMap<String, Object> hashMap);
}
