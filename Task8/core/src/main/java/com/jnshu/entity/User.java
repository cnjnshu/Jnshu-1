package com.jnshu.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by LALH on 2017/7/3.
 */

@Entity
@Table(name = "user")
public class User extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 用户id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id", nullable = false)
    private Integer id;

    /**
     * 用户名
     */
    private String username;

    /**
     * 密码
     */
    private String password;

    /**
     * 姓名
     */
    private String name;

    /**
     * 电话
     */
    private String tel;

    /**
     * 邮箱
     */
    private String email;

    /**
     * 性别
     */
    private Integer sex;

    /**
     * 头像地址
     */
    private String avatar;

    /**
     * 创建时间
     */

    private Date createTime;

    /**
     * 更新时间
     */

    private Date updateTime;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", 用户名='" + username + '\'' +
                ", 密码='" + password + '\'' +
                ", 姓名='" + name + '\'' +
                ", 电话='" + tel + '\'' +
                ", 邮箱='" + email + '\'' +
                ", 性别='" + sex + '\'' +
                ", 头像='" + avatar + '\'' +
                ", 创建时间='" + createTime + '\'' +
                ", 修改时间='" + updateTime + '\'' +
                '}';
    }


}
