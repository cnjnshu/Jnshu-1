package com.jnshu.task2.controller;

import com.jnshu.task2.model.Student;
import com.jnshu.task2.service.StudentService;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
/**
 * Created by LALH on 2017/5/2.
 */
@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    StudentService studentService;

    // index主页
    @RequestMapping("index")
    public ModelAndView index(ModelAndView modelAndView, HttpServletRequest request) throws Exception{
        HashMap<String, Object> hashMap = new HashMap<String, Object>();
        String stuId = request.getParameter("stuId");
        String name = request.getParameter("name");
        String _page = request.getParameter("page");
        int page = 1;
        int pageSize = 7;

        if ("".equals(_page) || null == _page)
        {
            _page = "1";
        }
        page = Integer.parseInt(_page);

        hashMap.put("stuId", stuId);
        hashMap.put("name", name);

        int count = studentService.count(hashMap);

        int pages = count%pageSize == 0 ? count/pageSize : count/pageSize + 1;

        if (page >= pages)
        {
            page = pages;
        }

        if (page <= 0)
        {
            page = 1;
        }

        hashMap.put("offset", (page - 1) * pageSize);
        hashMap.put("pageSize", pageSize);

        modelAndView.addObject("stuId", stuId);
        modelAndView.addObject("name", name);
        modelAndView.addObject("page", page);
        modelAndView.addObject("pages", pages);
        modelAndView.addObject("pageSize", pageSize);

        List<Student> students = studentService.findStudents(hashMap);
        modelAndView.addObject("students", students);
        return modelAndView;

    }

    // add添加 GET
    @RequestMapping(value = "add", method = RequestMethod.GET)
    public ModelAndView add(ModelAndView modelAndView)
    {
        return  modelAndView;
    }

    // add添加 POST
    @RequestMapping(value = "add", method = RequestMethod.POST)
    public ModelAndView add(ModelAndView modelAndView, HttpServletRequest request)
    {
        // record 记录，add() 添加记录
        Student record = this.getRecord(request);

        String msg = this.validate(record);
        modelAndView.addObject("student", record);

        if (msg != null && msg.length() > 0)
        {
            modelAndView.addObject("error", msg);
            return modelAndView;
        }

        int id = studentService.add(record);

        return new ModelAndView("redirect: /student/index");
    }

    // update修改 GET
    @RequestMapping(value = "update", method = RequestMethod.GET)
    public  ModelAndView update(@Param("id") long id, ModelAndView modelAndView)
    {
        Student student = studentService.findOne(id);
        modelAndView.addObject("student", student);
        return  modelAndView;
    }
    // update修改 POST
    @RequestMapping(value = "update", method = RequestMethod.POST)
    public  ModelAndView update(ModelAndView modelAndView, HttpServletRequest request)
    {
        Student record = this.getRecord(request);

        String msg = this.validate(record);
        modelAndView.addObject("student", record);

        if (msg != null && msg.length() > 0)
        {
            modelAndView.addObject("error", msg);
            return modelAndView;
        }
        // update()
        int id = studentService.update(record);

        return new ModelAndView("redirect: /student/index");
    }

    // 获取记录
    private Student getRecord(HttpServletRequest request)
    {
        Student record = new Student();

        String name = request.getParameter("name");
        Long stuId = Long.parseLong(request.getParameter("stuId"));
        Long createAt = Long.parseLong(request.getParameter("createAt"));
        Long updateAt = Long.parseLong(request.getParameter("updateAt"));

        String id = request.getParameter("id");

        record.setName(name);
        record.setStuId(stuId);
        record.setCreateAt(createAt);
        record.setUpdateAt(updateAt);

        if (id != null)record.setId(Long.parseLong(id));


        return  record;
    }
    // 验证
    private String validate(Student student)
    {
        String name = student.getName();
        long stuId = student.getStuId();
        long createAt = student.getCreateAt();
        long updateAt = student.getUpdateAt();
        String msg = "";
        if (name == null || "".equals(name))
        {
            msg = "Student ";
        }

        if (stuId == 0 || "".equals(stuId))
        {
            msg += "stuId ";
        }

        if (createAt == 0 || "".equals(createAt))
        {
            msg += "createAt ";
        }

        if (updateAt == 0 || "".equals(updateAt))
        {
            msg += "updateAt ";
        }

        if (msg != "")
        {
            return msg + "can't be null!";
        } else
        {
            return msg;
        }
    }

    @RequestMapping("changeStatus")
    @ResponseBody
    public HashMap<String, Object> changeStatus(HttpServletRequest request)
    {
        long id = Long.parseLong(request.getParameter("id"));

        Student student = new Student();

        student.setId(id);

        studentService.update(student);

        HashMap<String, Object> hashMap = new HashMap();
        hashMap.put("status", 1);

        return  hashMap;
    }





}
