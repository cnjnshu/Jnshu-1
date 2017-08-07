package com.jnshu.controller;


import com.jnshu.RMIClientConfig;
import com.jnshu.common.JsonResult;
import com.jnshu.entity.User;
import com.jnshu.service.UserService;
import com.jnshu.specification.SimpleSpecificationBuilder;
import com.jnshu.specification.SpecificationOperator.Operator;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.data.domain.Page;
import org.springframework.remoting.rmi.RmiProxyFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by LALH on 2017/7/3.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController {


    @Autowired
    @Qualifier("rmiClientService")
    private UserService userService1;


    @Autowired
    @Qualifier("rmiClientService2")
    private UserService userService2;



    private Logger log = Logger.getLogger(UserController.class);
    /**
     * 用户管理页面
     * @return
     *
     */
    @RequestMapping(value = {"/", "/index"})
    public String index(){
        return "user/index";
    }


    /**
     * 查询集合
     * @return
     */
    @RequestMapping(value = {"/list"})
    @ResponseBody
    public Page<User> list(){
        SimpleSpecificationBuilder<User> builder = new SimpleSpecificationBuilder<User>();
        String searchText = request.getParameter("searchText");
        if (StringUtils.isNoneBlank(searchText)){
            builder.add("username",Operator.likeAll.name(),searchText);
        }


        Page<User> page  = null;
        Page<User> page1 = null;
        Page<User> page2 = null;

        //随机生成数字0、1，以随机访问两台service
        int rd=Math.random()>0.5?1:0;

        if (rd == 0){
            page1 = userService1.findAll(builder.generateSpecification(),getPageRequest());
            if (page1 != null){

                page = userService1.findAll(builder.generateSpecification(),getPageRequest());
            } else {
                page = userService1.findAll(builder.generateSpecification(),getPageRequest());
            }

        } else {
            page2 = userService2.findAll(builder.generateSpecification(),getPageRequest());

            if (page2 != null) {
                page = userService2.findAll(builder.generateSpecification(),getPageRequest());
            } else {
                page = userService2.findAll(builder.generateSpecification(),getPageRequest());
            }
        }

        return page;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(ModelMap map) {
        return "user/form";
    }


    @RequestMapping(value = "/modify/{id}", method = RequestMethod.GET)
    public String modify(@PathVariable Integer id,ModelMap map) {

        //随机生成数字0、1，以随机访问两台service
        int rd=Math.random()>0.5?1:0;

        User user =null;
        User user1 = null;
        User user2 = null;

        if (rd == 0){
            user1 = userService1.find(id);
            if (user1 != null){

                user = userService1.find(id);
            } else {
                user = userService2.find(id);
            }

        } else {
            user2 = userService2.find(id);
            if (user2 != null) {
                user = userService2.find(id);
            } else {
                user = userService1.find(id);
            }
        }
        map.put("user", user);
        return "user/form";
    }

    @RequestMapping(value = {"/modify"},method = RequestMethod.POST)
    @ResponseBody
    public JsonResult modify(User user, ModelMap map){

        //随机生成数字0、1，以随机访问两台service
        int rd=Math.random()>0.5?1:0;
        try {

            if (rd == 0){
                userService1.saveOrUpdate(user);
            } else {
                userService2.saveOrUpdate(user);
            }


        }catch(Exception e) {
            return JsonResult.failure(e.getMessage());
        }
        return JsonResult.success();
    }


    @RequestMapping(value = "/delete/{id}",method = RequestMethod.POST)
    @ResponseBody
    public JsonResult delete(@PathVariable Integer id, ModelMap map){

        //随机生成数字0、1，以随机访问两台service
        int rd=Math.random()>0.5?1:0;

        try {

            if (rd == 0){
                userService1.delete(id);
            } else {
                userService2.delete(id);
            }

        }catch(Exception e){
            e.printStackTrace();
            return JsonResult.failure(e.getMessage());
        }
        return JsonResult.success();
    }

}
