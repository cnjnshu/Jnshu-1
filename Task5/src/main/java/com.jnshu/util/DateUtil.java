package com.jnshu.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class DateUtil {
    public static String NowDate(){
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式

        String hehe = dateFormat.format( now );

        //对每个时间域单独修改
        Calendar c = Calendar.getInstance();

        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        int date = c.get(Calendar.DATE);
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);
        int second = c.get(Calendar.SECOND);
        return hehe;
    }

}


