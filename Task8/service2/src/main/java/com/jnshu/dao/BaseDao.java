package com.jnshu.dao;


import com.jnshu.entity.BaseEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.NoRepositoryBean;

import java.io.Serializable;

/**
 * Created by LALH on 2017/7/3.
 */
@NoRepositoryBean
public interface BaseDao<T extends BaseEntity, ID extends Serializable>
        extends JpaRepository<T, ID>, JpaSpecificationExecutor<T> {
}
