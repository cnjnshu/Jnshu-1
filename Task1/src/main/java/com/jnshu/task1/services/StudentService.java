package com.jnshu.task1.services;

import com.jnshu.task1.domain.Student;
import com.jnshu.task1.mappers.StudentMapper;
import com.jnshu.task1.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/** Student实现类
 * Created by LALH on 2017/4/24.
 */

public class StudentService {

    private Logger logger = LoggerFactory.getLogger(getClass());
    // 查找所有学生
    public List<Student> findAllStudent(){
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        try{
            StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
            return studentMapper.findAllStudents();
        }finally {
            sqlSession.close();
        }
    }
    // 通过ID查找学生
    public Student findStudentById(Long id){
        logger.debug("通过ID查找学生 :{}", id);
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        try{
            StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
            return studentMapper.findStudentById(id);
             //return sqlSession.selectOne("com.Jnshu.task1.StudentMapper.findStudentById",id);
        }finally {
            sqlSession.close();
        }
    }

    // 通过姓名查找学生
    public Student findStudentByName(String name){
        logger.debug("通过姓名查找学生 :{}", name);
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        try{
            StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
            return studentMapper.findStudentByName(name);
            //return sqlSession.selectOne("com.Jnshu.task1.StudentMapper.findStudentByName",id);
        }finally {
            sqlSession.close();
        }
    }

    // 通过学号查找学生
    public Student findStudentByStuId(Long stuId){
        logger.debug("通过学号查找学生 :{}", stuId);
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        try{
            StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
            return studentMapper.findStudentByStuId(stuId);
            //return sqlSession.selectOne("com.Jnshu.task1.StudentMapper.findStudentByStuId",id);
        }finally {
            sqlSession.close();
        }
    }

    // 添加学生
    public Student createStudent(Student student){
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        try {
            StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
            studentMapper.insertStudent(student);
            sqlSession.commit();
            return student;
        }catch (Exception e) {
            sqlSession.rollback();
            e.printStackTrace();
            throw new RuntimeException(e.getCause());
        }
        finally {
            sqlSession.close();
        }
    }
    // 修改学生
    public Student updateStudent(Student student){
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        try {
            StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
            studentMapper.updateStudent(student);
            sqlSession.commit();
            return student;
        }catch (Exception e) {
            sqlSession.rollback();
            e.printStackTrace();
            throw new RuntimeException(e.getCause());
        }
        finally {
            sqlSession.close();
        }
    }
    // 删除学生

    public boolean deleteStudentById(Long id){

        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        try{
            StudentMapper studentMapper = sqlSession.getMapper(StudentMapper.class);
            int count = studentMapper.deleteStudentById(id);
            sqlSession.commit();
            return count > 0;

        }catch (Exception e) {
            sqlSession.rollback();
            e.printStackTrace();
            throw new RuntimeException(e.getCause());
        }
        finally {
            sqlSession.close();
        }


    }


}
