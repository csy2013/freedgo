---
title: 在线绘图图表制作,数据库逆向工程，ER模型生成，通过DDL语句生成ER模型
---

给大家介绍一款在线ER模型生成的工具，可以针对多种数据库的DDL文件在线生成ER模型图表，支持MySQL、SQLServer、Oracle、PostgreSQL等数据库。
主要功能如下：

- 支持表的创建，同时可以根据数据库的类型不同编辑表结构、字段类型、主键、默认值、索引、备注信息等等
- 支持视图，触发器，sequence，存储过程，函数的查看及编辑
- 同步生成SQL供用户操作

# 访问地址：
[数据库ER模型图](https://www.freedgo.com/erd_index.html "数据库ER模型图")。 


# 功能说明：

![在线制图-ER模型](https://www.freedgo.com/public/themes/freedgo/er/generic/erd_index.png "在线制图-ER模型") 

- `图表`: 可以对ER模型进行设置、选择某个模型文件编辑、保存等
- `数据库`： 提供对数据库DDL导入及查看全部SQL的功能
- `形状`: 查看数据库表、视图、触发器、存储过程等对应的图标，拖拽到编辑区域
- `格式`： 点击后可以对图标进行编排、样式处理，调整位置、颜色等

![在线制图-ER模型](https://www.freedgo.com/public/themes/freedgo/er/generic/er1.png "在线制图-ER模型") 
调整编辑区域显示比例，适配合适的大小


# 怎么制作ER模型图：

## 1、导入DDL

首先访问 https://www.freedgo.com/erd_index.html,选择对应数据库、点击菜单 `数据库` -> `SQLServer` -> `导入DDL`

![在线制图-ER模型-DDL导入](https://www.freedgo.com/public/themes/freedgo/er/generic/ddl.png "在线制图-ER模型-DDL导入") 

复制SQL语言到对应的框中，或者拖动SQLServer DDL文件到对应的输入框、点击`insert SQLServer`

![在线制图-ER模型-DDL导入](https://www.freedgo.com/public/themes/freedgo/er/generic/er_import.png "在线制图-ER模型-DDL导入") 


## 2、新增表
选择`形状`,拖动对应数据库表到编辑区

![在线制图-ER模型-新建表](https://www.freedgo.com/public/themes/freedgo/er/generic/er_table.png "在线制图-ER模型-新建表")  


##  3、新增列

在线对表字段进行新增，可以在需要添加字段的位置点击箭头进行添加，

![在线制图-SQLServer-新建列](https://www.freedgo.com/public/themes/freedgo/er/generic/er_column.png "在线制图-ER模型-新建列")

添加字段后点击右键->`修改字段` 可以修改字段的属性值,支持字段名、类型、长度、是否主键、是否外键、备注 、是否为空等等

![在线制图-SQLServer-新建列](https://www.freedgo.com/public/themes/freedgo/er/generic/er_column1.png "在线制图-ER模型-新建列")


![在线制图-SQLServer-新建列](https://www.freedgo.com/public/themes/freedgo/er/generic/er_column2.png "在线制图-ER模型-新建列")

## 4、查看table SQL

选择表，然后右键`显示表结构`:

![在线制图-SQLServer-显示表SQL](https://www.freedgo.com/public/themes/freedgo/er/generic/er_table_show.png "在线制图-ER模型-显示表SQL")

## 5、查看字段SQL
选择某一列，然后右键,可以查看`新增列SQL`和`修改列SQL`
![在线制图-SQLServer-显示列SQL](https://www.freedgo.com/public/themes/freedgo/er/generic/er_column_show.png "在线制图-ER模型-显示列SQL")

## 6、新增view
选择`形状`,拖动对应数据库`视图`到编辑区,

![在线制图-ER模型-视图](https://www.freedgo.com/public/themes/freedgo/er/generic/er_view.png "在线制图-ER模型-视图")  



![在线制图-ER模型-视图](https://www.freedgo.com/public/themes/freedgo/er/generic/er_view1.png "在线制图-ER模型-视图") 

针对触发器、存储过程、函数操作与视图类似

# 问题反馈

使用过程中可以及时反馈使用效果，请点击`问题反馈`按钮

![在线制图-问题反馈](https://www.freedgo.com/public/themes/freedgo/er/sqlserver/er_feedback.png "在线制图问题反馈")