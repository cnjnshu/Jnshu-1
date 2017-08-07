package com.jnshu.entity;

import java.io.Serializable;

import javax.persistence.MappedSuperclass;

/**
 * Created by LALH on 2017/7/3.
 */
@MappedSuperclass
public abstract class BaseEntity implements Serializable{

    private static final long serialVersionUID = -250118731239275742L;

}
