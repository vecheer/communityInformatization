<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/9
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>党员信息</title>
</head>
<body>
    <a href="communist/findAllCommunist">查询所有党员信息</a><br>
    <a href="communist/findCommunistByCid?cid=2">查询党员编号cid=2的党员</a><br>
    <a href="communist/findCommunistByCidnum?cidnum=666666199866666666">查询身份证为666666199866666666的党员信息</a><br>
    <a href="communist/findCommunistByCname?cname=李云龙">查询名字为李云龙的党员</a><br>
    <a href="communist/saveCommunist?cname=吴二宝&csex=女&cnationality=藏族&cnativeplace=西藏拉萨&cidnum=20202019909220000&
    &cphonenum=+86 18128834654&caddress=拉萨市解放路123号&cbirthday=1995年9月22日&cduty=法院院长&cworkentrytime=2015年6月3日&
    &cjoinbranch=中共西藏拉萨市法院第二党支部&creferrer=买买提&cjointime=2016年5月4日&cjoinorg=朝鲜平壤法院第一党支部&cjoinok=是&
    &cjoinfrom=中共西藏拉萨市法院第二党支部&cjointhisdate=2015年5月2日&cmoney=0.2&cedu=大学本科&crp=无">添加党员信息</a><br>
    <a href="communist/updateCommunist?cname=吴二宝&csex=女&cidnum=20202019909220000">更新吴二宝的性别</a><br>
    <a href="communist/deleteCommunist?cidnum=666666199866666666">删除身份证cidnum=666666199866666666的党员信息</a>
</body>
</html>
