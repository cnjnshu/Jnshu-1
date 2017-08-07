package com.jnshu.controller;

import com.jnshu.util.*;
import org.apache.ibatis.jdbc.Null;
import org.apache.log4j.Logger;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.jnshu.entity.User;
import com.jnshu.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
@Controller
@RequestMapping
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);

    @Resource
    private UserService userService;

    // 注册页面GET
    @RequestMapping(value = "/regist",method = RequestMethod.GET)
    public String  registerFrom(){
        log.info("调用regist GET");
        return "regist";
    }

    // 注册页面POST
    @RequestMapping(value = "/regist",method = RequestMethod.POST)
    public String register(HttpServletRequest httpRequest, HttpServletResponse httpResponse, Model model) throws Exception {

        // 从register.jsp页面中获取user姓名和密码
        String userName = httpRequest.getParameter("name");
        String inputChar = httpRequest.getParameter("password");
        /**判断输入不能为空！！！*/
        if (userName!=null && userName!="" && inputChar!=null && inputChar!=""){

            // MD5加密密码
            String password = MD5Util.generate(inputChar);
            // 新建user对象并导入属性值
            User user = new User();
            user.setUserName(userName);
            user.setPassword(password);

            // 添加user到数据库，完成注册
            userService.addUser(user);

        }
        // 重定向到登陆页面
        return "redirect:/login";
    }


    // 登录页面GET
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginFrom(Model model) {
        return "login";
    }

    // 登陆页面POST
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(HttpServletRequest httpRequest, HttpServletResponse httpResponse, Model model) throws Exception {

        // POST name和password
        String userName = httpRequest.getParameter("name");
        String inputChar = httpRequest.getParameter("password");
        String state = null;

        //MD5加盐
        String password = MD5Util.generate(inputChar);
        System.out.println("加盐后MD5：" + password);

        //判断MD5加盐密码和用户名查询数据库获取用户
        User user = new User();
        user.setUserName(userName);
        user.setPassword(password);
        List<User> userList = new ArrayList<User>();

        /** 根据用户名和密码从数据库获取User */
        userList = userService.getUser(userName, password);
        int size = userList.size();

        if (size == 0) {
            //userList没有数据则进入登陆页面
            httpRequest.getSession().setAttribute("errorInfo", "用户名或密码错误！");
            httpResponse.sendRedirect("/login" );

        } else {

            //获取登录时间，保存姓名和时间到cookie
            String nowDate = DateUtil.NowDate();
            //DES加密登录时间和用户名
            String secretKey = "123456789";//秘钥
            String secretDate = DesUtil.encryption(nowDate, secretKey);
            String secretName = DesUtil.encryption(userName, secretKey);

            //设置cookie生命周期，以秒为单位，这里设置为1天
            int loginMaxAge = 1 * 24 * 60 * 60;
            /**将姓名和时间加入到cookie中*/
            CookieUtil.addCookie(httpResponse, "secretName", secretName, loginMaxAge);
            CookieUtil.addCookie(httpResponse, "secretDate", secretDate, loginMaxAge);

            // 登陆成功，重定向到指定页面
            httpResponse.sendRedirect("/u/index2");
        }
    }

}
