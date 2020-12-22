---
title: Spring Cloud 上手培训资料
---


### Spring简介

## 为什么要使用微服务

- 单体应用：

目前为止绝大部分的web应用软件采用单体应用，所有的应用的用户UI、业务逻辑、数据库访问都打包在一个应用程序上。
    
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud1.png "在线制图 springCloud设计")

**缺点：**

 	开发相互干扰，随着应用的不断升级沟通协调成本增加
 	应用上线由于某个功能升级导致需要整体的构建、整体测试、整体发布

- 微服务

把单体应用拆分成小的、松藕合分布式服务的形式 
每个应用一定是独立构建、独立部署与测试，应用也是独立发布，应用于应用直接通常通过restful API接口的形式进行相互调用。
解决了单体应用带来的困扰。
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud2.png "在线制图 springCloud设计")

## Spring cloud 是什么

### 发展历史
 	2002，Rod Johonson发表了<<Expert One-on-One J2EE Design and Development>>，
 	包含了3万行的代码在包com.interface21中
 	2003，Juerge Hoeller，Yann Caroff 联系Rod，将书中代码开源，Yann提出Spring这个词，冠于书中代码；
 	并发布0.9，使用Apache 2.0协议；Thomas Risberg负责Spring JDBC；Ben Alex将Acegi Security贡献给Rod和Juergen
 	2004，1.0发布
 	2005，<<Professional Java Development with Spring Framework>> <<Pro Spring>>出版；1.2.6发布。
 	AspectJ Leader Adrian Coyler加入Interface21作为首席科学家；
 	2006，Security 1.0、Spring webflow 1.0发布；Spring 2.0发布；
 	2007，Spring Batch、WebService、Integration发布；Spring 2.5发布；
 	2008，Spring Integration 1.0，Spring 2.5.6，Spring Batch 1.0；买了g2One，一家提供Groovy and Grails的公司；
 	2009，被VMWare发了42亿美金买下；Spring Python、STS发布、3.0发布（将包拆开，不提供超级包），买了Cloud Foundry；
 	2010，VMWare买了RabbitMQ公司，获得RabbitMQ和Redis技术；
 	2011，Spring 3.1、Spring AMQP、Spring Data JPA、Spring-data-common 1.0
 	、Spring Data Redis、Spring Data Mongodb发布；
 	2012，Rod Johnson离开VMWare；Spring Android、Mobile发布；
 	2013，VMWare 和 EMC 合力组建了一家公司，Pivotal。Spring 4.0、Spring Boot发布；
 	2014，Spring 4.1.3、SpringBoot 1.0发布；
 	2015，Spring 4.2、4.3发布；
 	2016，Spring 4.3 GA
 	2017，Spirng 5.x
 	
Spring的出现让EJB等重量级的容器技术逐渐走向末路。
Spring 通过对Bean的生命周期的管理，可以快速方便的实现业务的逻辑处理。
Spring 可以方便的整合几乎所有的主流的开源项目如JPA，缓存，消息组合等等，方便的进行开发。

### Spring Cloud实战
本实战目的：
全程演示如何创建一个基础的、可用的Spring cloud分布式应用系统
演示Spring Cloud各部分组件如何在应用之前协调、调用。
了解整个Spring Cloud的项目基本情况，有一个初步的认识。
本实战JAVA采用JDK8
Spring Boot版本采用最新2.1.0 release.
Spring Cloud版本采用Greenwich.M1。


#### 2.2.1.	Spring Cloud基础搭建


## 使用

阿里云的spring cloud 架构图在线设计地址： https://www.freedgo.com 即可使用Freedgo Design 进行图形设计. 

架构预览地址： 

https://www.freedgo.com/draw-index.html?#Uhttps://www.freedgo.com/templates/network/springcloud_aliyun.xml


Freedgo Design 是一in款在线绘制专业图形的网站。Freedgo Design可以绘制各种类型的图形，针对业务逻辑的流程图，软件设计ER模板，工作流，各种云平台的系统部署架构图包括阿里云、AWS云、腾讯云、PostgreSQL、Asure云、IBM云平台等。

![在线制图 springCloud设计](/public/themes/freedgo/spring/阿里云springcloud架构.png "在线制图 springCloud设计")

##### 2.2.1.1.	建立基础代码

开发工具：Intellij idea
1、	建立一个mvn 工程项目
使用的java jdk 采用jdk8

##### 2.2.1.2.	服务发现
建立子模块discovery-service
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud3.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud4.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud5.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud6.png "在线制图 springCloud设计")

我们可以看到mvn 依赖导入了netflix-eureka-server
Spring boot  会启动服务发现服务

```
<dependency>
   <groupId>org.springframework.cloud</groupId>
   <artifactId>spring-cloud-starter-netflix-eureka-server</artifactId>
</dependency>


```

##### 2.2.1.3.	服务配置

建立子模块config-service
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud7.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud8.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud9.png "在线制图 springCloud设计")

```
<dependency>
   <groupId>org.springframework.cloud</groupId>
   <artifactId>spring-cloud-config-server</artifactId>
</dependency>

```


#### 2.2.1.4.	服务路由

![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud10.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud11.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud12.png "在线制图 springCloud设计")

服务路由采用 Netflix Zuul 
通过服务路由作为eureka client，可以被发现服务监控
```
<dependency>
   <groupId>org.springframework.cloud</groupId>
   <artifactId>spring-cloud-starter-netflix-eureka-client</artifactId>
</dependency>
<dependency>
   <groupId>org.springframework.cloud</groupId>
   <artifactId>spring-cloud-starter-netflix-zuul</artifactId>
</dependency>


```

基础的组件创建完毕

#### 2.2.1.5.	用户认证中心

![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud13.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud14.png "在线制图 springCloud设计")

### 2.2.1.6.	业务服务模块

![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud15.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud16.png "在线制图 springCloud设计")

``` 
<dependency>
   <groupId>org.springframework.boot</groupId>
   <artifactId>spring-boot-starter-web</artifactId>
</dependency>
<dependency>
   <groupId>org.springframework.cloud</groupId>
   <artifactId>spring-cloud-starter-oauth2</artifactId>
</dependency>
<dependency>
   <groupId>org.springframework.cloud</groupId>
   <artifactId>spring-cloud-starter-security</artifactId>
</dependency>

```

### 2.2.2.	服务发现
传统服务发现方式通过网络DNS和负载均衡设备实现，需要网络和硬件设置支持，维护成本高，网络环境复杂
居于云的服务发现具有如下优点
 	高可用，热部署
 	负载均衡
 	健康检查，容错机制
 	抽象服务的逻辑名称
使用Spring与Netflix Eureka实现服务发现
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud17.png "在线制图 springCloud设计")

实现服务发现功能需要配置服务发现端及需要注册服务配置客户端
1、	发现服务端配置
服务注册需要30 s 的时间才能显示在 Eureka 服务中，因为 Eureka 需要从服务接收3次连续心跳包 ping，每次心跳包 ping 间隔10 s，然后才能使用这个服务。在部署和测试服务时，要牢记这一点。
application.yml

```
server:
  port: 8761
# Eureka 服务器将要监听的端口

eureka:
  client:
    registerWithEureka: false #不要使用 Eureka 服务进行注册
    fetchRegistry: false #不要在本地缓存注册表信息  

```

使用一个新的注解@EnableEurekaServer，就可以让我们的服务成为一个 Eureka 服务


2、	服务发现客户端配置
 	以config-service为例
需要做2件事情
1、	成为服务发现的客户端
```
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-netflix-eureka-client</artifactId> 
</dependency>

```
2、	配置application.yml(对应config-server来说我们只需要配置如下)

``` 
spring:
  cloud:
    config:
      discovery:
        enabled: true

```

启动运行查看

![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud18.png "在线制图 springCloud设计")
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud19.png "在线制图 springCloud设计")

http://localhost:8761/eureka/apps/config-service。
 	应用作为服务发现的客户端设置
1、	添加客户端依赖
```jsp
<dependency>
    <groupId>org.springframework.cloud</groupId>
    <artifactId>spring-cloud-starter-netflix-eureka-client</artifactId>
</dependency>
```
2、	配置application.yml
```jsp
spring:
  application:
    name: business_service

eureka:
  instance:
    preferIpAddress: true
    #注册服务的 IP，而不是服务器名称
  client:
    registerWithEureka: true #向 Eureka 注册服务
    fetchRegistry: true
    serviceUrl:  #拉取注册表的本地副本
      defaultZone: http://localhost:8761/eureka/  #Eureka 服务的位置
```
 

同样通过mvn spring-boot:run 打开http://localhost:8761 ,business_service已经注册成功

使用服务发现查找服务

### 2.2.3.	用户认证中心
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud20.png "在线制图 springCloud设计")

OAuth2协议说明：

整体OAuth协议包括两方面：
1、	访问授权：用户必须通过授权获取令牌
2、	资源权限：通过授权的用户访问受保护的资源，根据定义访问权限来决定是否可以访问资源
配置说明：
 	启用OAuth授权服务
增加@EnableAuthorizationServer 用于告诉 Spring Cloud，该服务将作为 OAuth2 服务

```jsp
package com.yuaoq.train.business;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;

@SpringBootApplication
@EnableResourceServer
@EnableAuthorizationServer
public class DemoApplication {

   public static void main(String[] args) {
      SpringApplication.run(DemoApplication.class, args);
   }
}

```
OAuth访问授权配置，配置注册的客户端应用程序

```jsp
@Configuration
public class Auth2Config extends AuthorizationServerConfigurerAdapter {
    
    @Autowired
    private AuthenticationManager authenticationManager;
    
    @Autowired
    private UserDetailsService userDetailsService;
//    覆盖 configure()方法。这定义了哪些客户端将注册到服务
    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
        clients.inMemory()
                .withClient("yuaoq")
                .secret("{noop}secret")
                .authorizedGrantTypes(
                         "refresh_token",
                         "password",
                          "client_credentials")
                .scopes("webclient","mobileclient");
    }
    
//    该方法定义了 AuthenticationServerConfigurer 中使用的不同组件。这段代码告诉 Spring 使用 Spring 提供的默认验证管理器和用户详细信息服务
    
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints)
     throws Exception {
        endpoints
                .authenticationManager(authenticationManager)
                .userDetailsService(userDetailsService);
    }
}

```
配置用户权限
```jsp
@Configuration
public class WebSecurityConfigurer extends WebSecurityConfigurerAdapter {
    
    @Override
    @Bean
//    AuthenticationManagerBean 被 Spring Security 用来处理验证
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
    
    //      Security 使用 UserDetailsService 处理返回的用户信息，这些用户信息将由 Spring Security 返回
    @Override
    @Bean
    public UserDetailsService userDetailsServiceBean() throws Exception {
        return super.userDetailsServiceBean();
    }
    
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//            　configure()方法是定义用户、密码和角色的地方
        auth.inMemoryAuthentication()
                .withUser("admin")
                .password("{noop}password")
                .roles("ADMIN","USER")
                .and()
                .withUser("anyone")
                .password("{noop}password")
                .roles("USER");
    }
}

```
获取用户信息（提供给其他服务获取用户信息使用）
 ```jsp
@GetMapping(value = "/auth/user")
public Map<String, Object> user(OAuth2Authentication user) {
    Map<String, Object> userInfo = new HashMap<>();
    userInfo.put("user", user.getUserAuthentication().getPrincipal());
    userInfo.put("authorities", AuthorityUtils.authorityListToSet(user.getUserAuthentication().getAuthorities()));
    return userInfo;
}


```
通过postman测试
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud21.png "在线制图 springCloud设计")
自此提供了一个用户认证的微服务模块.

#### 2.2.3.1.	业务模块微服务

1、	对外提供restful Api
@RestController:由spring web提供的居于restful 的接口标签
生成一个restful api
```jsp
@PostMapping("/list")
public ResponseEntity<List<String>> getBusiness() throws Exception {
    List<String> list = new ArrayList<String>();
    list.add("a");
    list.add("b");
   return Optional.of(list)
            .map(a -> new ResponseEntity<List<String>>(a, HttpStatus.OK))
            .orElseThrow(() -> new Exception("error"));
}


```
使用postman调用接口

![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud22.png "在线制图 springCloud设计")
从postman返回的结果可以看到401，未授权。
因为business_service服务引入了spring-cloud-starter-security 那么默认是会对所有访问做安全控制。
  
2、	服务的授权保护
现在business/list 是未授权，那怎么配置一个受保护的oauth2.0资源，通过如下步骤
 	设置服务是一个受oauth保护的资源
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud23.png "在线制图 springCloud设计")
 	定义应用的OAuth属性定义回调 URL
```jsp

security:
  oauth2:
    resource:
      user-info-uri: http://localhost:8282/auth/user
```
定义授权用户可以访问

```jsp

@Configuration
public class ResourceServerConfig extends ResourceServerConfigurerAdapter {
    
    //    　antMatchers()允许开发人员限制对受保护的 URL 和 HTTP DELETE 动词的调用
//     hasRole()方法是一个允许访问的角色列表，该列表由逗号分隔
    @Override
    public void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers(HttpMethod.POST, "/api/v1/business/**")
                .hasRole("ADMIN")
                .anyRequest()
                .authenticated();
    }  
}
```

该段代码说明具有ADMIN角色的用户可以访问/api/v1/business/ 下的所有的POST 请求
验证如下：
![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud24.png "在线制图 springCloud设计") 

至此通过OAuth2.0保护微服务的基本做法已经完成。

2.2.4.	服务路由网关
服务网关：服务客户端不再直接调用服务。取而代之的是，服务网关作为单个策略执行点（Policy Enforcement Point，PEP），所有调用都通过服务网关进行路由，然后被路由到最终目的地。
@EnabeZuulServer使用此注解将创建一个 Zuul 服务器，它不会加载任何 Zuul 反向代理过滤器，也不会使用 Netflix Eureka 进行服务发现.



成为一个服务网关步骤：
1、	添加@EnableZuulProxy
 ![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud25.png "在线制图 springCloud设计") 
2、	在application.yml添加route 规则
```jsp
zuul:
  sensitive-headers: set-cookies
  routes:
    business_service: /busi/**
```


通过postman测试如下：
 
 ![在线制图 springCloud设计](/public/themes/freedgo/spring/spring_cloud25.png "在线制图 springCloud设计")