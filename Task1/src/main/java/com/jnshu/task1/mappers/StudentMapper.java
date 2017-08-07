package com.jnshu.task1.mappers;

import com.jnshu.task1.domain.Student;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * StudentMapper映射
 * Created by LALH on 2017/4/24.
 */

public interface StudentMapper {

    // 查找所有学生
    @Select("select * from students")
    @Results(value = {
            @Result(id=true, column="id", property="id"),
            @Result(column="name", property = "name"),
            @Result(column = "stu_id", property = "stuId"),
            @Result(column = "create_at", property = "createAt"),
            @Result(column = "update_at", property = "updateAt")
    })
    List<Student> findAllStudents();

    // 通过id查找学生
    @Select("select id as id, name, stu_id, create_at, update_at from students where id = #{id}")
    Student findStudentById(Long id);

    // 通过姓名查找学生
    @Select("select id as id, name, stu_id, create_at, update_at from students where name = #{name}")
    Student findStudentByName(String name);

    //通过学号查找学生
    @Select("select id as id, name, stu_id, create_at, update_at from students where stu_id = #{stu_id}")
    Student findStudentByStuId(Long stuId);

    // 添加学生
    @Insert("insert  into students(id, name, stu_id, create_at, update_at) values(#{id},#{name},#{stuId},#{createAt},#{updateAt})")
    @Options(useGeneratedKeys=true, keyProperty="id")
    void insertStudent(Student student);

    // 更新学生

    @Update("update students set name=#{name},stu_id=#{stuId},create_at=#{createAt},update_at=#{updateAt} where id=#{id}")
    void updateStudent(Student student);


    // 删除学生
    @Delete("delete from students where id = #{id}")
    int deleteStudentById(Long id);



    // 查找所有学生
    //List<Student> findAllStudents();
    // 通过id查找学生
    //Student findStudentById(Long id);

    // 通过姓名查找学生
    //Student findStudentByName(String name);

    //通过学号查找学生
    //Student findStudentByStuId(Long stuId);

    // 添加学生
    //void insertStudent(Student student);
    // 更新学生
    //void updateStudent(Student student);
    // 删除学生
    //int deleteStudentById(Long id);
}
