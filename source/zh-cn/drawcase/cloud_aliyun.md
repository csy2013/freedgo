---
title: 在线制图 系统部署图 系统架构图 阿里云
---


### 什么是阿里云？

由全球最大的电子商务公司之一阿里巴巴集团提供的阿里云是一套高度可扩展的云计算和数据管理服务。它为大小企业、金融机构、政府部门和其他组织提供基于云的解决方案，以满足他们的网络和信息需求。

### 什么是阿里云架构图？

阿里云架构图广泛用于交流使用阿里云的信息技术解决方案的设计和部署。阿里云架构图使用标准符号和图标来表示阿里云产品和资源的使用，以及这些产品和资源在交付解决方案时如何相互协作。视觉范例在线以阿里云架构图软件为特色，该软件包含所有图标和工具，可让您快速可视化云架构。

### 如何创建阿里云架构图？

用在线制图工具创建阿里云架构图相对比较简单。以下是您需要的三个步骤:


- 创建空白[阿里云架构图](https://www.freedgo.com/draw_index.html?libs=aliyun;general;basic;arrows2 "阿里云架构图")。 

- 将解决方案所需的服务和产品从图标库拖放到图表上。

- 一旦图表完成，您就可以`保存`或者`另存为` 到我们的云存储库供将来访问。您还可以将您的作品导出为图像(JPG、巴布亚新几内亚、PDF、SVG等)，并与您的同事共享。

如下图：
![阿里云架构图](/public/themes/freedgo/aliyun.png "阿里云架构图")


## 案例

常用的Spring Cloud体系架构

系统部署采用阿里云平台，采用的技术架构为SpringCloud.

采用在线阿里云架构制图工具: [Freedgo Design](https://www.freedgo.com) 地址：https://www.freedgo.com, 具体架构如下：

![SpringCloud 阿里云架构图](/public/themes/freedgo/aliyun1.png "SpringCloud 阿里云架构图")

### 	整体架构

主要居于Spring Cloud的分布式微服务架构。主要功能包括：

#### 服务注册发现中心（Eureka server）

通过服务发现可以抽象出部署服务的物理位置如IP，服务调用通过了逻辑名称而不是实际的物理位置，同时服务发现也处理了注册和注销。

#### 服务配置中心（config server）

通过集中式的服务来处理应用程序配置数据。做到无论启动多少个微服务实例，这些实例始终使用相同的配置，同时服务的配置可以和微服务系统分离

#### 服务网关（ZUUL）

通过ZUUL网关，可以强制执行一些功能如内容过滤，路由转发，过滤器等等

#### Spring Sleuth & ZIPKIN（分布式服务跟踪）

通过Sleuth 相关ID进行全链路跟踪，可以分析服务调用的性能

####	事件驱动及异步消息

用于处理异步事件如短消息推送，邮件发送等。

#### 用户认证中心（auth2）

###	ZUUL网关

#### ZUUL网关主要的功能

##### 路由及过滤器设置

通常在ZUUL网关设置过滤器包括前置过滤器、后置过滤器、路由过滤器，可以自定义一些逻辑，在大多数情况下，这种自定义逻辑用于强制执行一组一致的应用程序策略，如安全性、日志记录和对所有服务的跟踪等等。

路由的设置可以指定路由地址URL对应的微服务如下图：
 
![SpringCloud 阿里云架构图](/public/themes/freedgo/aliyun2.png "SpringCloud 阿里云架构图")
 	
##### 服务注册与发现：

ZUUL网关服务器通过注册到Eureka服务器，实现了Eureka上注册的微服务的发现从而转发用户的请求到各应用模块，网关服务器中Ribbon同时会缓存微服务相关信息以减少对EureKa访问。

###	微服务应用

#### 	Oauth2授权访问

ZUUL网关负责请求的路由转发，Request请求不仅仅来在用户浏览器，有可能是微服务之间的相互调用。

登录用户请求或服务之前调用会在request请求头中携带Authorization 头信息来表示当前用户的身份信息，

#### Http Restful Api
微服务应用采用 Spring RestController 对外发布 Http Restful Api服务，

#### 微服务之间的调用
微服务之间相互调用而不必知道被调用者所在位置是通过Eureka服务发现实现，当微服务启动时会注册自己到Eureka服务中心，服务消费者可以使 Ribbon 来进行交互。有三种方式的调用：

-   Spring DiscoveryClient
-   启用了 RestTemplate 的 Spring DiscoveryClient
-   通过 Netflix Feign 客户端方式

###	部署方案(docker)
 
 采用Docker通过spotify 的docker-maven-plugin工具进行docker image进行打包镜像

###	灰度测试

通过ZUUL的过滤对新上线的服务做路由的权重算法，做到限流，A/B测试。

###	平台开发
-	开发语言：java，Java是一种可以撰写跨平台应用程序的面向对象的程序设计语言。

-	开发工具：eclipse，Eclipse 是一个开放源代码的、基于Java的可扩展开发平台。就其本身而言，它只是一个框架和一组服务，用于通过插件组件构建开发环境。

-	主要使用的开源软件


软件|功能|版本
--|:--:|--:
JDK|JAVA开发SDK包|1.8 以上
Ubuntu|Linux服务器操作系统|14 
MySQL|数据库|5.7+
Maven|java 项目构建工具|4.0
Spring Framework|系统架构|5.0以上 
Spring cloud|分布式微服务|2.0+
kafka| 消息订阅发布框架|
Redis|高性能Key value存储|
Docker||
