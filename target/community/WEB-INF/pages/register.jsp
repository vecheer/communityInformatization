<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/15
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">


    <%--cdn方式--%>
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
    <!-- 可选的Bootstrap主题文件(一般不用引入) -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap-theme.min.css">
    <!-- jQuery文件，在bootstrap.min.js之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Bootstrap核心JavaScript文件 -->
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>


    <title>用户注册</title>
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

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li <%--class="active"--%>><a href="http://localhost:8080/asd/">首页<span class="sr-only">(current)</span></a>
                </li>
                <li class="dropdown">
                <li><a href="../../func/community/func_neighborhoodInfo_query.jsp">社区信息</a></li>
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
            <ul class="nav navbar-nav navbar-right">
                <li><a href="log/register"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>

        </div>
    </div>
</nav>

<!--主体内容 用户注册-->
<div class="container">
    <!--使用boots的栅格系统-->
    <%--占用空白位--%>
    <div class="row">
        <div class="jumbotron" style="background-color:transparent; text-align: center"></div>
    </div>

    <div class="row">
        <!-- study col-sm-offset-3表示偏移3个栅格，目的是让内容居中显示-->
        <div class="col-sm-6 col-sm-offset-3" >



            <div class="panel-heading"
                 style="text-align:center;font-size: 1.3em;margin: 4px 10px;border-bottom: 2px solid gray">用户注册
            </div>
            <div class="panel-body">
                <form role="form" id="userInfo">
                    <div class="form-group">
                        <label for="username">用户名:</label>
                        <input id="username" name="uname" type="账号" class="form-control" placeholder="请输入用户名">
                    </div>
                    <div class="form-group">
                        <label for="userpassword">密码:</label>
                        <input id="userpassword" name="upassword" type="password" class="form-control"
                               placeholder="请输入密码">
                    </div>
                    <div class="form-group">
                        <label for="userphonenum">手机号:</label>
                        <input id="userphonenum" name="uphonenum" type="password" class="form-control"
                               placeholder="请输入密码">
                    </div>


                    <input type="hidden" name="urole" value="0"> <%--用户权限，默认都是0，普通用户，要想晋级管理员，必须超级管理员手动授权--%>
                    <%--<div class="form-group">
                        <input type="text" value="请输入验证码">
                        <img>
                    </div>--%>
                    <%--<a href="log/logCheckAJAX?uname=vec&upassword=123456">testAjax</a>--%>
                    <button id="btn" type="button" class="btn btn-block btn-info">
                        注册
                    </button>
                    <%--反馈标签--%>
                    <div class="form-group" id="log_tip" style="color: orangered"></div>
                </form>
            </div>

        </div>
    </div>

</div>


<!--登录验证的js-->
<script type="text/javascript">
    $(function () {
        jQuery.support.cors = true;
        $("#btn").click(function () {
            //-----------------------把form中的内容放到json串中-------------------------------
            var formInfo = $("#userInfo").serializeArray();
            var jsonstr = '{';
            for (var i = 0; i < formInfo.length; i++) {
                jsonstr += '"' + formInfo[i].name + '":"' + formInfo[i].value + '"';
                if (i < formInfo.length - 1) {
                    jsonstr += ",";
                }
            }
            jsonstr += '}';
            //-----------------------把form中的内容放到json串中-------------------------------
            $.ajaxSetup({cache: false});
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/log/registerCheck",
                data: jsonstr,
                dataType: "json",
                contentType: "application/json;charset=utf-8",
                success: function (data) {
                    /*var result_str = JSON.stringify(data);
                    alert(result_str);*/
                    console.log(data.msg);
                    if (data.msg == "bad_uname") {
                        console.log("该用户名已被使用，请更换用户名!");
                        $("#log_tip").text("该用户名已被使用，请更换用户名!");
                    }
                    if (data.msg == "bad_pwd") {
                        console.log("该密码不可用，请检查密码");
                        $("#log_tip").text("该密码不可用，请检查密码");
                    }
                    if (data.msg == "success") {
                        console.log("成功了");
                        $("#log_tip").html("注册成功！页面会在<span id=\"timer\">5</span>后跳转至首页");
                        goToIndex();
                    }

                },
                error: function (xhr) {
                    alert("出错了!外层succes未执行");
                    alert(xhr.responseText);
                }
            })
        })
    })
</script>

<%--5秒倒计时--%>
<script>
    function goToIndex() {
        var num = 5;
        var timer = setInterval(function () {
            num--;
            document.getElementById("timer").innerText = num.toString();
            if (num == 0) {
                window.location.href = "http://localhost:8080/asd/";
            }
        }, 1000)
    }
</script>

</body>
</html>
