package com.panda.house.web.filter;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.List;

//将原始的Filter，即LogFilter包装成spring bean
@Configuration
public class FilterBeanConfig {

    /**
     * 1、构造filter
     * 2、配置拦截urlPattern
     * 3、利用FilterRegistrationBean进行包装
     * @return
     */
    //spring 将@Bean注解的方法的返回对象识别一个spring bean
    // FilterRegistrationBean springboot提供的包装器类
    @Bean
    public FilterRegistrationBean logFilter() {
        FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
        filterRegistrationBean.setFilter(new LogFilter());
        List<String> urlList = new ArrayList<String>();
        urlList.add("*");
        filterRegistrationBean.setUrlPatterns(urlList);
        return filterRegistrationBean;
    }
}
