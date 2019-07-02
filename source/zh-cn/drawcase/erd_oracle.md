---
title: Oracle逆向工程,Oracle导入生成ER模型,通过DDL语句生成ER模型,ER模型SQL导出,根据ER模型生成SQL,SQL与ER模型,ERWin替代
---

## 概述

ER模型使用可视化了实体存储的信息，以及直观的呈现了实体与实体的关系，在我们实际的应用系统开发过程中新建ER模型可以更好的理解业务模型，为以后的开发维护工作起到归纳总结的作用。

[Freedgo Desgin](https://www.freedgo.com)是一款轻松、快速、协作地创建各种专业图表工具。让您在线创建流程图、系统部署图、软件架构图、UML、BPMN、ER模型,DFD,组织图,软件流程图,图表。免费试用。使用Freedgo Design创建数据库ER模型目前支持Oracle及基本的SQL语句建表。 `PostgreSQL`,等等数据库模型建模，支持SQL导入生成ER模型,通过DDL语句生成ER模型,ER模型SQL导出,根据ER模型生成SQL。

如果你使用ERwin 或者PowerDesign等等传统的客户端工具设计表结构，不妨体验一下在线ER模型带来的轻量级，云端存储，随时使用的好处。


#### 提供如下功能：

- 支持表、视图、存储过程、Sequence、触发器，支持多种样式可供选择
- 使用Oracle DDL 语言实现在线导入生成ER模型
- 针对ER模型中表实体实现生成建表SQL语句,支持多表生成
- 针对ER模型中选择表的字段生成字段新增或修改SQL语句
- 在线导出ER模型对应的SQL脚本

#### 图例

[在线制图 Oracle ER模型例子](https://www.freedgo.com/showcase/software_design/EntityRelationshipDiagram_1.html "在线制图 Oracle ER模型例子") 

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle1.png "在线制图 Oracle ER模型")

## 快速上手

#### 基本使用：

如果要使用Oracle表建立ER模型，请选择实体类型为`实体关系/Oracle`，选择对应的表、视图、存储过程、触发器、Sequence 等组件后拖动到编辑区域。

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle2.png "在线制图 Oracle ER模型")
![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle3.png "在线制图 Oracle ER模型")



#### 1、如何导入SQL？
已经建立好的数据库如何生成ER模型有一种比较简单的方式就是导出数据库的建表脚本后再导入，具体操作如下：

首先访问 https://www.freedgo.com/draw_index.html ,点击菜单 `数据库` -> `Oracle` -> `导入DDL`

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle4.png "在线制图 Oracle ER模型") 


复制SQL语言到对应的框中，或者拖动Oracle DDL文件到对应的输入框、点击`insert Oracle`

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle5.png "在线制图 Oracle ER模型") 

或拖动SQL文件到对应的输入框

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle6.png "在线制图 Oracle ER模型") 

最后生成对应的模型图
![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle7.png "在线制图 Oracle ER模型") 


#### 2、在线ER模型表操作

##### 新增修改表结构

在线对表字段进行新增，可以在需要添加字段的位置点击箭头进行添加，

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle8.png "在线制图 Oracle ER模型")

添加字段后点击右键->`修改字段` 可以修改字段的属性值,支持字段名、类型、长度、是否主键、是否外键、备注 、是否为空等等

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle9.png "在线制图 Oracle ER模型")


![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle10.png "在线制图 Oracle ER模型") 


#### 3、View操作

新增或修改视图：通过拖动Oracle视图模型到编辑区，对视图的编辑通过点击右键->`视图SQL`，在弹出框中进行视图的SQL修改。

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle11.png "在线制图 Oracle ER模型")


可以复制SQl到剪切板，也可以修改View脚本点击`应用`生效
![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle12.png "在线制图 Oracle ER模型")
 

#### 4、Trigger操作

操作同视图操作

#### 5、Sequence 操作
新增或者修改Sequence操作
![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle13.png "在线制图 Oracle ER模型")

可以点击`修改Sequence`,修改sequence对应的start with,increment by ,max,min value,order,cycle,cache等等属性。

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle14.png "在线制图 Oracle ER模型")

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle15.png "在线制图 Oracle ER模型")

#### 6、导出SQL

##### 查询整个ER模型的SQL：

点击`数据库` -> `Oracle` -> `导出SQL`

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle16.png "在线制图 Oracle ER模型")

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle17.png "在线制图 Oracle ER模型")

##### 查询多表或单表SQl：

如下图：选择3个表右键：

![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle18.png "在线制图 Oracle ER模型")

##### 查询列的修改SQL或新增SQL
 
![在线制图_ORACLE_ER模型](https://www.freedgo.com/public/themes/freedgo/er/oracle/er_oracle19.png "在线制图 Oracle ER模型")
 
#### 问题反馈
使用过程中可以及时反馈使用效果，请点击`问题反馈`按钮
