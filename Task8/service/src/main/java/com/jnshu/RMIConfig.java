package com.jnshu;

import com.jnshu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.remoting.rmi.RmiServiceExporter;

/**
 * Created by LALH on 2017/7/10.
 */
@Configuration
@EnableAutoConfiguration
public class RMIConfig {


    @Autowired
    public UserService userServiceImpl;


    @Bean
    public RmiServiceExporter initRmiServiceExporter(){

        System.out.println("============ Spring RMI 开始启动========== ");
        RmiServiceExporter exporter=new RmiServiceExporter();
        exporter.setServiceInterface(UserService.class);
        exporter.setServiceName("rmiService");
        exporter.setService(userServiceImpl);
        exporter.setServicePort(1022);

        System.out.println("============ Spring RMI 启动成功========== ");
        return exporter;

    }

}
