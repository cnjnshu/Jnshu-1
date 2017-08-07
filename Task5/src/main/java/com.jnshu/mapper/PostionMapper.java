package com.jnshu.mapper;

import com.jnshu.entity.Postion;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import java.util.List;
/**
 * PostionMapper
 * Created by LALH on 2017/5/13.
 */
@Component
@Repository
public interface PostionMapper {
    // 查找所有职位
    List<Postion> findAllPostion();
}
