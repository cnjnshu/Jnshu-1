package com.jnshu;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
@EnableCaching
public class Task7Application {
	private static Logger logger = LoggerFactory.getLogger(Task7Application.class);
	public static void main(String[] args) {
		SpringApplication.run(Task7Application.class, args);
		logger.debug("启动成功");
	}
}
