<%--
  Created by IntelliJ IDEA.
  User: Vecheer
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
                <li><a href="func_neighborhoodInfo_query.jsp">社区信息</a></li>
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
                <p class="list-group-item list-group-item-info" style="font-size: 1.5em">户籍信息</p>
                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="nRMenu" href="#nR_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 住房信息</a>
                    <ul id="nR_menu" class="nav nav-list collapse menu-second">
                        <li><a href="#" class="list-group-item list-group-item-info" style="font-size: 0.8em">居民住房信息查询</a>
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

            <div class="col-sm-10">
                <div class="jumbotron">
                    <h2>社区机构信息管理</h2>
                    <p>您可以输入将要删除的居民的名称、以及所在小区的名称，即可将该机构从系统中删除。</p>
                    <p id=""></p>
                </div>
            </div>

            <%--修改小区机构信息 表单--%>
            <%--查询条件--%>
            <div class="col-sm-10" style="margin-bottom: 12px">
                <form class="form-horizontal" id="nResidentInfo">
                    <div class="form-group">
                        <label for="Ridnum" class="col-sm-2 control-label">居民身份证号</label>
                        <div class="col-sm-4">
                            <input type="text" name="ridnum" class="form-control" id="Ridnum" placeholder="请输入将删除的居民身份证号">
                        </div>
                        <button type="button"  class="btn btn-danger" tabindex="-1" onclick="deleteThis()">删除</button>
                    </div>
                </form>
            </div>


            <%--查询结果--%>
            <div class="col-sm-10">
                <%--查询提示--%>
                <div id="msg" style="text-align: center;color: orangered"></div>
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


<!-- TODO 检查输入信息 -->
<script type="text/javascript">
    function  inputCheck() {

    }
</script>




<!--js ajax 按身份证号删除 -->
<script type="text/javascript">
    function deleteThis() {
        /*先清空当前消息*/
        $("#msg").html("");

        var ridnum = $("#Ridnum").val();
        if (ridnum==null || ridnum=="" || ridnum==undefined) {
            $("#msg").html("<h2>请输入正确的居民身份证号码!</h2>");
            return;
        }

        var jsonstr = '{"ridnum":'+ ridnum +'}';

        jQuery.support.cors = true;
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/nResident/deleteNResident",
            data: jsonstr,
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (data) {
                if (data.msg=="success"){
                    $("#msg").html("<h3 style=\"color:lightgreen\">提示: 该居民的信息已成功删除!</h3>");

                }else{
                    $("#msg").html("<h3 style=\"color:orangered\">提示: 未找到该居民，请检查身份证号是否正确</h3>");
                }
            },
            error: function (xhr) {
                alert("出错了!succes未执行");
                alert(xhr.responseText)
            }
        })
    }
</script>




</body>


</html>
