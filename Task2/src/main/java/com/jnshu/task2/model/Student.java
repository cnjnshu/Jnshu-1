package com.jnshu.task2.model;

/**
 *学生实体类
 * Created by LALH on 2017/5/2.
 */
public class Student {
    private long id;
    private String name;
    private long stuId;
    private long createAt;
    private long updateAt;


    public long getId(){
        return id;
    }
    public void setId(long id){
        this.id = id;
    }

    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }

    public long getStuId(){
        return stuId;
    }
    public void setStuId(long stuId){
        this.stuId = stuId;
    }

    public long getCreateAt(){
        return createAt;
    }
    public void setCreateAt(long createAt){
        this.createAt = createAt;
    }

    public long getUpdateAt(){
        return updateAt;
    }
    public void setUpdateAt(long updateAt){
        this.updateAt = updateAt;
    }


}
