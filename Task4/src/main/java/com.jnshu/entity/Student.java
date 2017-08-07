package com.jnshu.entity;

import org.springframework.stereotype.Component;
import java.io.Serializable;
/**
 * entity实体类（POJO），等同于domain，model
 * Created by LALH on 2017/5/8.
 */
@Component
public class Student implements Serializable{

    private int id;
    private String name;
    private String avatar;
    private String postion;
    private String introduction;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPostion() {
        return postion;
    }

    public void setPostion(String postion) {
        this.postion = postion;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", avatar='" + avatar + '\'' +
                ", postion='" + postion + '\'' +
                ", introduction='" + introduction + '\'' +
                '}';
    }

}
