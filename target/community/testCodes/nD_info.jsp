<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/7
  Time: 0:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小区-部门信息</title>
</head>
<body>

<a href="nDepartment/findNDepartmentByNname?nname=富强小区">按小区名称查找部门</a>
<br>
<a href="nDepartment/findNDepartmentByDname?dname=保安部">按部门名称查询部门</a>
<br>
<a href="nDepartment/findNDepartmentByNnameAndDname?nname=富强小区&dname=财务部">按小区nname和部门dname查找某小区某部门</a>
<br>
<a href="nDepartment/saveNDepartment?nid=3&
&nname=文明小区&did=3&dname=保安部&dfunction=安保服务&ddirector=吴四宝&dduty=队长&ddirectorphonenum=18168855212">添加新部门</a>
<br>
<a href="nDepartment/deleteNDepartmentByNameAndDname?nname=文明小区&dname=综合办事处">按小区nname和部门dname删除某小区某部门</a>
<br>




</body>
</html>
