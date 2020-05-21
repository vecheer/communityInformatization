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
                        <li><a href="func_ResidentInfo_conditionQuery.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息条件查询</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info"
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

        <!--右边10个 展示查询-->
        <div class="col-sm-10">

            <div class="col-sm-10">
                <div class="jumbotron">
                    <h2>社区居民信息查询</h2>
                    <p>您可以在此按条件查看特定情况下的居民信息</p>
                    <p id=""></p>
                </div>
            </div>

            <%--查询结果--%>
            <div class="col-sm-10">
                <%--查询提示--%>
                <div id="result_msg"></div>
            </div>

            <%--查询条件--%>
            <div class="col-sm-10" style="margin-bottom: 12px">
                <form role="form" id="ConditonInfo" style="white-space:nowrap;">
                    <div style="text-align: left;color: black"><h3>请输入查询条件:</h3></div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label>性别</label>
                                <div>
                                    <label class="radio-inline">
                                        <input type="radio" name="rsex" value="男"> 男
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rsex" value="女"> 女
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="RageL">年龄下限</label>
                                <input id="RageL" name="rageL" type="text" class="form-control" placeholder="居民年龄">
                            </div>
                            <div class="form-group">
                                <label for="RageU">年龄上限</label>
                                <input id="RageU" name="rageU" type="text" class="form-control" placeholder="居民年龄">
                            </div>
                            <div class="form-group">
                                <label for="Rnationality">民族</label>
                                <input id="Rnationality" name="rnationality" type="text" class="form-control"
                                       placeholder="请输入居民民族">
                                <span class="help-block">请填写：汉族、苗族等，或者直接填写"非汉族"，查询少数民族人数</span>

                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8">
                            <div class="form-group">
                                <label>受教育程度</label>
                                <div>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="redulevels[0]" value="大学本科"> 大学本科
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="redulevels[1]" value="大学专科和专科学校"> 大学专科和专科学校
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="redulevels[2]" value="中等专业学校中等技术学校"> 中等专业学校中等技术学校
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="redulevels[3]" value="技工学校"> 技工学校
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="redulevels[4]" value="高中"> 高中
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="redulevels[5]" value="初中"> 初中
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="redulevels[6]" value="小学"> 小学
                                    </label>
                                    <label class="checkbox-inline">
                                        <input type="checkbox" name="redulevels[7]" value="小学"> 文盲或半文盲
                                    </label>
                                </div>

                            </div>

                            <div class="form-group">
                                <label>户口类型</label>
                                <div>
                                    <label class="radio-inline">
                                        <input type="radio" name="rhrtype" value="城市户口"> 城市户口
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rhrtype" value="农村户口"> 农村户口
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>婚姻情况</label>
                                <div>
                                    <label class="radio-inline">
                                        <input type="radio" name="rismarried" value="已婚"> 已婚
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rismarried" value="非已婚"> 非已婚(未婚、丧偶、离异)
                                    </label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>住房</label>
                                <div>
                                    <label class="radio-inline">
                                        <input type="radio" name="rlivingstatus" value="自购"> 自购
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rlivingstatus" value="租房"> 租房
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rlivingstatus" value="合租"> 合租
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rlivingstatus" value="无房"> 无房
                                    </label>
                                </div>
                            </div>


                            <div class="form-group">
                                <label>健康状况</label>
                                <div>
                                    <label class="radio-inline">
                                        <input type="radio" name="rishealthy" value="已婚"> 健康
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rishealthy" value="非已婚"> 非健康（患病或残疾）
                                    </label>
                                </div>
                            </div>


                            <div class="form-group">
                                <label>人员类别</label>
                                <div>
                                    <label class="radio-inline">
                                        <input type="radio" name="rtype" value="学生"> 学生
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rtype" value="工人"> 工人
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rtype" value="农民"> 农民
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rtype" value="干部"> 干部
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="rtype" value="社会青年"> 社会青年
                                    </label>
                                </div>
                            </div>


                            <div class="form-group">
                                <label>就业情况</label>
                                <div>
                                    <label class="radio-inline">
                                        <input type="radio" name="risemployed" value="已就业"> 已就业
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="risemployed" value="待业"> 待业
                                    </label>
                                </div>
                            </div>


                            <button type="button" class="btn btn-default" onclick="Count()">查询</button>
                            <button type="reset" class="btn btn-default">重置</button>

                        </div>
                    </div>

                </form>
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


<!--js ajax 按条件查询 -->
<script type="text/javascript">
    function Count() {
        /*清空当前展示的内容*/
        $("#result_msg").html("");
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
            url: "${pageContext.request.contextPath}/resident/countResidentInCondition",
            data: jsonstr,
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (data) {
                var num = parseInt(data.num);
                if (data.num == "0" || total == 0) {
                    $("#result_msg").attr('style', 'text-align: center;color: orangered');
                    $("#result_msg").html("<h3>未查询满足该条件的居民信息</h3>");
                } else {
                    //$("#ConditonInfo").attr("hidden", "hidden");
                    //study json字符串的格式是——{"k1":"v1","k":2}
                    //study 注意两点，第一，json字符串必须使用双引号。第二，若kv的v是数字，就不要用双引号
                    var proportion = num / total;
                    $("#result_msg").attr('style', 'text-align: center;color: cornflowerblue');
                    $("#result_msg").html("<h3>符合该条件的居民有" + num + "人,占总人数的" + proportion + ":</h3>")
                }
            },
            error: function (xhr) {
                alert("出错了!succes未执行，出错信息是:");
                alert(xhr.responseText)
            }
        })
    }
</script>


<!-- js ajax 统计社区总人数 这里使用了全局变量，考虑到ajax嵌套后，回调函数执行顺序有点反常 -->
<!-- look ajax 中嵌套了 ajax ,二者回调函数的执行顺序是，先执行完外层的ajax的回调函数，再执行内层被调用的ajax的success函数 -->
<!-- look 为了解决这个调用顺序反常识的问题，我直接使用全局变量，默认执行js来完成响应功能 -->
<script>
    total = 0;
    $.ajax({
        type: "post",
        url: "${pageContext.request.contextPath}/resident/findTotal",
        dataType: "json",
        contentType: "application/json;charset=utf-8",
        success: function (data) {
            total = parseInt(data.num);
        },
        error: function (xhr) {
            alert("出错了!succes未执行，出错信息是:");
            alert(xhr.responseText)
        }
    })
</script>


<!--本js脚本目的是 选中单选框选中 可以取消选中-->
<script>

    document.body.onmousedown = function (event) {
        event = event || window.event;
        var target = event.target || event.srcElement;
        if (target.type === 'radio') {
            target.previousValue = target.checked;
        }
    }
    document.body.onclick = function (event) {
        event = event || window.event;
        var target = event.target || event.srcElement;
        if (target.type === 'radio') {
            if (target.previousValue) {
                target.checked = false;
            }
        }
    }
</script>


</body>


</html>
