package com.jnshu;

import com.jnshu.service.UserService;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.remoting.rmi.RmiProxyFactoryBean;

/**
 * Created by LALH on 2017/7/10.
 */

@Configuration
@EnableAutoConfiguration
public class RMIClientConfig {


    @Bean("rmiClientService")
    public RmiProxyFactoryBean initRmiProxyFactoryBean(){

        System.out.println("============ RMI Client 启动========== ");
        RmiProxyFactoryBean factoryBean = new RmiProxyFactoryBean();
        factoryBean.setServiceUrl("rmi://127.0.0.1:1099/rmiService");
        factoryBean.setServiceInterface(UserService.class);

        System.out.println("============ RMI Client 成功========== ");
        return factoryBean;
    }


    @Bean("rmiClientService2")
    public RmiProxyFactoryBean initRmiProxyFactoryBean2(){

        System.out.println("============ RMI Client-2 启动========== ");
        RmiProxyFactoryBean factoryBean = new RmiProxyFactoryBean();
        factoryBean.setServiceUrl("rmi://127.0.0.1:1099/rmiService2");
        factoryBean.setServiceInterface(UserService.class);

        System.out.println("============ RMI Client-2 成功========== ");
        return factoryBean;
    }



}
