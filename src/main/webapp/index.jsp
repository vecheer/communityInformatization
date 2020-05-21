<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/4
  Time: 1:15
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!-- TODO 所有超链接 必须写全路径名称！！！！！ -->
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


    <%--boots css/js
    <script src="js/jquery.min.js"></script>
    <link rel="stylesheet" href="dist/css/bootstrap.css">
    <link rel="stylesheet" href="dist/css/bootstrap-theme.min.css">
    <script src="dist/js/npm.js"></script>
    <script src="dist/js/bootstrap.js"></script>
    --%>

    <%--个人设置的一些样式--%>
    <link rel="stylesheet" href="css/my.css">

    <title>社区信息化</title>

</head>
<body>

<!--导航条 FIXME 里面的超链接都还没填写-->
<nav class="navbar navbar-default">
    <div class="container-fluid">
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
                <li <%--class="active"--%>><a href="http://localhost:8080/asd/">首页<span class="sr-only">(current)</span></a></li>
                <li><a href="${pageContext.request.contextPath}/func/community/func_neighborhoodInfo_query.jsp">新闻通知</a></li>
                <li><a href="${pageContext.request.contextPath}/func/community/func_neighborhoodInfo_query.jsp">社区信息</a></li>
                <li><a href="${pageContext.request.contextPath}/func/registeredPermanentResidence/func_nResidentInfo_query.jsp">户籍统计</a></li>
                <li><a href="${pageContext.request.contextPath}/func/PartyBuilding/func_communistInfo_query.jsp">党政建设</a></li>
                <li><a href="#">文档下载</a></li>
                <li><a href="#">网站管理</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/log/register"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>

        </div>
    </div>
</nav>

<!--主体内容-->
<div class="container">
    <!--使用boots的栅格系统-->
    <div class="row">

        <!--中等屏幕，左边9个，右边3个-->
        <!--左边9个-->
        <div class="col-sm-9">
            <div class="jumbotron">
                <h1>欢迎访问XX社区</h1>
                <p>本社区自2020年创建，距今已有半年的悠久历史</p>
                <p id=""></p>
            </div>
            <div class="row">
                <div class="col-lg-4 col-xs-6">
                    <h2>验证登录</h2>
                    <p ><a href="log/logCheck?uname=vec&upassword=123456" style="text-decoration: none;font-size: 2em">点击此处登录</a></p>
                </div>
                <div class="col-lg-4 col-xs-6">
                    <h2>党建查看</h2>
                    <p><a href="testCodes/n_info.jsp" style="text-decoration: none;font-size: 2em">小区信息</a></p>
                </div>
                <div class="col-lg-4 col-xs-6">
                    <h2>文件管理</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda delectus harum illum libero
                        molestiae nemo odio qui quis reiciendis reprehenderit.</p>
                </div>
                <div class="col-lg-4 col-xs-6">
                    <h2>网站设置</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda delectus harum illum libero
                        molestiae nemo odio qui quis reiciendis reprehenderit.</p>
                </div>
                <div class="col-lg-4 col-xs-6">
                    <h2>网站设置</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda delectus harum illum libero
                        molestiae nemo odio qui quis reiciendis reprehenderit.</p>
                </div>
            </div>
        </div>

        <!--右边3个 使用了boots官网的组件-->
        <%--默认是登录界面，登录成功后登录界面隐藏，个人信息界面显示--%>
        <div class="col-sm-3" id="log_not">
            <div class="panel-heading" style="font-size: 1.3em;margin: 4px 10px;border-bottom: 2px solid gray">用户登录</div>
            <div class="panel-body" >
                <form role="form" id="userInfo">
                    <div class="form-group">
                        <label for="username">用户名:</label>
                        <input id="username" name="uname" type="账号" class="form-control" placeholder="请输入账号"  >
                    </div>
                    <div class="form-group">
                        <label for="userpassword">密码:</label>
                        <input id="userpassword" name="upassword" type="password"  class="form-control" placeholder="请输入密码">
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="checkbox" class="checkbox">记住密码
                        </label>
                    </div>
                    <%--<div class="form-group">
                        <input type="text" value="请输入验证码">
                        <img>
                    </div>--%>
                    <%--<a href="log/logCheckAJAX?uname=vec&upassword=123456">testAjax</a>--%>
                    <button id="btn" type="button" class="btn btn-block btn-default">
                        登录
                    </button>
                    <div class="form-group" id="log_tip" style="color: orangered" ></div>
                    <div class="form-group" >
                        <a href="log/register" id="toRegisterAccount">没有账号?</a>
                    </div>

                </form>
            </div>
        </div>

        <%--个人信息界面，默认隐藏，登录成功之后显示--%>
        <div class="col-sm-3" id="log_yes" hidden="hidden">
            <div class="list-group">
                <a href="#" class="list-group-item list-group-item-success" id="logged_uname"
                   style="font-size: 1.5em"></a>

                <a href="#" class="list-group-item list-group-item-info">我的身份:</a>
                <a href="#" class="list-group-item list-group-item-info">修改个人资料</a>
                <a href="log/logout" class="list-group-item list-group-item-danger">退出登录</a>
            </div>
        </div>


    </div>
</div>
<!--（验证码稍后再改）-->


<!--这个判断登录必须放在页面内容的下面，不然页面还没加载，根本没法设置hidden
        判断是否登录

        后台的设计是：如果用户信息验证成功，则登录成功，才会把实体user放到session中
        如果用户信息验证失败，则只会返回一个错误的user实体，不会放置到session中
        如果用户登出，然后切换账号，并且会移除session中的user实体

        总结就是登陆失败，或者重新登录，session中都不会有user实体

        所以这里直接判断session中有没有user，如果有，则一定是验证成功的情况下

    -->
<%--判断是否需要登录的js，查看session信息--%>
<script type="text/javascript">
    console.log("${sessionScope.user}");
    var logInfo = "${sessionScope.user}";
    if (logInfo=="null" || logInfo=="" ){ //如果session中存在user，就隐藏登录成功的面板，显示登录面板
        $("#log_yes").attr("hidden","hidden");
        $("#log_not").remove("hidden");
    }else{
        $("#log_not").attr("hidden","hidden");
        $("#log_yes").removeAttr("hidden");
        $("#logged_uname").text("欢迎您，"+"${sessionScope.user.uname}");
    }
</script>

<!--登录验证的js-->
<script type="text/javascript">
    $(function(){
        jQuery.support.cors = true;
        $("#btn").click(function(){
            //-----------------------把form中的内容放到json串中-------------------------------
            var formInfo =$("#userInfo").serializeArray();
            var jsonstr = '{';
            for(var i=0;i<formInfo.length;i++){
                //这里有一个有（e）趣（xin）的现象就是，当我的key-value用单引号括起来时，无法解析，访问后台产生404错误，还必须得用双引号括起来
                jsonstr+='"'+formInfo[i].name+ '":"' + formInfo[i].value + '"';
                if (i<formInfo.length-1) {
                    jsonstr+=",";
                }
            }
            jsonstr+='}';
            /*alert(jsonstr);*/
            //-----------------------把form中的内容放到json串中-------------------------------
            $.ajaxSetup ({ cache: false });
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/log/logCheckAJAXTest",
                data:jsonstr,
                dataType:"json",
                contentType:"application/json;charset=utf-8",
                success:function(data){
                    if (data.uname!="wrong_log_msg"){
                        alert("欢迎您!"+data.uname);
                        console.log("欢迎您!"+data.uname);
                        $("#log_not").attr("hidden","hidden");
                        $("#log_yes").removeAttr("hidden");
                        $("#logged_uname").text("欢迎您，"+data.uname);
                    }
                    else
                        $("#log_tip").text("用户名或密码错误！");
                },
                error:function(xhr){
                    alert("出错了!succes未执行");
                    alert(xhr.responseText)
                }
            })
        })
    })
</script>
</body>
</html>




<%--<%@ pager contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="log/logCheck?uname=vec&upassword=123456">点击此处登录</a>

<hr>
<br>

<form action="log/register4Test" method="post">
    用户名:<input type="text" name="uname"><br>
    密码:<input type="password" name="upassword"><br>
    手机号:<input type="text" name="uphonenum"><br>
    <input type="checkbox" name="agreement" value="1" checked="checked">我已经阅读并同意网站相关协议<br>
    <input type="checkbox" name="agreement" value="0">我未阅读或不同意网站相关协议<br>
    <input type="submit" value="提交"><input type="reset" value="重新设置">
</form>

<hr>
<br>

<a href="n_info.jsp">小区信息</a>

<hr>
<br>

<a href="nhR_info.jsp">小区-居民居住信息</a>

<hr>
<br>

<a href="nD_info.jsp">小区-部门信息</a>

<hr>
<br>

<a href="h_info.jsp">房屋信息</a>

<hr>
<br>

<a href="r_info.jsp">居民个人信息</a>

<hr>
<br>

<a href="c_info.jsp">党员信息</a>

<br>

<a href="am_info.jsp">积极分子信息</a>

<br>

<a href="ce_info.jsp">党建活动信息</a>

<br>


</body>
</html>--%>


