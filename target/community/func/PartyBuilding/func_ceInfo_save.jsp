<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>

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
        <!--左边导航栏-->
        <div class="col-sm-2" style="text-align: center">
            <div class="list-group">
                <p class="list-group-item list-group-item-info" style="font-size: 1.5em">党政信息</p>
                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="cMenu" href="#c_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 党员信息管理</a>
                    <ul id="c_menu" class="nav nav-list collapse menu-second">
                        <li><a href="#" class="list-group-item list-group-item-info" style="font-size: 0.8em">查询党员信息</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info" style="font-size: 0.8em">修改党员信息</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info" style="font-size: 0.8em">添加党员信息</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info" style="font-size: 0.8em">删除党员信息</a>
                        </li>
                    </ul>
                </div>

                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="aMenu" href="#a_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 积极分子信息</a>
                    <ul id="a_menu" class="nav nav-list collapse menu-second">
                        <li><a href="#" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">查询积极分子信息</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">修改积极分子信息</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">添加积极分子信息</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">删除积极分子信息</a>
                        </li>
                    </ul>
                </div>

                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="ceMenu" href="#ce_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 党建活动信息</a>
                    <ul id="ce_menu" class="nav nav-list collapse menu-second">
                        <li><a href="#" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">查询党建活动信息</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">修改党建活动信息</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">添加党建活动信息</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">删除党建活动信息</a>
                        </li>
                    </ul>
                </div>

            </div>
        </div>


        <!--主体内容-->
        <div class="col-sm-10">
            <!--提示面板-->
            <div class="col-sm-10">
                <div class="jumbotron">
                    <h2>党建信息查询与管理</h2>
                    <p>您可以在此查看本社区党建信息，如果您是管理员，您可以对社区户籍信息进行修改</p>
                    <p id=""></p>
                </div>
            </div>

            <%-- 修改信息 --%>
            <div class="col-sm-10" style="margin-bottom: 12px">
                <div class="col-lg-10">

                    <form role="form" id="ceInfo">
                        <div class="form-group">
                            <label>活动名称</label>
                            <input name="cename" type="text" class="form-control" placeholder="请输入活动名称 ">
                        </div>
                        <div class="form-group">
                            <label>举行时间</label>
                            <input name="cedate" type="text" class="form-control" placeholder="请输入活动举行时间 ">
                        </div>
                        <div class="form-group">
                            <label>举办地点</label>
                            <input name="ceplace" type="text" class="form-control" placeholder="请输入活动举办地点 ">
                        </div>
                        <div class="form-group">
                            <label>活动主题</label>
                            <input name="cetheme" type="text" class="form-control" placeholder="请输入活动主题 ">
                        </div>
                        <div class="form-group">
                            <label>主办方</label>
                            <input name="cesponsor" type="text" class="form-control" placeholder="请输入活动主办方 ">
                        </div>
                        <div class="form-group">
                            <label>参与人数</label>
                            <input name="ceparticipantnum" type="text" class="form-control" placeholder="请输入活动参与人数 ">
                        </div>
                        <div class="form-group">
                            <label>活动介绍</label>
                            <input name="ceinfo" type="text" class="form-control" placeholder="请输入活动的大致介绍 ">
                        </div>

                        <button type="button" class="btn btn-default" onclick="save()">保存信息</button>
                        <button type="reset" class="btn btn-default">重新输入信息</button>

                    </form>
                    <%--修改提示--%>
                    <div id="msg" style="text-align: center"></div>
                </div>
            </div>


            <!--在下面占用空白位置-->
            <div class="col-sm-10">
                <div class="jumbotron" style="background-color:transparent;"></div>
                <div class="jumbotron" style="background-color:transparent;"></div>
            </div>


        </div>
    </div>

    <!--默认让左侧导航栏二级菜单打开 -->
    <script type="text/javascript">
        $("#cMenu").click();
        $("#aMenu").click();
        $("#ceMenu").click();
    </script>

</div>


<!--js ajax 按身份证号查询 -->
<script type="text/javascript">
    function save() {
        /*清空当前展示的内容*/
        $("#result_msg").html("");
        jQuery.support.cors = true;

        //-----------------------把form中的内容放到json串中-------------------------------
        var formInfo = $("#ceInfo").serializeArray();
        var jsonstr = '{';
        for (var i = 0; i < formInfo.length; i++) {
            jsonstr += '"' + formInfo[i].name + '":"' + formInfo[i].value + '"';
            if (i < formInfo.length - 1) {
                jsonstr += ",";
            }
        }
        jsonstr += '}';
        //-----------------------把form中的内容放到json串中-------------------------------

        jQuery.support.cors = true;
        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/communistEvent/saveCommunistEvent",
            data: jsonstr,
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (data) {
                //就算值传递一个kv，json仍然是个对象
                if (data.msg == "success") {
                    $("#communistInfo").attr("hidden", "hidden");
                    $("#msg").html("<h3 style=\"color:lightgreen\">提示:该活动的信息已成功添加!</h3>");
                } else {
                    $("#msg").html("<h3 style=\"color:orangered\">提示:该活动的信息已存在!请检查输入的输入信息</h3>");
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
