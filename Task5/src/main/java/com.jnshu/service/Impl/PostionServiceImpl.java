package com.jnshu.service.Impl;

import com.jnshu.entity.Postion;
import com.jnshu.service.PostionService;
import com.jnshu.mapper.PostionMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
/**
 * Created by LALH on 2017/5/13.
 */
@Service
@Component("PostionService")
public class PostionServiceImpl implements PostionService {

    @Resource
    private PostionMapper postionMapper;

    @Override
    public List<Postion> findAllPostion(){
        List<Postion> postionList = postionMapper.findAllPostion();
        return postionList;
    }

}
