<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/6
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小区信息</title>
</head>
<body>
<a href="neighborhood/findAllNeighborhood">查询小区信息</a>
<br>
<a href="neighborhood/updateNeighborhood?nid=4&nbuildingnum=8">修改小区信息</a>
<br>
<a href="neighborhood/findNeighborhoodByName?nname=小区">点击按名称查找“小区”</a>
<br>
<a href="neighborhood/saveNeighborhood?nid=2&nname=平等小区&
&nbuildingnum=10&nhousenum=480&nfamilynum=475&nresidentnum=1405">添加新小区信息</a>
<br>
<a href="neighborhood/deleteNeighborhood?nid=7">删除id=7的小区</a>
</body>
</html>
