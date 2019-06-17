---
title: MySQL逆向工程,MySQL导入生成ER模型,通过DDL语句生成ER模型,ER模型SQL导出,根据ER模型生成SQL,SQL与ER模型,ERWin替代
---

## 概述

ER模型使用可视化了实体存储的信息，以及直观的呈现了实体与实体的关系，在我们实际的应用系统开发过程中新建ER模型可以更好的理解业务模型，为以后的开发维护工作起到归纳总结的作用。

[Freedgo Desgin](https://www.freedgo.com)是一款轻松、快速、协作地创建各种专业图表工具。让您在线创建流程图、系统部署图、软件架构图、UML、BPMN、ER模型,DFD,组织图,软件流程图,图表。免费试用。使用Freedgo Design创建数据库ER模型目前支持MySQL及基本的SQL语句建表。后期会进行功能拓展以支持`SQL Server`,`Oracle`,`PostgreSQL`,`Sybase`,等等数据库模型建模，支持SQL导入生成ER模型,通过DDL语句生成ER模型,ER模型SQL导出,根据ER模型生成SQL。

如果你使用ERwin 或者PowerDesign等等传统的客户端工具设计表结构，不妨体验一下在线ER模型带来的轻量级，云端存储，随时使用的好处。


#### 提供如下功能：

- 通过可视化工具实现在线制作ER模型
- 使用MySQL DDL 语言实现在线导入生成ER模型
- 针对ER模型中表实体实现生成建表SQL语句,支持多表生成
- 针对ER模型中选择表的字段生成字段新增或修改SQL语句



## 快速上手

#### 基本使用：

如果要使用MySQL表建立ER模型，请选择实体类型为`MySQL Table`，选择后拖动到编辑区域。

![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql15.png "在线制图 ER模型")


#### 1、如何导入SQL？


首先访问https://www.freedgo.com/draw_index.html,点击 `调整图形` -> `插入` -> `From MySQL`

![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql.png "在线制图 ER模型")
 
或者`+` -> `From MySQL`


复制SQL语言到对应的框中，点击`insert MySQL`

![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql1.png "在线制图 ER模型") 

复制SQL贴到对应的输入框

![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql2.png "在线制图 ER模型") 

最后生成对应的模型图
![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql4.png "在线制图 ER模型") 


#### 2、如何修改ER模型字段

可以修改ER模型的表字段信息
![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql13.png "在线制图 ER模型") 

，支持字段名、类型、长度、是否主键、是否外键、备注 、是否为空

![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql14.png "在线制图 ER模型") 

##### 支持MySQL建表语法
```
CREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name(

col_name type [NOT NULL | NULL] [DEFAULT default_value]
        [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]
        [COMMENT 'string'],
 [CONSTRAINT [symbol]] PRIMARY KEY [index_type] (index_col_name,...),
 KEY [index_name] [index_type] (index_col_name,...),
 INDEX [index_name] [index_type] (index_col_name,...),
 [CONSTRAINT [symbol]] UNIQUE [INDEX|KEY][index_name] [index_type] (index_col_name,...),
 [CONSTRAINT [symbol]] FOREIGN KEY [index_name] (index_col_name,...) [reference_definition],
)

```
#### MySQL字段类型参与
```
TINYINT[(length)] [UNSIGNED] [ZEROFILL]
  | SMALLINT[(length)] [UNSIGNED] [ZEROFILL]
  | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL]
  | INT[(length)] [UNSIGNED] [ZEROFILL]
  | INTEGER[(length)] [UNSIGNED] [ZEROFILL]
  | BIGINT[(length)] [UNSIGNED] [ZEROFILL]
  | REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]
  | DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL]
  | FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL]
  | DECIMAL(length,decimals) [UNSIGNED] [ZEROFILL]
  | NUMERIC(length,decimals) [UNSIGNED] [ZEROFILL]
  | DATE
  | TIME
  | TIMESTAMP
  | DATETIME
  | CHAR(length) [BINARY | ASCII | UNICODE]
  | VARCHAR(length) [BINARY]
  | TINYBLOB
  | BLOB
  | MEDIUMBLOB
  | LONGBLOB
  | TINYTEXT [BINARY]
  | TEXT [BINARY]
  | MEDIUMTEXT [BINARY]
  | LONGTEXT [BINARY]
  | ENUM(value1,value2,value3,...)
  | SET(value1,value2,value3,...)
  | spatial_type

```

### 3、如何导出SQL

![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql11.png "在线制图 ER模型") 
生成SQL
![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql12.png "在线制图 ER模型") 



### 4、如何生成表SQL

选择模型中表，点击右键选择`选中SQL`，支持多选表生成：
步骤1：
![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql5.png "在线制图 ER模型") 
生成SQL
![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql6.png "在线制图 ER模型") 

#### 5、如何生成字段SQL

选择模型中表字段，点击右键选择`选中SQL`，支持多选字段生成：
 
1、创建新增列SQL

![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql7.png "在线制图 ER模型") 

![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql8.png "在线制图 ER模型") 

2、修改表列SQL
![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql9.png "在线制图 ER模型") 

![在线制图_ER模型](https://www.freedgo.com/public/themes/freedgo/er/mysql10.png "在线制图 ER模型") 




