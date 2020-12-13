---
title: Database reverse engineering, ER model generation, ER model generation through DDL statements
---

Let's introduce a tool for online ER model generation. 
It can generate ER model charts online for DDL files of various databases and supports MySQL, SQLServer, PostgreSQL, PostgreSQL and other databases. The main functions are as follows:

- supports the creation of tables, and can edit table structure, field type, primary key, default value, index, remark information, etc. according to different types of databases. 
- Support view, trigger, sequence, stored procedure, function view and edit 
- Generate SQL synchronously for user operation

# access address：
[Database ER Diagram](https://www.freedgo.com/erd-index.html "Database ER Diagram")。 

<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script><ins class="adsbygoogle" style="display:block; text-align:center;" data-ad-layout="in-article" data-ad-format="fluid" data-ad-client="ca-pub-9055212255210230" data-ad-slot="7941459222"></ins> <script>(adsbygoogle = window.adsbygoogle || []).push({});</script>
# Function：

![Database ER Diagram](https://www.freedgo.com/public/themes/freedgo/er/generic/erd_index.png "Database ER Diagram") 

- `Chart': You can set the ER model, select a model file to edit, save, etc. 
- `database': provides the function of importing DDL to database and viewing all SQL 
- `Shape': View icons corresponding to database tables, views, triggers, stored procedures, etc. and drag them to the editing area 
- `Format': Click to arrange and style icons, adjust positions, colors, etc.

![Database ER Diagram](https://www.freedgo.com/public/themes/freedgo/er/generic/er1.png "Database ER Diagram") 
Adjust the display scale of the editing area to fit the appropriate size.


# How to make ER model diagram：

## 1、import DDL

visitor  https://www.freedgo.com/erd-index.html,choose database 、Click menu `database` -> `SQLServer` -> `import DDL`

![Database ER Diagram-DDL import](https://www.freedgo.com/public/themes/freedgo/er/generic/ddl.png "Database ER Diagram-DDLImport") 

Copy SQL language to the corresponding box, or drag SQLServer DDL file to the corresponding input box、Click `insert SQLServer`

![Database ER Diagram-DDL import](https://www.freedgo.com/public/themes/freedgo/er/generic/er_import.png "Database ER Diagram-DDLImport") 


## 2、add Table
Select `shape` and drag the corresponding database table to the editing area.

![Database ER Diagram-New Table](https://www.freedgo.com/public/themes/freedgo/er/generic/er_table.png "Database ER Diagram-Table")  


##  3、add Column

To add a table field online, click the arrow at the position where the field needs to be added to add it.

![Online Drawing-SQLServer-Column](https://www.freedgo.com/public/themes/freedgo/er/generic/er_column.png "Database ER Diagram-Cloumn")

After adding a field, right-click->`modify field` to modify the attribute value of the field. field name, type, length, primary key, foreign key, comment, null, etc. are supported.

![Online Drawing-SQLServer-Column](https://www.freedgo.com/public/themes/freedgo/er/generic/er_column1.png "Database ER Diagram-Column")


![Online Drawing-SQLServer-Column](https://www.freedgo.com/public/themes/freedgo/er/generic/er_column2.png "Database ER Diagram-Column")

## 4、view table SQL

Select a table, and then right-click `Show Table Structure`:   

![Online Drawing-SQLServer-Table SQL](https://www.freedgo.com/public/themes/freedgo/er/generic/er_table_show.png "Database ER Diagram-Table SQL")

## 5、view Column SQL
Select a column and right-click to view `Add Column SQL` and `Modify Column SQL`
![Online Drawing-SQLServer-Show SQL](https://www.freedgo.com/public/themes/freedgo/er/generic/er_column_show.png "Database ER Diagram-View SQL")

## 6、add view
Select `shape`, drag the corresponding database `View` to the editing area.

![Database ER Diagram-view](https://www.freedgo.com/public/themes/freedgo/er/generic/er_view.png "Database ER Diagram-view")  



![Database ER Diagram-view](https://www.freedgo.com/public/themes/freedgo/er/generic/er_view1.png "Database ER Diagram-view") 

Operations on triggers, stored procedures, and functions are similar to views

# Problem feedback

In the process of using, you can feedback the use effect in time. Please click the `Question Feedback` button

![Online Drawing-Feedback](https://www.freedgo.com/public/themes/freedgo/er/generic/er_feedback.png "Online DrawingFeedback")