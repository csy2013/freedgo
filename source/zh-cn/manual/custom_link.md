---
title: 自定义链接
---
自定义链接可用于允许超链接和页面链接的地方，即形状和(部分)文本标签上。


# 自定义链接
- 右键单击一个形状，然后选择编辑链接，或者选择该形状并使用键盘快捷键Alt+Shift+L
- 在第一个文本字段中输入自定义链接。
![Online Diagram Drawing](/public/themes/freedgo/custom_link.png "custome link")


# 在freedgo.com格式化自定义链接 
自定义链接的格式为:data:action/json，{"actions":[actions]}其中actions是一个逗号分隔的JavaScript对象(json)列表，包含以下可能的键:

- “打开”:字符串-打开标准或自定义链接(包括页面链接)。 
- “切换”/“显示”/“隐藏”/“突出显示”:cellset - 切换、显示、隐藏或突出显示给定的图表元素。 
- “选择”:单元格集-如果图表可编辑，则选择给定的单元格。 
- “滚动”:单元格集-滚动到给定单元格集中的第一个单元格。 
- "viewbox": {"x": int，" y": int，" width": int，" height": int}。

如果未指定滚动操作，则当您单击链接时，选择或突出显示操作中列出的第一个形状或图层会滚动为可见(选择优先)。
对于高亮显示，您可以指定颜色(字符串)、持续时间(毫秒数)和不透明度(1-100)。
单元集是形状和层标识或标签或两者的数组，例如{"cells": ["id1 "，" id2"]，" tags": ["tag1 "，" tag2"]}。 
- 如果使用多个标签，则选择具有所有标签的图元素(与)。
- 要切换标记1或标记2的单元格，请改用多个切换操作。 
- 要指定所有单元格，请使用“单元格”:[" *]。 
- 要用标记指定所有单元格，请使用“标记”:[](空数组)。
```
请注意，当您使用标记来切换图表元素时，它将更改这些图表元素的当前可见状态。
```
# Example 1
```
data:action/json,{"actions":[{"toggle": {"cells": ["5", "7"]}}]}
```
这将显示或隐藏ID为5和ID为7的单元格，具体取决于它们当前的可见状态。

# Example 2
```
data:action/json,{"actions":[{"open": "data:page/id,1"},{"highlight":{"cells":["2"],"opacity":100, "color": "red"}}]}
```
这将打开ID为1的页面，然后以红色突出显示ID为2的单元格，不透明度为100%。

# Example 3
```
data:action/json,{"actions":[{"show": {"tags": []}},{"hide": {"tags": ["pipe", "water"]}}]}
```
这将显示带有标签的所有单元格，然后隐藏带有管道和水标签的所有单元格。

# Find the ID of a shape, page, or layer
- Shape: 右键单击一个形状，选择编辑数据，或选择一个形状，然后使用键盘快捷键Ctrl+M(在Windows上)或Cmd+M(在macOS上)。
![Online Diagram Drawing](/public/themes/freedgo/edit_data.png "custome link")
编辑形状或页面上的数据将显示其标识 
- Page:确定没有选择任何东西来获取一个页面的ID，然后在Windows上按Ctrl+M或者在macOS上按Cmd+M。
![Online Diagram Drawing](/public/themes/freedgo/lay.png "custome link")

## Layer: 从菜单中选择“视图”>“层”以查看“层”对话框。单击三个垂直点(编辑数据)查看所选图层的标识。

 单击图层对话框中的编辑数据，查看选定图层的标识 当您查看图表时，当您选择带有“操作”标签的形状时，自定义链接将显示为工具提示。
 当您单击链接时，图表元素的可见状态会更新，图表也会保存。 如果您正在使用实时协作，那么在所有连接的图中，图元素的可见状态都会更新。 
 当在灯箱或只读模式下查看时，当您单击形状或文本时，图表元素的可见状态将发生变化，但这种变化不会被保存。




