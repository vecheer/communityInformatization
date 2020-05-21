<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/10
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>党建活动信息</title>
</head>
<body>

<a href="communistEvent/findAllCommunistEvent">查询所有党建信息</a><br>
<a href="communistEvent/findCommunistEventByCenameAndCesponsor?cename=三月主题党会&cesponsor=文明社区第一支部">查看[文明社区第一支部]举办的[三月主题党会]</a><br>
<a href="communistEvent/findCommunistEventBySponsor?cesponsor=富强社区第三支部">查看[富强社区第三支部]举办的所有活动</a><br>

<form action="communistEvent/findCommunistEventByDate" method="post">
    查询<input type="text" name="year" style="width:25px;">年<input type="text" name="month" style="width:25px;">月<input type="text" name="day" style="width:25px;">日举办的活动
    <input type="submit" value="查看">
</form><br>
<a href="communistEvent/saveCommunistEvent?cename=学雷锋，树新风&cedate=2020年4月20日&ceplace=蜀山区党校&cetheme=学习雷锋&
&cesponsor=和谐小区第一支部&ceparticipantnum=35&ceinfo=雷锋精神，使我们社会不可获取的精神，我们在新时代也要学习">添加新活动</a><br>

<a href="communistEvent/updateCommunistEvent?cename=学雷锋，树新风&cedate=2020年4月20日&ceplace=蜀山区党校&cetheme=学习雷锋，从我做起&
&cesponsor=和谐小区第一支部&ceparticipantnum=35&ceinfo=雷锋精神，使我们社会不可获取的精神，我们在新时代也要学习">修改活动</a><br>

<a href="communistEvent/deleteCommunistEvent?cename=学雷锋，树新风&cesponsor=和谐小区第一支部">删除[和谐小区第一支部]举办的[学雷锋，树新风]活动</a><br>




</body>
</html>
