<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/7
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>房屋信息</title>
</head>
<body>
    <a href="house/findHouseInCondition?nname=富强小区&bid=2&hfloord=3&hflooru=5&haread=80&hareau=120&hdesign=三室一厅&hrented=y">点击查询富强小区 2号楼 3层到5层 80平米以上，120平米以下 三室一厅 正在出租的房子 </a>
    <br>
    <a href="house/findHouseInCondition?nname=富强小区&hdesign=三室一厅&hrented=y">点击查询富强小区 三室一厅 正在出租的房子 </a>
    <br>
    <a href="house/saveHouse?nid=1&nname=富强小区&bid=6&hfloor=8&hidnum=6-8-101&harea=156&hdesign=三室两厅&hrented=n&
    &howner=吴二宝&hownerphonenum=18888888888">点击新增房屋信息1</a>
    <br>
    <a href="house/saveHouse?nid=1&nname=和谐小区&bid=4&hfloor=9&hidnum=4-9-223&harea=65&hdesign=一室一厅&hrented=n&
    &howner=吴住房&hownerphonenum=18888666888">点击新增房屋信息2</a>
    <br>
    <a href="house/updateHouse?nid=1&nname=富强小区&bid=6&hfloor=8&hidnum=6-8-101&harea=156&hdesign=三室两厅&hrented=n&
    &howner=小明&hownerphonenum=16688868686">点更新房屋信息</a>
    <br>
    <a href="house/deleteHouse?nname=和谐小区&hidnum=4-9-223">点击删除和谐小区4-9-223号房</a>
</body>
</html>
