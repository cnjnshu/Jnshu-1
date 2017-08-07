package com.jnshu.task2.mapper;
import com.jnshu.task2.model.Student;
import java.util.HashMap;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * Created by LALH on 2017/5/2.
 */
public interface StudentMapper {

    int insertStudent(Student record);

    Student selectByPrimaryKey(long id);

    int updateByPrimaryKeySelective(Student record);

    List<Student> selectStudents(HashMap<?, ?> hashMap);

    int count(HashMap<?,?> hashMap);

}
