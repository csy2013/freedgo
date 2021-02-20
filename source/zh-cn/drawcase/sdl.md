---
title: 在线SDL图设计 在线制图
---

# 什么是SDL
   SDL  (Specification and Description Language) ,定义了一种规范和描述语言, 是一种用于描述实时系统的建模语言。
   SDL图说明了规范和描述语言建模的过程。它可广泛应用于汽车、航空、通信、医疗和电信领域。 
    SDL图有三个部分:
   - 系统定义: 
   - 块和过程
    系统定义定义了系统的主要节点(块)，如客户端和服务器，而块图显示了更多细节。
    流程图显示了每个块中的处理步骤。可以参考状态机和UML。
    
    
# SDL的结构
- 系统
 整体设计被称为系统，
 系统之外的一切被称为环境。
 系统没有特定的图形表示，但如果需要，可以使用块表示。 
- 代理
 代理是系统结构中的一个元素。代理有两种:块和进程。系统是最外层的块。

 
## block 

块是一种结构化元素，并不意味着目标上的任何物理实现。 一个块可以进一步分解成多个块，以此来处理大型系统。  块符号是一个实心矩形，其中有它的名称|大哥
![在线SDL图设计_BLOCK](https://www.freedgo.com/public/themes/freedgo/uml/sdl-block.png "在线SDL图设计_BLOCK")

## Process
一个进程基本上就是将要执行的代码。它是一个基于有限状态机的任务，有一个隐式消息队列来接收消息。同一进程的多个实例可以独立运行。系统启动时出现的实例数和最大实例数在进程名称后的括号中声明。 过程符号的完整语法是:  <进程名>[(<启动时的实例数> ,<最大实例数>)]  如果省略，则启动时实例数的默认值为1，最大实例数为无穷大。

 ![在线SDL图设计_Process](https://www.freedgo.com/public/themes/freedgo/uml/sdl-process.png "在线SDL图设计_Process")
 ![在线SDL图设计_Process](https://www.freedgo.com/public/themes/freedgo/uml/sdl-processinstance.png "在线SDL图设计_Process")
##  Architecture
 整体架构可以看作是一棵树，树叶就是过程。
![在线SDL图设计_Process](https://www.freedgo.com/public/themes/freedgo/uml/sdl-view.png "在线SDL图设计_Process")


# Behavior 
首先，一个进程有一个隐式消息队列来接收通道中列出的消息。
过程描述基于扩展的有限状态机。过程状态决定了过程在接受特定刺激时的行为。过渡是两种状态之间的代码。
该进程可以挂在它的消息队列或信号量上，或者运行例如执行代码。来自环境或从另一个代理到代理的信息刺激称为信号。过程代理接收的信号首先被放入队列(输入端口)。
当状态机处于等待状态时，如果输入端口中的第一个信号针对该状态被使能，则状态机开始转换到另一个状态。

 

## Start
开始符号代表流程执行的起点
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/start.png "在线SDL图设计")   	
   	
## State
进程状态的名称写在状态符号中
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/state.png "在线SDL图设计")  

## Stop
进程可以以停止符号结束。
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/stop.png "在线SDL图设计")  
## Message input
消息输入符号代表在SDL-RT状态下预期的消息类型。它总是跟随一个SDL-RT状态符号，如果接收到该符号，则执行输入之后的符号。 消息输入符号中的语法如下:
 
 ```
 <Message name> [(<parameter name> {, <parameter name>}*)]
<parameter name> is a variable that needs to be declared.
```
 
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/input.png "在线SDL图设计")  

## Message output
消息输出用于交换信息。它以异步方式将数据放入接收方的消息队列中。
```
<message name>[(<parameter value> {,<parameter value>}*)] TO_XXX… 
```
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/output.png "在线SDL图设计") 

## Message save
一个进程可能有中间状态，在正在进行的工作完成之前，不能处理新的请求。这些新的请求不应该丢失，而应该保留，直到进程达到稳定状态。储蓄概念已经被提出来了，它基本上保存着信息，直到它被处理。
```
The symbol syntax is: <message name> 
```

![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/save.png "在线SDL图设计") 

## Continuous signal
一个连续的信号是一个表达式，它在一个过程达到一个新的状态后立即被求值。它在任何消息输入或保存消息之前进行评估。
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/save.png "在线SDL图设计") 

## Action
 动作符号包含一组用C代码编写的指令。语法是C语言的语法。
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/action.png "在线SDL图设计") 


## Decision
一个决策符号可以看作一个C开关/案例。
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/decision.png "在线SDL图设计") 

## Semaphore take
当进程试图获取信号量时，使用信号量获取符号。
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/semaphore-take.png "在线SDL图设计") 

## Semaphore give
要给出一个信号量，“信号量给出SDL-RT图形符号”中的语法是:<信号量名称>
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/semaphore-give.png "在线SDL图设计") 
## Timer start
 启动计时器“启动计时器SDL-RT图形符号”中的语法为:<计时器名称>(<刻度计数中的时间值>)
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/timer-start.png "在线SDL图设计") 

## Timer stop
要取消计时器，“取消计时器SDL-RT图形符号”中的语法为:<计时器名称>
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/timer-stop.png "在线SDL图设计") 

## Task creation
要创建流程，创建流程符号中的语法是:
```
<process name>[:<process class>] [PRIO <priority>]
```
 ![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/task-creation.png "在线SDL图设计") 
 
## Procedure call
过程调用符号用于调用SDL-RT过程。 
过程调用中的语法SDL图形符号是标准的C语法:
```
[<return variable> =] <procedure name>({<parameters>}*);
```
 ![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/procedure-call.png "在线SDL图设计") 
 
## Connectors
 连接器用于: 将一个过渡分割成几个部分，以便图表保持清晰和可打印，将不同的分支聚集到同一点。
 ![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/connectors.png "在线SDL图设计") 
 
## Transition option
符号的分支具有真或假的值。真正的分支是在定义表达式时定义的，因此等价的C代码是:#ifdef <expression>
 ![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/transition.png "在线SDL图设计") 
 
## Comment
注释符号允许编写任何类型的非正式文本，并将其连接到所需的符号。如果需要，注释符号可以不连接。
 ![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/comment.png "在线SDL图设计") 
 
## Extension
 扩展符号用于完成符号中的表达式。扩展符号中的表达式被视为连接符号中表达式的一部分。因此，语法是连接符号之一。
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/extension.png "在线SDL图设计") 

## Procedure start
该符号专用于程序图。它指示过程入口点。
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/procedure-start.png "在线SDL图设计") 

## Procedure return
该符号专用于程序图。它表示程序结束。
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/procedure-return.png "在线SDL图设计") 

## Text symbol
这个符号用来声明C类型变量。
 ![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/text-symbol.png "在线SDL图设计")
  
## Additional heading symbol
此符号用于声明SDL-RT特定标题
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/additional-heading.png "在线SDL图设计") 

# Example on Behavior
 在一种状态下(例如空闲)，该过程从队列中取出第一个信号，该信号是输入符号(此处为代码，包含来自面板的卡标识和个人识别码的信息)中指示的类型之一。空闲状态之后是一个输入符号，描述信号代码的消耗。在接收到代码信号后的转换中，它将使用变量cur_panel来记住信号来自哪个面板，然后将代码发送到中央单元进行验证。下一个状态是验证。在状态验证中，控制器将只接受正常或不正常。如果它正常，它将通过调用程序“打开门”来打开门。
![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/process-type-diagram.png "在线SDL图设计") 

# SDL vs State Machine Diagram

巧克力自动售货机是一种自动机器，在插入适当的代码后，可以提供不同类型的巧克力。
 
# State Machine

有限状态机由有限数量的状态组成，其中一个是初始状态，多个转换连接这些状态。 
 在自动售货机(状态图示例)中，圆圈下方代表状态，箭头代表过渡。每个箭头都用一个触发转换的输入(斜线前)和一个可能的输出列表(斜线后)来修饰。
 
 ![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/sdl-vs-state.png "在线SDL图设计") 
 
# The Corresponding SDL Diagram
 ![在线SDL图设计](https://www.freedgo.com/public/themes/freedgo/uml/corresponding-sdl.png "在线SDL图设计")
