package com.jnshu.task1.domain;

/**
 * Student类
 * Created by LALH on 2017/4/24.
 */
public class Student {
    // 属性定义
    private Long id;
    private String name;
    private Long stuId;
    private Long createAt;
    private Long updateAt;

    // 无参，有参构造器
    public Student(){ }
    public Student(Long id){
        this.id = id;
    }
    public Student(Long id,String name,Long stuId,Long createAt,long updateAt){
        this.id = id;
        this.name = name;
        this.stuId = stuId;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    // 覆写toString
    @Override
    public String toString(){
        return "Student [id=" + id + ",name=" + name + ",stuId=" + stuId +
                ",createAt=" + createAt + ",updateAt=" + updateAt + "]";
    }

    // getter 和 setter方法
    public Long getId(){
        return id;
    }
    public void setId(Long id){
        this.id = id;
    }
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public Long getStuId(){
        return stuId;
    }
    public void setStuId(Long stuId){
        this.stuId = stuId;
    }
    public Long getCreateAt(){
        return createAt;
    }
    public void setCreateAt(Long createAt){
        this.createAt = createAt;
    }
    public Long getUpdateAt(){
        return updateAt;
    }
    public void setUpdateAt(Long updateAt){
        this.updateAt = updateAt;
    }

}
