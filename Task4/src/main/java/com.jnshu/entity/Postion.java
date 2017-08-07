package com.jnshu.entity;

import org.springframework.stereotype.Component;
import java.io.Serializable;
/**
 *
 * Created by LALH on 2017/5/13.
 */
@Component
public class Postion implements Serializable {

    private int id;
    private String postion;
    private String postionIntro;
    private String threshold;
    private String degreeDiff;
    private String growthCycle;
    private String scarcity;
    private String salary01;
    private String salary02;
    private String salary03;
    private String stuNumber;
    private String tips;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getPostion() {
        return postion;
    }
    public void setPostion(String postion) {
        this.postion = postion;
    }

    public String getPostionIntro() {
        return postionIntro;
    }
    public void setPostionIntro(String postionIntro) {
        this.postionIntro = postionIntro;
    }

    public String getThreshold() {
        return threshold;
    }
    public void setThreshold(String threshold) {
        this.threshold = threshold;
    }

    public String getDegreeDiff() {
        return degreeDiff;
    }
    public void setDegreeDiff(String degreeDiff) {
        this.degreeDiff = degreeDiff;
    }

    public String getGrowthCycle() {
        return growthCycle;
    }
    public void setGrowthCycle(String growthCycle) {
        this.growthCycle = growthCycle;
    }

    public String getScarcity() {
        return scarcity;
    }
    public void setScarcity(String scarcity) {
        this.scarcity = scarcity;
    }

    public String getSalary01() {
        return salary01;
    }
    public void setSalary01(String salary01) {
        this.salary01 = salary01;
    }

    public String getSalary02() {
        return salary02;
    }
    public void setSalary02(String salary02) {
        this.salary02 = salary02;
    }

    public String getSalary03() {
        return salary03;
    }
    public void setSalary03(String salary03) {
        this.salary03 = salary03;
    }

    public String getStuNumber() {
        return stuNumber;
    }
    public void setStuNumber(String stuNumber) {
        this.stuNumber = stuNumber;
    }

    public String getTips() {
        return tips;
    }
    public void setTips(String tips) {
        this.tips = tips;
    }

    @Override
    public String toString() {
        return "Postion{" +
                "id=" + id +
                ", postion='" + postion + '\'' +
                ", postionIntro='" + postionIntro + '\'' +
                ", threshold=" + threshold +
                ", degreeDiff=" + degreeDiff +
                ", growthCycle='" + growthCycle + '\'' +
                ", scarcity=" + scarcity +
                ", salary01='" + salary01 + '\'' +
                ", salary02='" + salary02 + '\'' +
                ", salary03='" + salary03 + '\'' +
                ", stuNumber=" + stuNumber +
                ", tips='" + tips + '\'' +
                '}';
    }
}











