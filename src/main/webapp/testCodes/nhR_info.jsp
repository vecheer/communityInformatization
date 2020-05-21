<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/6
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小区-居民信息</title>
</head>
<body>
    <a href="nResident/findNResidentByNname?nname=文明小区">按小区名称"文明"查找居民</a>

    <br>
    <a href="nResident/findNResidentByRname?rname=吴宇">按姓名"吴宇"查找居民</a>

    <br>
    <a href="nResident/updateNResident?rid=5&rname=吴宇奇&
    &ridnum=600000199888888998&nid=4&nname=和谐小区&bid=6&hidnum=6-5-602">修改rid为5的用户的信息</a>

    <br>
    <a href="nResident/saveNResident?rid=7&rname=肖战&
    &ridnum=800000199608080808&nid=4&nname=民主小区&bid=6&hidnum=080602">添加新用户的信息</a>

    <br>
    <a href="nResident/deleteNResident?rid=7">删除rid为7的居民信息</a>

</body>
</html>
