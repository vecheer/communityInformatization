<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/15
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
                <li><a href="http://localhost:8080/asd/">首页</a>
                <li><a href="#">社区信息</a></li>
                <li><a href="../registeredPermanentResidence/func_nResidentInfo_query.jsp" >户籍统计</a></li>
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
                <p class="list-group-item list-group-item-info" style="font-size: 1.5em">社区信息</p>
                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="nMenu" href="#n_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 小区信息</a>
                    <ul id="n_menu" class="nav nav-list collapse menu-second">
                        <li><a href="#" class="list-group-item list-group-item-info" style="font-size: 0.8em">小区信息查询</a>
                        </li>
                        <li><a href="func_neighborhoodInfo_update.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">小区信息修改</a>
                        </li>
                        <li><a href="func_neighborhoodInfo_save.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">小区信息添加</a>
                        </li>
                        <li><a href="func_neighborhoodInfo_delete.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">小区信息删除</a>
                        </li>
                    </ul>
                </div>
                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="dMenu" href="#d_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 机构信息</a>
                    <ul id="d_menu" class="nav nav-list collapse menu-second">
                        <li><a href="func_nDepartmentInfo_query.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">机构信息查询</a>
                        </li>
                        <li><a href="func_nDepartmentInfo_update.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">机构信息修改</a>
                        </li>
                        <li><a href="func_nDepartmentInfo_save.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">机构信息添加</a>
                        </li>
                        <li><a href="func_nDepartmentInfo_delete.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">机构信息删除</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!--右边10个 展示查询结果-->
        <div class="col-sm-10">

            <div class="col-sm-10">
                <div class="jumbotron">
                    <h2>社区信息查询与管理</h2>
                    <p>您可以在此查看本社区的信息，如果您是管理员，您可以对社区信息进行修改</p>
                    <p id=""></p>
                </div>
            </div>

            <%--查询条件--%>
            <div class="col-sm-10" style="margin-bottom: 12px">
                <div class="col-lg-8">
                    <div class="input-group">
                        <input type="text" class="form-control" id="nname" placeholder="请输入小区名称">
                        <div class="input-group-btn">
                            <button class="btn btn-default" tabindex="-1" onclick="findByName()">查询</button>
                            <button id="button_findByName" class="btn btn-default dropdown-toggle"
                                    data-toggle="dropdown"
                                    tabindex="-1">
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu pull-right">
                                <li>
                                    <a href="#" onclick="findAll()">所有小区</a>
                                </li>
                                <li>
                                    <a href="#" onclick="findByName()">此名称小区</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <%--查询结果--%>
            <div class="col-sm-10">
                <%--查询提示--%>
                <div id="result_msg" style="text-align: center;color: orangered"></div>
                <%--结果展示表--%>
                <div id="result_table" class="table-responsive" hidden="hidden" style="overflow:auto;border: 1px">
                    <table class="table table-hover" style="text-align: center">
                        <caption style="font-size: 2em">小区信息</caption>
                        <thead id="result_table_head">
                        <%--表头值等待ajax返回--%>
                        </thead>
                        <tbody id="result_table_body">
                        <%--表体值等待ajax返回--%>
                        </tbody>
                    </table>
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
<script>
    $("#nMenu").click();
    $("#dMenu").click();
</script>

<!--js ajax 查询所有 超链接触发 -->
<script type="text/javascript">
    function findAll() {
        /*先清空当前内容*/
        $("#result_msg").html("");
        $("#result_table_head").html("");
        $("#result_table_body").html("");
        $("#result_table").attr("hidden","hidden");
        jQuery.support.cors = true;
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/neighborhood/findAllNeighborhood",
            data: "{}",
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (list) {
                if (list == null) {
                    alert("查询结果为null");
                    $("#result_msg").html("<h2>未查询到任何信息</h2>");
                } else {
                    $("#result_table").removeAttr("hidden");
                    $("#result_table_head").html("<tr> <th>编号</th><th>小区名称</th><th>小区楼栋数</th><th>小区房屋数</th>" +
                        "<th>小区户口数</th><th>小区居民数</th> </tr>");
                    for (var i in list) {
                        $("#result_table_body").append("<tr> <td>" + list[i].nid + "</td>" +
                            "<td>" + list[i].nname + "</td><td>" + list[i].nbuildingnum + "</td>" +
                            "<td>" + list[i].nhousenum + "</td><td>" + list[i].nfamilynum + "</td>" +
                            "<td>" + list[i].nresidentnum + "</td><tr>");
                    }
                }
            },
            error: function (xhr) {
                alert("出错了!succes未执行");
                alert(xhr.responseText)
            }
        })
    }
</script>

<!--js ajax 按名称查询 -->
<script type="text/javascript">
    function findByName() {
        /*清空当前展示的内容*/
        $("#result_msg").html("");
        $("#result_table_head").html("");
        $("#result_table_body").html("");
        $("#result_table").attr("hidden","hidden");
        jQuery.support.cors = true;
        var nname = $("#nname").val();
        var jsonstr = '{"nname":"' + nname + '"}';
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/neighborhood/findNeighborhoodByName",
            data: jsonstr,
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (list) {
                if (list == null || list == "" || list.length==0) {
                    $("#result_msg").html("<h2>未查询到任何信息</h2>");
                } else {
                    $("#result_table").removeAttr("hidden");
                    $("#result_table_head").html("<tr> <th>编号</th><th>小区名称</th><th>小区楼栋数</th><th>小区房屋数</th>" +
                        "<th>小区户口数</th><th>小区居民数</th> </tr>");
                    for (var i in list) {
                        $("#result_table_body").append("<tr> <td>" + list[i].nid + "</td>" +
                            "<td>" + list[i].nname + "</td><td>" + list[i].nbuildingnum + "</td>" +
                            "<td>" + list[i].nhousenum + "</td><td>" + list[i].nfamilynum + "</td>" +
                            "<td>" + list[i].nresidentnum + "</td><tr>");
                    }
                }
            },
            error: function (xhr) {
                alert("出错了!succes未执行，出错信息是:");
                alert(xhr.responseText)
            }
        })
    }
</script>

</body>


</html>
