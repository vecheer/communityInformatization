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
                        <li><a href="func_ResidentInfo_conditionCount.jsp" class="list-group-item list-group-item-info"
                               style="font-size: 0.8em">居民个人信息条件统计</a>
                        </li>
                        <li><a href="#" class="list-group-item list-group-item-info"
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
                <form role="form" id="ResidentInfo" style="white-space:nowrap;">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="Rname" class="control-label">姓名</label>
                                <input id="Rname" name="rname" type="text" class="form-control" placeholder="居民姓名">
                            </div>
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
                                <label>证件类型</label>
                                <select class="form-control" name="ridtype">
                                    <option value="中华人民共和国居民身份证">中华人民共和国居民身份证</option>
                                    <option value="中华人民共和国居民临时身份证">中华人民共和国居民临时身份证</option>
                                    <option value="中华人民共和国来往港澳通行证">中华人民共和国来往港澳通行证</option>
                                    <option value="大陆居民往来台湾通行证">大陆居民往来台湾通行证</option>
                                    <option value="中华人民共和国护照">中华人民共和国护照</option>
                                </select>
                            </div>


                            <div class="form-group">
                                <label for="Ridnum">证件号码</label>
                                <input id="Ridnum" name="ridnum" type="text" class="form-control"
                                       placeholder="请填写有效证件的号码">
                            </div>

                            <div class="form-group">
                                <label for="Rbirthday">出生年月</label>
                                <input id="Rbirthday" name="rbirthday" type="text" class="form-control"
                                       placeholder="请填写：19xx年x月">
                            </div>

                            <div class="form-group">
                                <label>证件类型</label>
                                <select class="form-control" name="redulevel">
                                    <option value="大学本科">大学本科</option>
                                    <option value="大学专科和专科学校">大学专科和专科学校</option>
                                    <option value="中等专业学校中等技术学校">中等专业学校中等技术学校</option>
                                    <option value="技工学校">技工学校</option>
                                    <option value="高中">高中</option>
                                    <option value="高中">初中</option>
                                    <option value="高中">小学</option>
                                    <option value="高中">文盲或半文盲</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>户口类型</label>
                                <select class="form-control" name="rhrtype">
                                    <option value="城市户口">城市户口</option>
                                    <option value="农村户口">农村户口</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>婚姻状况</label>
                                <select class="form-control" name="rismarried">
                                    <option value="未婚">未婚</option>
                                    <option value="已婚">已婚</option>
                                    <option value="离异">离异</option>
                                    <option value="丧偶">丧偶</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="Rfpstatus">生育情况</label>
                                <input id="Rfpstatus" name="rfpstatus" type="text" class="form-control"
                                       placeholder="请输入居民的生育情况">
                                <span class="help-block">请填写：未婚未育、已婚未育、已育1儿、已育2儿1女等</span>
                            </div>

                            <div class="form-group">
                                <label>住房情况</label>
                                <select class="form-control" name="rlivingstatus">
                                    <option value="自购">自购</option>
                                    <option value="租房">租房</option>
                                    <option value="合租">合租</option>
                                    <option value="无房">无房</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="Rrelationwzowner">与户主关系</label>
                                <input id="Rrelationwzowner" name="rrelationwzowner" type="text" class="form-control"
                                       placeholder="请输入与户主的法律关系">
                                <span class="help-block">请填写：户主、户主的妻子、户主的父亲等</span>
                            </div>

                            <div class="form-group">
                                <label>房屋使用性质</label>
                                <select class="form-control" name="rhouseuse">
                                    <option value="未婚">未婚</option>
                                    <option value="已婚">已婚</option>
                                    <option value="离异">离异</option>
                                    <option value="丧偶">丧偶</option>
                                </select>
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
                                <span class="help-block">请填写：非残疾、几类残疾（按具体情况填写）</span>
                            </div>

                            <div class="form-group">
                                <label for="Rcompanytype">单位性质</label>
                                <input id="Rcompanytype" name="rcompanytype" type="text" class="form-control"
                                       placeholder="请输入居民的单位性质">
                                <span class="help-block">请填写：国营、私营、无等，按具体情况填写</span>
                            </div>
                            <div class="form-group">
                                <label>人员类别</label>
                                <select class="form-control" name="rtype">
                                    <option value="学生">学生</option>
                                    <option value="工人">工人</option>
                                    <option value="农民">农民</option>
                                    <option value="干部">干部</option>
                                    <option value="社会青年">社会青年</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>就业情况</label>
                                <select class="form-control" name="risemployed">
                                    <option value="已就业">已就业</option>
                                    <option value="待业">待业</option>
                                    <option value="无">无</option>
                                </select>
                                <span class="help-block">未成年或学生请选择"无"</span>
                            </div>
                            <button type="button" class="btn btn-default" onclick="update()">修改</button>
                            <button type="reset" class="btn btn-default">重新填写</button>

                        </div>
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
    function update() {
        /*清空当前展示的内容*/
        $("#result_msg").html("");
        jQuery.support.cors = true;

        //-----------------------把form中的内容放到json串中-------------------------------
        var formInfo = $("#ResidentInfo").serializeArray();
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
            url: "${pageContext.request.contextPath}/resident/updateResident",
            data: jsonstr,
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (data) {
                //就算值传递一个kv，json仍然是个对象
                if (data.msg == "success") {
                    $("#msg").html("<h3 style=\"color:lightgreen\">提示:该居民的信息已成功修改!</h3>");
                    $("#nDpartmentInfo").attr("hidden", "hidden");
                } else {
                    $("#msg").html("<h3 style=\"color:orangered\">提示:没找到该居民的信息!请检查输入的身份证号码</h3>");
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
