package com.jnshu.task1.services;

import com.jnshu.task1.domain.Student;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by LALH on 2017/4/24.
 */
public class StudentServiceTest {

    private static StudentService studentService;

    @BeforeClass
    public static void setup(){
        studentService = new StudentService();
        TestDataPopulator.initDatabase();
    }

    @AfterClass
    public static void teardown(){
        studentService = null;
    }

    @Test
    public void testFindAllStudents(){

        List<Student> students = studentService.findAllStudent();
        assertNotNull(students);
        for(Student student : students){
            assertNotNull(students);
            System.out.println(student);
        }
    }

    @Test
    public void testFindStudentById(){
        Student student = studentService.findStudentById(1l);
        //assertNotNull(student);
        System.out.println(student);
    }

    @Test
    public void testCreateStudent(){
        Student student = new Student();
        long ts = System.currentTimeMillis();
        student.setId(ts);
        student.setName("student" + ts);
        student.setStuId(ts);
        student.setCreateAt(20170424l);
        student.setUpdateAt(20170424l);
        studentService.createStudent(student);
        Student Student = studentService.findStudentById(ts);
        assertNotNull(Student);
        assertEquals("student" + ts, Student.getName());
        System.out.println("CreateStudent:"+ student.getId());
    }

    @Test
    public void testUpdateStudent(){
        Student student = new Student();
        long ts = System.currentTimeMillis();
        student.setId(ts);
        student.setName("student"+ts);
        student.setStuId(000 + ts);
        student.setCreateAt(20170425l);
        student.setUpdateAt(20170425l);
        Student newStudent =  studentService.updateStudent(student);
        assertNotNull(newStudent);
        assertEquals("student" + ts , newStudent.getName());
        assertEquals(new Long(ts),newStudent.getStuId());
        //System.out.println("UpdatedStudent: "+student);
    }

    @Test
    public void testDeleteStudentById(){
        boolean deleted = studentService.deleteStudentById(2l);
        // assertTrue(deleted);
    }


    @Test
    public void testFindStudentByName(){
        Student student = studentService.findStudentByName("Jack");
        assertNotNull(student);
        System.out.println(student);
    }

    @Test
    public void testFindStudentByStuId(){
        Student student = studentService.findStudentByStuId(2l);
        //assertNotNull(student);
        System.out.println(student);

    }

}
