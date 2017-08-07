package com.jnshu.service;

import com.jnshu.entity.Student;
import org.springframework.stereotype.Service;
import java.util.List;
/**
 * Created by LALH on 2017/5/8.
 */
@Service
public interface StudentService {

    List<Student> findAllStudent();
}
