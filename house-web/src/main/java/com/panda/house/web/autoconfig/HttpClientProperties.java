package com.panda.house.web.autoconfig;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "spring.httpclient")
public class HttpClientProperties {

//    连接超时时间
    private Integer connectTimeOut = 1000;

    private Integer socketTimeOut = 10000;

    private String agent = "agent";

    // 每个IP的最大连接数
    private Integer maxConnPerRoute = 10;

    //总的最大连接数
    private Integer maxConnTotoal = 50;

    public Integer getConnectTimeOut() {
        return connectTimeOut;
    }

    public void setConnectTimeOut(Integer connectTimeOut) {
        this.connectTimeOut = connectTimeOut;
    }

    public Integer getSocketTimeOut() {
        return socketTimeOut;
    }

    public void setSocketTimeOut(Integer socketTimeOut) {
        this.socketTimeOut = socketTimeOut;
    }

    public String getAgent() {
        return agent;
    }

    public void setAgent(String agent) {
        this.agent = agent;
    }

    public Integer getMaxConnPerRoute() {
        return maxConnPerRoute;
    }

    public void setMaxConnPerRoute(Integer maxConnPerRoute) {
        this.maxConnPerRoute = maxConnPerRoute;
    }

    public Integer getMaxConnTotoal() {
        return maxConnTotoal;
    }

    public void setMaxConnTotoal(Integer maxConnTotoal) {
        this.maxConnTotoal = maxConnTotoal;
    }
}
