<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/15
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="com.vecheer.domain.Pager" %>
<%@ page import="com.vecheer.entity.NResident" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>社区信息</title>


    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
    <!-- 可选的Bootstrap主题文件(一般不用引入) -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap-theme.min.css">
    <!-- jQuery文件，在bootstrap.min.js之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Bootstrap核心JavaScript文件 -->
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <!--让IE 8支持支持 HTML5 元素和媒体查询 -->
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>


    <!--表格内容居中显示-->
    <style>
        .table th, .table td {
            text-align: center;
            white-space: nowrap;
            vertical-align: middle !important;
        }
    </style>

</head>
<body>
<!--导航条 FIXME 里面的超链接都还没填写-->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">xx社区</a>
        </div>


        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="http://localhost:8080/asd/">首页<span class="sr-only">(current)</span></a>
                </li>
                <li class="dropdown">
                <li><a href="#">社区信息</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">户籍统计<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">居民信息</a></li>
                        <li><a href="#">住房信息</a></li>
                        <li><a href="#">个人信息</a></li>
                    </ul>
                </li>
                <li><a href="#">党政建设</a></li>
                <li><a href="#">文档下载</a></li>
                <li><a href="#">网站管理</a></li>
            </ul>

            <!--因为未登录的用户只能访问首页，所以在 所有非首页的 这个地方，不用考虑js判断是否已经登录，直接显示信息即可。-->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="log/register"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>

        </div>
    </div>
</nav>


<!--主体内容-->
<div class="container">
    <!--使用boots的栅格系统-->
    <div class="row">
        <!--左边2个 展示选项-->
        <div class="col-sm-2" style="text-align: center">
            <div class="list-group">
                <p class="list-group-item list-group-item-info" style="font-size: 1.5em">户籍信息</p>
                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="nRMenu" href="#nR_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 住房信息</a>
                    <ul id="nR_menu" class="nav nav-list collapse menu-second">
                        <li><a href="#" class="list-group-item list-group-item-info" style="font-size: 0.8em">居民住房信息统计</a>
                        </li>
                        <li><a href="func_nResidentInfo_update.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">居民住房信息修改</a>
                        </li>
                        <li><a href="func_nResidentInfo_save.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">居民住房信息添加</a>
                        </li>
                        <li><a href="func_nResidentInfo_delete.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">居民住房信息删除</a>
                        </li>
                    </ul>
                </div>

                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="rMenu" href="#r_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 个人信息</a>
                    <ul id="r_menu" class="nav nav-list collapse menu-second">
                        <li><a href="func_ResidentInfo_query.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息查询</a>
                        </li>
                        <li><a href="func_ResidentInfo_conditionQuery.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息条件查询</a>
                        </li>
                        <li><a href="func_ResidentInfo_conditionCount.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息条件统计</a>
                        </li>
                        <li><a href="func_ResidentInfo_update.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息修改</a>
                        </li>
                        <li><a href="func_ResidentInfo_delete.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息删除</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>


        <!--右边10个 展示查询结果-->
        <div class="col-sm-10">
            <!--提示面板-->
            <div class="col-sm-10">
                <div class="jumbotron">
                    <h2>户籍信息查询与管理</h2>
                    <p>您可以在此查看本社区户籍的的信息，如果您是管理员，您可以对社区户籍信息进行修改</p>
                    <p id=""></p>
                </div>
            </div>

            <!-- 查询条件输入 与 结果展示 -->
            <div class="col-md-10" style="margin-top: 20px">

                <!-- 查询条件输入 -->
                <div class="row-fluid" align="left">
                    <div style="float: left; margin-top: 2px; text-align: center;">
                        <!-- 每次翻页之后，让查询输入框仍然显示查询信息 -->
                        <%
                            String query_nname = "";
                            String query_rname = "";
                            if (request.getAttribute("query_nname") != null)
                                query_nname = (String) request.getAttribute("query_nname");
                            if (request.getAttribute("query_rname") != null)
                                query_rname = (String) request.getAttribute("query_rname");
                        %>
                        <form name="query_form"
                              <%--
                              look 一开始action没有写${pageContext.request.contextPath}，直接报错servlet.PageNotFound - No mapping for POST
                              study 如果这个页面不在webapps的根目录里，action请求地址就应该写全
                              --%>
                              action="${pageContext.request.contextPath}/nResident/findNRByNnameAndRname" method="post">
                            <label for="query_Nname">小区名称</label>
                            <input type="text" id="query_Nname" name="nname" value="<%= query_nname%>"/>
                            <label for="query_Rname">居民姓名</label>
                            <input type="text" id="query_Rname" name="rname" value="<%= query_rname%>"/>
                            <input type="submit" id="search" value="查询"/>
                        </form>
                    </div>
                </div>


                <!--查询结果-->
                <div class="col-sm-10">

                    <!--查询结果提示,如果结果为0，就显示此信息-->
                    <%
                        //判断是否有提示信息需要显示
                        if (request.getAttribute("nResidents") != null) {
                            if (((List<NResident>) request.getAttribute("nResidents")).size() == 0) {
                    %>
                    <div id="result_msg" style="text-align: center;color: orangered"><h2>没有查询到相关信息</h2></div>
                    <%
                            }
                        }
                    %>


                    <!--结果展示表, 如果有返回列表，就输出-->
                    <%
                        //判断是否显示结果表
                        if (request.getAttribute("nResidents") != null) {
                            if (((List<NResident>) request.getAttribute("nResidents")).size() != 0) {
                    %>
                    <div id="result_table" class="table-responsive" style="overflow:auto;border: 1px">
                        <table class="table table-hover" style="text-align: center">
                            <caption style="font-size: 1.5em">居民信息</caption>
                            <thead id="result_table_head">
                            <tr>
                                <th>居民编号</th>
                                <th>居民姓名</th>
                                <th>身份证号码</th>
                                <th>所在小区编号</th>
                                <th>所在小区名称</th>
                                <th>楼号</th>
                                <th>房号</th>
                            </tr>
                            </thead>
                            <tbody id="result_table_body">
                            <%
                                ArrayList<NResident> nResidents = (ArrayList<NResident>) request.getAttribute("nResidents");
                                for (NResident nr : nResidents) {
                            %>
                            <tr>
                                <td><%= nr.getRid() %>
                                </td>
                                <td><%= nr.getRname() %>
                                </td>
                                <td><%= nr.getRidnum() %>
                                </td>
                                <td><%= nr.getNid() %>
                                </td>
                                <td><%= nr.getNname() %>
                                </td>
                                <td><%= nr.getBid() %>
                                </td>
                                <td><%= nr.getHidnum() %>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                    <%
                            }
                        }
                    %>
                </div>


                <!-- 提交查询信息 -->
                <div class="row-fluid" style="float: right">
                    <%
                        //look 一开始这个地方没有判空，直接取值，然后首次访问时没有pager对象的，此时报错500
                        if (request.getAttribute("pager") != null) {
                            Pager pager = (Pager) request.getAttribute("pager");
                            int currentPage = pager.getCurrentPage();
                            int lastPage = pager.getTotalPages();

                    %>
                    <form id="pageform" name="pageform" action="${pageContext.request.contextPath}/nResident/findNRByNnameAndRname" method="post">
                        <!--直接提交本表单，本表单是隐藏的 -->
                        <input type="hidden" name="nname" value="<%=query_nname%>"/>
                        <input type="hidden" name="rname" value="<%=query_rname%>"/>

                        <!-- *****当前页******* -->
                        <input type="hidden" name="currentPage" id="currentPage"/>
                        <!-- *****当前页******* -->

                        <ul class="pager">
                            <li><a href="#" onclick="firstPage()">首页</a></li>
                            <li><a href="#" onclick="previousPage()">上一页</a></li>
                            <li><a href="#" onclick="nextPage()">下一页</a></li>
                            <li><a href="#" onclick="lastPage()">尾页</a></li>
                        </ul>
                    </form>



                    <!--js  提交表单 页面跳转也是通过这个地方 关键信息是提交的currentPage参数-->
                    <script type="text/javascript">
                        function firstPage() {
                            $("#currentPage").val(1);
                            $("#pageform").submit();
                        }

                        function previousPage() {
                            $("#currentPage").val(<%= currentPage==1?1:currentPage-1%>);
                            $("#pageform").submit();
                        }

                        function nextPage() {
                            $("#currentPage").val(<%= currentPage==lastPage?lastPage:currentPage+1%>);
                            $("#pageform").submit();
                        }

                        function lastPage() {
                            $("#currentPage").val(<%= lastPage%>);
                            $("#pageform").submit();
                        }
                    </script>
                    <%
                        }
                    %>

                </div>


            </div>


            <!--在下面占用空白位置-->
            <div class="col-sm-10">
                <div class="jumbotron" style="background-color:transparent;"></div>
                <div class="jumbotron" style="background-color:transparent;"></div>
            </div>

        </div>

    </div>
</div>

<!--默认让左侧导航栏二级菜单打开 -->
<script type="text/javascript">
    $("#nRMenu").click();
    $("#rMenu").click();
</script>


</body>


</html>
