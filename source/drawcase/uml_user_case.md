---
title: Online UML Diagram Design,Use Case Diagram,Online Drawing
---

**The following Diagram all use the online UML mapping website[Freedgo Design](https://www.freedgo.com)，Its access address is： https://www.freedgo.com**

freedgo Design is an online drawing software for various types of charts. It allows you to create Aliyun Cloud Architecture Diagram, Tencent Cloud Architecture Diagram, Oracle Cloud Architecture Diagram, AWS System Deployment Diagram, Software Architecture Diagram, UML, BPMN, ERD, Flow Diagram, UX Design Diagram, ANT DESIGN, Mind Map, Chart. It can be used by registered users free of charge.。

** For details, please refer to the legend of UML design on the Online Drawing website:  http://www.feedgo.com/showcase.html **



# Use Case

Use cases describe how users use the system to achieve specific goals. Use case diagram consists of system, relevant use case diagram and participants, and connects them with each other. The visual description of the use case diagram is as follows:

- System: What to Realize;
- Actor：Who is using the system；
- Use Case: ActorWhat do users want to achieve；

Therefore, the use case diagram is to develop the correct system by capturing requirements from the perspective of users.

## UML implementation

Use case diagrams describe a series of actions or event steps and generally define the interaction between participants and the system to achieve a certain goal. 
Use case diagrams can effectively identify and explain system requirements. 
Use cases consist of a series of possible interactions between the system and the user, which define the functions to be implemented and the solutions to any errors that may be encountered. 
Although the use case itself may go deep into many details of each possibility (e.g., the flow of events and scenes), the use case diagram can help provide a more intuitive view of the system and a simplified and graphical representation of what the system actually must do.

Use case diagrams have the following features:
- Functional requirements -Model of interaction between system and participants 
- Describe a main event flow (main scenario) and possibly other abnormal flows (optional), also known as paths or user scenarios

## Symbol of Use Case Diagram
Use cases define interactions between external participants and the system to achieve specific goals. Use case diagrams contain four main components:

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase.png "Use Case")

### Actor
Actor are usually individuals who participate in the system according to role definitions. Actor can be a user or other external system.

### Use Case
Use cases describe how participants use the system to achieve specific goals. Use cases are usually initiated by users to describe the activities and procedures involved in achieving the goals.

### RelationShip
Relationship between Participants and Use Cases

### System Boundary

The system boundary defines the boundary between the system and the outside world.


## Use Case 

- Use cases are powerful technologies to capture and document black box functional requirements. 
- Because use cases are easy to understand and provide a good way to communicate with customers and users because they are written in natural language. 
- Use cases can help manage the complexity of large projects by dividing the problem into major user characteristics (i.e., use cases) and specifying applications from the user's perspective. 
- Use Case scenarios, usually represented by sequence diagrams, involve the collaboration of multiple objects and classes. Use case helps identify messages (operations and required information or data parameters) that bind objects and classes together. 
- Use cases provide a good foundation for verification of higher-level models (i.e., interactions between participants and a group of collaboration objects) and subsequent functional requirements verification (i.e., white-box testing). 
- The use case-driven approach provides traceability for project tracking, in which key development activities, such as use cases for implementation, testing and delivery, achieve goals and objectives from the perspective of users.

## Use Case 

Use Case:The development steps of are as follows:

- Identify system participants (user roles). 
- For each type of user, determine the role played by users related to the system. 
- Determine what actions the user requires the system to perform to achieve these goals. 
- Create use cases for each goal. 
- Build use cases. 
- Prioritize, review, evaluate and validate users


**Note: in order to use Use Case more "promptly", do not detail all use cases, but prioritize them. you should refine use cases at different levels of detail according to the development stage.**

The Use Case design can also draw packages logically classified by use cases into relevant subsystems.

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase1.png "Use Case")


## Use CaseStructure

UML defines three prototypes for the association between use cases:

### `<<include>> Use Case`

Use `<<include>>` after you have completed all major use cases.

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase3.png "Use Case")


### `<<extend>> Use Case`

The extended use case is actually an alternative process to the basic use case. `<<extend>>` use cases accomplish this by conceptually inserting additional sequences of actions into the basic sequence of use cases.

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase4.png "Use Case")

### `Abstract and generalized Use Case`

Common use cases are abstract. It cannot be instantiated because it contains incomplete information. The title of the abstract use case is shown in italics.

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase5.png "Use Case")


## Example

 
This example describes a model of several business use cases (goals), which represent the interaction between a restaurant (business system) and its main participants. After determining the basic use cases in the first round, perhaps we can further build these use cases in the second round with `<<extend>>` and `<<include>>`.

As shown in the following figure:

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase10.png "Use Case")

## Business Use Case

Business use cases are described in non-technical terms. 
It regards business processes as a black box and describes the business processes used by its business participants. 
However, ordinary use cases are usually described at the system function level and specify the functions or services provided by the system to users. In other words, the business use case represents how to complete the work manually under the current situation. 
It is not necessarily completed by the system, nor is it intended to be completed automatically within the scope of the target system.

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase7.png "Use Case")


## Use Case 

**The following illustrations all use the online UML mapping website[Freedgo Design](https://www.freedgo.com)，Its access address is： https://www.freedgo.com**

Freedgo Design is an online drawing software for various types of charts. It allows you to create Arian Cloud Architecture Diagram, Tengxun Cloud Architecture Diagram, Oracle Cloud Architecture Diagram, AWS System Deployment Diagram, Software Architecture Diagram, UML, BPMN, ERD, Flow Diagram, UX Design Diagram, ANT DESIGN, Mind Map, Chart. It can be used by registered users free of charge.

**For details, please refer to the legend of UML design on the Online Drawing website：  http://www.feedgo.com/showcase.html **

**`Readme`: Click https://www.freedgo.com/public/site/ Learn more about Online Drawing。**

The following figure shows an example of automatic teller machine USCASE, which is a very classic example used when teaching USCASE.

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase8.png "Use Case")

The following document management system (DMS)Use Case example shows the participants and use cases of the system. In particular, there is an inclusive and extended relationship between use cases.

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase6.png "Use Case")


The following example of the order system Use Case shows the participants and use cases involved in the system:

![Use Case](https://www.freedgo.com/public/themes/freedgo/uml/usecase9.png "Use Case")









