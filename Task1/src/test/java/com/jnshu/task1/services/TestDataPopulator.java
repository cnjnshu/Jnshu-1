package com.jnshu.task1.services;

import java.io.Reader;
import java.sql.Connection;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.jdbc.ScriptRunner;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.jnshu.task1.util.MyBatisSqlSessionFactory;

/**
 * Created by LALH on 2017/4/24.
 */
public class TestDataPopulator {

    private static Logger logger = LoggerFactory.getLogger(TestDataPopulator.class);
    public static void main(String[] args) {initDatabase();}

    public static void initDatabase(){

        Connection connection = null;
        Reader reader = null;
        try {
            connection = MyBatisSqlSessionFactory.getConnection();
            ScriptRunner scriptRunner = new ScriptRunner(connection);
            reader = Resources.getResourceAsReader("sql/drop_tables.sql");
            scriptRunner.runScript(reader);
            logger.info("drop_tables.sql 成功执行！");
            reader = Resources.getResourceAsReader("sql/create_tables.sql");
            scriptRunner.runScript(reader );
            logger.info("create_tables.sql 成功执行！");
            reader = Resources.getResourceAsReader("sql/sample_data.sql");
            scriptRunner.runScript(reader );
            logger.info("sample_data.sql 成功执行！");

            connection.commit();
            reader.close();
            scriptRunner.closeConnection();

        }catch (Exception e) {
            throw new RuntimeException(e);
        }



    }

}




















