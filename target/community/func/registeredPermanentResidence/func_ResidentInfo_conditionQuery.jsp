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
                        <li><a href="func_ResidentInfo_query.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息查询</a>
                        </li>
                        <li><a href="f#" class="list-group-item list-group-item-info"
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
                    <h2>社区居民信息查询</h2>
                    <p>您可以在此按条件查看特定情况下的居民信息</p>
                    <p id=""></p>
                </div>
            </div>

            <%--查询条件--%>
            <div class="col-sm-10" style="margin-bottom: 12px">
                <form role="form" id="ConditonInfo" style="white-space:nowrap;">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>性别</label>
                                <div>
                                    <label class="radio-inline">
                                        <!--
                                        study 因为我数据库里面性别设置的是char类型，这里的单选框radio的value只能传一个字符，超过一个字符，
                                        study 就会报错，success不执行。个人猜测是因为jackson在往pojo里面封装的时候，发现数据类型对不上
                                         -->
                                        <input type="radio" name="rsex" value="男"> 男
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rsex" value="女"> 女
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Rage">年龄</label>
                                <input id="Rage" name="rage" type="text" class="form-control" placeholder="居民年龄">
                            </div>
                            <div class="form-group">
                                <label for="Rnationality">民族</label>
                                <input id="Rnationality" name="rnationality" type="text" class="form-control"
                                       placeholder="请输入居民民族">
                                <span class="help-block">请填写：汉族、回族、苗族等</span>

                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label for="Redulevel">受教育程度</label>
                                <input id="Redulevel" name="redulevel" type="text" class="form-control"
                                       placeholder="请填写居民受教育程度">
                                <span class="help-block">请填写：大学本科、大学专科和专科学校、中等专业学校中等技术学校、技工学校、高中、初中、小学、文盲或半文盲</span>
                            </div>
                            <div class="form-group">
                                <label for="Rhrtype">户口类型</label>
                                <input id="Rhrtype" name="rhrtype" type="text" class="form-control"
                                       placeholder="请输入居民的户口类型">
                                <span class="help-block">请填写：城市户口、农村户口</span>
                            </div>
                            <div class="form-group">
                                <label for="Rismarried">婚姻情况</label>
                                <input id="Rismarried" name="rismarried" type="text" class="form-control"
                                       placeholder="请输入居民的婚姻情况">
                                <span class="help-block">请填写：未婚、已婚、离异、丧偶</span>
                            </div>
                            <div class="form-group">
                                <label for="Rlivingstatus">住房情况</label>
                                <input id="Rlivingstatus" name="rlivingstatus" type="text" class="form-control"
                                       placeholder="请输入居民的住房情况">
                                <span class="help-block">请填写：自购、租房、合租、无房</span>
                            </div>
                            <div class="form-group">
                                <label for="Rishealthy">健康情况</label>
                                <input id="Rishealthy" name="rishealthy" type="text" class="form-control"
                                       placeholder="请输入居民的健康情况">
                                <span class="help-block">请填写：健康、良好、一般、某某病（具体患病名称）、残疾</span>
                            </div>
                            <div class="form-group">
                                <label for="Rdisabilitytype">残疾类型</label>
                                <input id="Rdisabilitytype" name="rdisabilitytype" type="text" class="form-control"
                                       placeholder="请输入居民的残疾类型">
                                <span class="help-block">请填写：健康、几类残疾（按具体情况填写）</span>
                            </div>
                            <div class="form-group">
                                <label for="Rcompanytype">单位性质</label>
                                <input id="Rcompanytype" name="rcompanytype" type="text" class="form-control"
                                       placeholder="请输入居民的单位性质">
                                <span class="help-block">请填写：国营、私营等，按具体情况填写</span>
                            </div>
                            <div class="form-group">
                                <label for="Rtype">人员类别</label>
                                <input id="Rtype" name="rtype" type="text" class="form-control"
                                       placeholder="请输入居民的人员类别">
                                <span class="help-block">请填写：学生、工人、农民、干部、社会青年</span>
                            </div>
                            <div class="form-group">
                                <label for="Risemployed">就业情况</label>
                                <input id="Risemployed" name="risemployed" type="text" class="form-control"
                                       placeholder="请输入居民的就业情况">
                                <span class="help-block">请填写：已就业、待业，未成年或学生请填写：无</span>
                            </div>
                            <button type="button" class="btn btn-default" onclick="find()">查询</button>
                            <button type="reset" class="btn btn-default">重置</button>

                        </div>
                    </div>

                </form>
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
    function find() {
        /*清空当前展示的内容*/
        $("#result_msg").html("");
        $("#result_table_head").html("");
        $("#result_table_body").html("");
        $("#result_table").attr("hidden", "hidden");
        jQuery.support.cors = true;

        //-----------------------把form中的内容放到json串中-------------------------------
        var formInfo = $("#ConditonInfo").serializeArray();
        var jsonstr = '{';
        for (var i = 0; i < formInfo.length; i++) {
            jsonstr += '"' + formInfo[i].name + '":"' + formInfo[i].value + '"';
            if (i < formInfo.length - 1) {
                jsonstr += ",";
            }
        }
        jsonstr += '}';
        //-----------------------把form中的内容放到json串中-------------------------------


        $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/resident/findResidentInCondition",
            data: jsonstr,
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (residents) {
                if (residents == null || residents == "" || residents.length == 0) {
                    $("#result_msg").html("<h2>未查询到满足该条件的居民</h2>");
                } else {
                    $("#ConditonInfo").attr("hidden", "hidden");
                    $("#result_table").removeAttr("hidden");
                    $("#result_table_head").html("<tr> <th>编号</th><th>姓名</th><th>性别</th><th>年龄</th><th>民族</th><th>身份证类型</th>" +
                        "<th>身份证号码</th><th>出生日期</th> <th>受教育程度</th> <th>人口类型</th> <th>婚姻状况</th> <th>生育情况</th>" +
                        "<th>住房情况</th> <th>与户主关系</th> <th>房屋使用情况</th> <th>健康状况</th> <th>残疾类型</th> <th>公司类别</th> " +
                        "<th>人员类别</th> <th>就业状况</th> </tr>");
                    for (var i in residents)
                        $("#result_table_body").append("<tr>   <td>" + residents[i].id + "</td>" +
                            "<td>" + residents[i].rname + "</td>  <td>" + residents[i].rsex + "</td>" +
                            "<td>" + residents[i].rage + "</td>    <td>" + residents[i].rnationality + "</td>" +
                            "<td>" + residents[i].ridtype + "</td>  <td>" + residents[i].ridnum + "</td>" +
                            "<td>" + residents[i].rbirthday + "</td>  <td>" + residents[i].redulevel + "</td>" +
                            "<td>" + residents[i].rhrtype + "</td>  <td>" + residents[i].rismarried + "</td>" +
                            "<td>" + residents[i].rfpstatus + "</td>  <td>" + residents[i].rlivingstatus + "</td>" +
                            "<td>" + residents[i].rrelationwzowner + "</td>  <td>" + residents[i].rhouseuse + "</td>" +
                            "<td>" + residents[i].rishealthy + "</td>  <td>" + residents[i].rdisabilitytype + "</td>" +
                            "<td>" + residents[i].rcompanytype + "</td>  <td>" + residents[i].rtype + "</td>" +
                            "<td>" + residents[i].risemployed + "</td><tr>");
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
