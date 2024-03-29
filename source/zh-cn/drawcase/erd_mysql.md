---
title: MySQL逆向工程,MySQL导入生成ER模型,通过DDL语句生成ER模型,ER模型SQL导出,根据ER模型生成SQL,SQL与ER模型,ERWin替代
---

## 概述

ER模型使用可视化了实体存储的信息，以及直观的呈现了实体与实体的关系，在我们实际的应用系统开发过程中新建ER模型可以更好的理解业务模型，为以后的开发维护工作起到归纳总结的作用。

 是一款轻松、快速、协作地创建各种专业图表工具。让您在线创建流程图、系统部署图、软件架构图、UML、BPMN、ER模型,DFD,组织图,软件流程图,图表。免费试用。使用Freedgo Design创建数据库ER模型目前支持MySQL及基本的SQL语句建表。后期会进行功能拓展以支持`SQL Server`,`PostgreSQL`,`PostgreSQL`,等等数据库模型建模，支持SQL导入生成ER模型,通过DDL语句生成ER模型,ER模型SQL导出,根据ER模型生成SQL。

如果你使用ERwin 或者PowerDesign等等传统的客户端工具设计表结构，不妨体验一下在线ER模型带来的轻量级，云端存储，随时使用的好处。


#### 提供如下功能：

- 支持表、视图、存储过程、函数在线绘制，支持多种样式可供选择
- 使用MySQL DDL 语言实现在线导入生成ER模型
- 针对ER模型中表实体实现生成建表SQL语句,支持多表生成
- 针对ER模型中选择表的字段生成字段新增或修改SQL语句
- 在线导出ER模型对应的SQL脚本



## 快速上手

#### 基本使用：

如果要使用MySQL表建立ER模型，请选择实体类型为`实体关系/MySQL`，选择对应的表、视图、存储过程、触发器、函数等组件后拖动到编辑区域。

![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql1.png "在线制图 MySQL ER模型")
![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql2.png "在线制图 MySQL ER模型")



#### 1、如何导入SQL？
已经建立好的数据库如何生成ER模型有一种比较简单的方式就是导出数据库的建表脚本后再导入，具体操作如下：

首先访问 /draw-index.html ,点击菜单 `数据库` -> `MySQL` -> `导入DDL`

![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql3.png "在线制图 MySQL ER模型") 


复制SQL语言到对应的框中，或者拖动MySQL DDL文件到对应的输入框、点击`insert MySQL`

![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql4.png "在线制图 MySQL ER模型") 

或拖动SQL文件到对应的输入框

![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql5.png "在线制图 MySQL ER模型") 

最后生成对应的模型图
![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql6.png "在线制图 MySQL ER模型") 


#### 2、在线ER模型表操作

##### 新增修改表结构
在线对表字段进行新增，可以在需要添加字段的位置点击箭头进行添加，

![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql7.png "在线制图 MySQL ER模型")

添加字段后点击右键->`修改列` 可以修改字段的属性值,支持字段名、类型、长度、是否主键、是否外键、备注 、是否为空等等

![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql8.png "在线制图 MySQL ER模型")
![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql9.png "在线制图 MySQL ER模型") 


#### 3、在线视图操作

新增或修改视图：通过拖动MySQL视图模型到编辑区，对视图的编辑通过点击右键->`视图SQL`，在弹出框中进行视图的SQL修改。

![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql10.png "在线制图 MySQL ER模型")
![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql11.png "在线制图 MySQL ER模型")
![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql12.png "在线制图 MySQL ER模型")

#### 4、在线触发器操作

操作同视图操作

#### 5、在线存储过程或者函数操作

操作同视图操作

#### 6、导出SQL

##### 查询整个ER模型的SQL：

点击`数据库` -> `MySQL` -> `导出SQL`

![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql13.png "在线制图 MySQL ER模型")
![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql14.png "在线制图 MySQL ER模型")

##### 查询多表或单表SQl：

如下图：选择3个表右键：

![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql15.png "在线制图 MySQL ER模型")

##### 查询列的修改SQL或新增SQL
 
![在线制图_ER模型](/public/themes/freedgo/er/mysql/er_mysql16.png "在线制图 MySQL ER模型")
 
