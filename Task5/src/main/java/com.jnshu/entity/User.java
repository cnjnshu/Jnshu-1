package com.jnshu.entity;

/**
 * User用户类
 * Created by LALH on 2017/5/16.
 */
public class User {

    private Integer id;  //ID
    private String userName;  // 用户名
    private String password;  // 密码

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
