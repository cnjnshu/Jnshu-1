package com.jnshu.controller;

import com.jnshu.entity.Student;
import com.jnshu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import java.util.List;

/**
 * Created by LALH on 2017/5/8.
 */
@Controller
@RequestMapping()
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {

        List<Student> studentList = studentService.findAllStudent();
        model.addAttribute("studentList", studentList);
        return "index";
    }

}
