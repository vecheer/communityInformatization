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
                <li><a href="../registeredPermanentResidence/func_nResidentInfo_query.jsp">户籍统计</a></li>
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
                       data-toggle="collapse" style="font-size: 1.2em"> 居民信息</a>
                    <ul id="nR_menu" class="nav nav-list collapse menu-second">
                        <li><a href="func_nResidentInfo_query.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民信息统计</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info" style="font-size: 0.8em">居民信息修改</a>
                        </li>
                        <li><a href="func_ResidentInfo_conditionCount.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息条件统计</a>
                        </li>
                        <li><a href="func_nResidentInfo_save.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民信息添加</a>
                        </li>
                        <li><a href="func_nResidentInfo_delete.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民信息删除</a>
                        </li>
                    </ul>
                </div>
                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="rMenu" href="#r_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 个人信息</a>
                    <ul id="r_menu" class="nav nav-list collapse menu-second">
                        <li><a href="#" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息查询</a>
                        </li>
                        <li><a href="func_ResidentInfo_conditionQuery.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息条件查询</a>
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
                    <h2>社区信息查询与管理</h2>
                    <p>您可以在此查看本社区的信息，如果您是管理员，您可以对社区信息进行修改</p>
                    <p id=""></p>
                </div>
            </div>

            <%--查询条件--%>
            <div class="col-sm-10" style="margin-bottom: 12px">
                <div class="col-lg-8">
                    <div class="input-group">
                        <input type="text" class="form-control" id="ridnum" placeholder="请输入身份证号码">
                        <div class="input-group-btn">
                            <button class="btn btn-default" tabindex="-1" onclick="findByRidnum()">查询</button>
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
                        <caption style="text-align: left;font: 1.3em bold">查询结果如下:</caption>
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
<script type="text/javascript">
    $("#nRMenu").click();
    $("#rMenu").click();
</script>


<!--js ajax 按身份证号查询 -->
<script type="text/javascript">
    function findByRidnum() {
        /*清空当前展示的内容*/
        $("#result_msg").html("");
        $("#result_table_head").html("");
        $("#result_table_body").html("");
        $("#result_table").attr("hidden", "hidden");
        jQuery.support.cors = true;
        var ridnum = $("#ridnum").val();
        var jsonstr = '{"ridnum":"' + ridnum + '"}';
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/resident/findResidentByRidnum",
            data: jsonstr,
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (resident) {
                if (resident.rname == "notfound") {
                    $("#result_msg").html("<h2>未查询该到居民任何信息，请检查身份证号码</h2>");
                } else {
                    $("#result_table").removeAttr("hidden");
                    $("#result_table_head").html("<tr> <th>编号</th><th>姓名</th><th>性别</th><th>年龄</th><th>民族</th><th>身份证类型</th>" +
                        "<th>身份证号码</th><th>出生日期</th> <th>受教育程度</th> <th>人口类型</th> <th>婚姻状况</th> <th>生育情况</th>" +
                        "<th>住房情况</th> <th>与户主关系</th> <th>房屋使用情况</th> <th>健康状况</th> <th>残疾类型</th> <th>公司类别</th> " +
                        "<th>人员类别</th> <th>就业状况</th> </tr>");
                    $("#result_table_body").append("<tr>   <td>" + resident.id + "</td>" +
                        "<td>" + resident.rname + "</td>  <td>" + resident.rsex + "</td>" +
                        "<td>" + resident.rage + "</td>    <td>" + resident.rnationality + "</td>" +
                        "<td>" + resident.ridtype + "</td>  <td>" + resident.ridnum + "</td>" +
                        "<td>" + resident.rbirthday + "</td>  <td>" + resident.redulevel + "</td>" +
                        "<td>" + resident.rhrtype + "</td>  <td>" + resident.rismarried + "</td>" +
                        "<td>" + resident.rfpstatus + "</td>  <td>" + resident.rlivingstatus + "</td>" +
                        "<td>" + resident.rrelationwzowner + "</td>  <td>" + resident.rhouseuse + "</td>" +
                        "<td>" + resident.rishealthy + "</td>  <td>" + resident.rdisabilitytype + "</td>" +
                        "<td>" + resident.rcompanytype + "</td>  <td>" + resident.rtype + "</td>" +
                        "<td>" + resident.risemployed + "</td><tr>");
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
