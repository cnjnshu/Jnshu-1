package com.jnshu;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;

@SpringBootApplication
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class,HibernateJpaAutoConfiguration.class})
public class WebApplication {


	private static Logger logger = LoggerFactory.getLogger(WebApplication.class);
	public static void main(String[] args) {
		SpringApplication.run(WebApplication.class, args);

		logger.debug("============ 启动完成 ============");
	}
}
