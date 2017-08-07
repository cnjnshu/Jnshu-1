package com.jnshu.entity;

import javax.persistence.MappedSuperclass;
import java.io.Serializable;

/**
 * Created by LALH on 2017/7/3.
 */
@MappedSuperclass
public abstract class BaseEntity implements Serializable{

    private static final long serialVersionUID = -250118731239275742L;

}
