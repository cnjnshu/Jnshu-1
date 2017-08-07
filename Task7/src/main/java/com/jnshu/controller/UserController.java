package com.jnshu.controller;


import com.jnshu.common.JsonResult;
import com.jnshu.entity.User;
import com.jnshu.service.UserService;
import com.jnshu.service.specification.SimpleSpecificationBuilder;
import com.jnshu.service.specification.SpecificationOperator.Operator;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
/**
 * Created by LALH on 2017/7/3.
 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController{

    @Autowired
    private UserService userService;

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
        Page<User> page = userService.findAll(builder.generateSpecification(),getPageRequest());
        return page;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(ModelMap map) {
        return "user/form";
    }


    @RequestMapping(value = "/modify/{id}", method = RequestMethod.GET)
    public String modify(@PathVariable Integer id,ModelMap map) {
        User user = userService.find(id);
        map.put("user", user);
        return "user/form";
    }

    @RequestMapping(value = {"/modify"},method = RequestMethod.POST)
    @ResponseBody
    public JsonResult modify(User user,ModelMap map){
        try {
            userService.saveOrUpdate(user);
        }catch(Exception e) {
            return JsonResult.failure(e.getMessage());
        }
        return JsonResult.success();
    }


    @RequestMapping(value = "/delete/{id}",method = RequestMethod.POST)
    @ResponseBody
    public JsonResult delete(@PathVariable Integer id, ModelMap map){
        try {
            userService.delete(id);
        }catch(Exception e){
            e.printStackTrace();
            return JsonResult.failure(e.getMessage());
        }
        return JsonResult.success();
    }

}
