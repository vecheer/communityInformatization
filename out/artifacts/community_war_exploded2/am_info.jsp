<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/10
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>积极分子信息</title>
</head>
<body>
    <a href="activeMember/findAllActiveMember">查询所有积极分子信息</a><br>
    <a href="activeMember/findActiveMemberByAidnum?aidnum=33333319700980">查询身份证号为33333319700980的积极分子</a><br>
    <a href="activeMember/findActiveMemberByAname?aname=周小璐">查询名字为周小璐的积极分子的信息</a><br>
    <a href="activeMember/saveActiveMember?aname=哪吒&asex=男&anationality=汉族&aidnum=90000019961221&aedulevel=大专&
    &aworkentrytime=2013年4月12日&aworkat=陈塘关保安公司&aduty=保洁&aaddress=陈塘关富强路22号&aleagueentrydate=2006年1月2日&
    &aapplydate=2018年8月8日&abeamdate=2018年10月21日&areferrer=李靖">增加积极分子哪吒的信息</a><br>
    <a href="activeMember/updateActiveMember?aname=哪吒&asex=男&anationality=汉族&aidnum=33333319700980&aedulevel=大专&
    &aworkentrytime=2013年4月12日&aworkat=陈塘关保安公司&aduty=保洁&aaddress=陈塘关富强路22号&aleagueentrydate=2006年1月2日&
    &aapplydate=2018年8月8日&abeamdate=2018年10月21日&areferrer=李靖">修改身份证号33333319700980的积极分子的信息</a><br>
    <a href="activeMember/deleteActiveMember?aidnum=33333319700980">删除身份证号aidnum=33333319700980的积极分子</a>
</body>
</html>
