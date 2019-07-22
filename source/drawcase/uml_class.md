---
title: UML之类图制作;在线类图制作;类图制作工具 visio 类图;一步一步制作类图;类图设计与实现,还在用visio画类图?不看后悔;怎么制作类图;面向对象类图制作,
---

# 什么是类图

UML类图是用来描述一个系统的静态结构。它既可以用于一般概念建模也可以用于细节建模。类包含了数据和行为，是面向对象的重要组成部分，它是具有相同属性、操作、关系的对象集合的总称。

UML类图也可以用于数据建模。它可以用来描述应用程序内部或和其他用户之间的对象和信息结构。在UML中问题域终要被逐步转化，通过类来建模，通过编程语言构建这些类。类加上他们之间的关系就构成了类图，类图中还可以包含接口、包等元素，也可以包括对象、链等实例。

# 类图中的符号

## class

类通过一个矩形表示,被两条直线分隔成3个部分，如图所示:

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class.png "在线制图 UML类图")

### Attribute（属性)

类的属性部分在单独的一行中列出了该类的每个属性。属性部分是可选的，但是当使用时，它包含以列表格式显示的类的每个属性。每一行使用格式:名称:属性类型(例如名字:字符型)。

###  操作（Operation）

操作记录在类图矩形的底部区域，这也是可选的。像属性一样，类的操作以列表格式显示，每个操作都在自己的行上。使用以下符号记录操作:名称(参数列表):返回值的类型

(例如设置名称(名称参数) :void)。

## 关系(relationship)

### 关联

 关联指定了两个类之间的"整体/部分”关系。在关联关系中，整个类的对象将部分类的对象作为实例数据。在类图中，关联关系呈现为有向实线。  

**单向关联:** 

在单向关联中，两个类是相关的，但是只有一个类知道这种关系存在。 单向关联被绘制为实线，带有指向已知类的开放箭头。

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class12.png "在线制图 UML类图")


**双向(标准)关联**

是两个类之间的链接。关联总是被认为是双向的；这意味着两个类都知道彼此和它们的关系，除非您将关联定义为其他类型。  
两个类之间的实线表示双向关联。

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class13.png "在线制图 UML类图")

多样性
 
将多重符号放在关联的末尾。这些符号表示一个类与另一个类的一个实例链接的实例数量。

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class14.png "在线制图 UML类图")

例如，一家公司将有一名或多名员工，但每个员工只为一家公司工作。

关系有如下几种：

关系|说明|图形
--- | --- |---
1| 1对1 |
0..1 | 0个或者1个
* | 多个
0..* | 0个或者多个
1..* | 1个或者多个


## 可见性

用于表示谁可以访问由+、-、#和~表示的类中包含的信息，如图所示:

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class1.png "在线制图 UML类图")


### 超类

超类和更具体的事物(称为子类)之间的关系。
泛化有时被称为“是一种”关系，是通过继承过程建立起来的。 
在类图中，一般化关系呈现为带有指向父类的大开放箭头的实线。

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class2.png "在线制图 UML类图")


### 抽象类和方法

在继承层次结构中，子类实现特定的细节，而父类定义其子类的框架。父类还为将由其子类实现的常用方法提供模板。

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class3.png "在线制图 UML类图")

抽象类的名称通常用斜体显示；或者，可以使用文本注释显示抽象类，也称为模板{abstract}，位于它的名称之后或之下。
抽象方法是一种没有实现的方法。为了创建一个抽象方法，创建一个操作并使其倾斜。

### 实现

实现是两件事之间的关系，其中一件事(接口)指定一个契约，另一件事(类)通过实现该契约中指定的操作来保证执行该契约。
在类图中，实现关系呈现为虚线，带有指向接口的开放箭头。

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class4.png "在线制图 UML类图")

### 依赖

依赖性表示两个类之间的“使用”关系。
在类图中，依赖关系呈现为虚线。 
如果 A类 “使用” B类，则下列一项或多项陈述通常成立: 
- 在类A的一个或多个方法中，类B被用作局部变量的类型
- B类用作A类一个或多个方法的参数类型 
- 类B用作 类A 的一个或多个方法的返回类型 
- 一个或多个A类方法调用一个或多个B类方法

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class5.png "在线制图 UML类图")


# 类图图的制作

创建类图方式有很多，若选择在线绘制类图图，可以使用visio 或者 使用在线制图网站： [freedgo Design](https://www.freedgo.com  "在线制图工具")。 freedgo Design 其访问地址为: https://www.freedgo.com 。freedgo design 在线制图网站是一款多类型的图形图表设计软件，软件内容自带丰富的几何图形模板，UML 用例图、状态图、类图、活动图、序列图、协作图等等。


在具体的类图图中需要把业务逻辑分解成更小、更具体的步骤。 然后，考虑类图中任何可能的异常，如果是，为备选路径添加决策节点。
 继续重复这个过程，直到你达到了每个人都能完全理解的简单步骤。

现在，一起开看如何使用Freedgo Design制好看的类图。

### 步骤一：

访问 https://www.freedgo.com ,先注册一个用户，注册成功后，登录到 [首页](https://www.freedgo.com)

### 步骤二：

访问 https://www.freedgo.com/draw_index.html ,进入`制图页面`，或者从 `首页` 页面 顶部菜单点击`开始制作`。

进入制图页面后 点击 `文件` -> `从类型中新建` -> `软件设计` -> `类图`

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class6.png "在线制图 UML类图")


或者点击图例，在图例中找到 `软件设计` -> `类图`，选择一个类似的图例进行改动

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class7.png "在线制图 UML类图")


![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class8.png "在线制图 UML类图")

### 步骤三：

从左侧符号栏拖拽合适的几何图形至画布，松手后，图形就被固定画布上，双击几何图形，还可输入文字。当鼠标放置在图形上时，
图形四周会显示“小三角形”，是为了方便用户点击后能够快速生成新的图形。

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class9.png "在线制图 UML类图")

### 步骤四：

软件提供多种连接样式，在该类图中，可以选择关联连接线。在连接线上，还可以输入文字做进一步的说明。

![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class10.png "在线制图 UML类图")


### 步骤五：

类图图制作工具拥有一套功能丰富的样式，用户可以对封闭图形进行单色填充、渐变填充、文本大小位置颜色调整。经过图案填充的类图图，颜值提升了不少。
![在线制图 UML类图](https://www.freedgo.com/public/themes/freedgo/uml/class11.png "在线制图 UML类图")


### 步骤六：

按照绘图要求，一步一步的地完成类图绘制。最终完成了整幅的绘制任务。 

更多基本类图的例子 请参考 [图例] (https://www.freedgo.com/showcase/software_design/ClassDiagram_1.html) 或者直接访问 ： https://www.freedgo.com/showcase/software_design/ClassDiagram_1.html

