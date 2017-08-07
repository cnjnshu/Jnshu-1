package com.jnshu.service;

import com.jnshu.entity.Postion;
import org.springframework.stereotype.Service;
import java.util.List;
/**
 * Created by LALH on 2017/5/13.
 */
@Service
public interface PostionService {

    List<Postion> findAllPostion();
}
