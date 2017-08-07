package com.jnshu.controller;

import com.jnshu.entity.Postion;
import com.jnshu.service.PostionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import java.util.List;
/**
 * Created by LALH on 2017/5/13.
 */
@Controller
@RequestMapping("/u")
public class PostionController {

    @Autowired
    private PostionService postionService;

    @RequestMapping(value = "/index2", method = RequestMethod.GET)
    public String index2(Model model) {

        List<Postion> postionList = postionService.findAllPostion();
        model.addAttribute("postionList", postionList);

        return "index2";
    }
}
