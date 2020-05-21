<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="com.vecheer.domain.Pager" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.vecheer.entity.Communist" %>
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
                        <li><a href="func_communistInfo_save.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">添加党员信息</a>
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
                        <li><a href="func_amInfo_query.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">查询积极分子信息</a>
                        </li>
                        <li><a href="func_amInfo_update.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">修改积极分子信息</a>
                        </li>
                        <li><a href="func_amInfo_save.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">添加积极分子信息</a>
                        </li>
                        <li><a href="func_amInfo_delete.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">删除积极分子信息</a>
                        </li>
                    </ul>
                </div>

                <div class="sidebar-menu list-group-item list-group-item-info">
                    <a id="ceMenu" href="#ce_menu"
                       class="nav-header menu-first collapsed list-group-item list-group-item-info"
                       data-toggle="collapse" style="font-size: 1.2em"> 党建活动信息</a>
                    <ul id="ce_menu" class="nav nav-list collapse menu-second">
                        <li><a href="func_ceInfo_query.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">查询党建活动信息</a>
                        </li>
                        <li><a href="func_ceInfo_update.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">修改党建活动信息</a>
                        </li>
                        <li><a href="func_ceInfo_save.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">添加党建活动信息</a>
                        </li>
                        <li><a href="func_ceInfo_delete.jsp" class="list-group-item list-group-item-info" style="font-size: 0.8em">删除党建活动信息</a>
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
                    <h2>党建信息查询与管理</h2>
                    <p>您可以在此查看本社区党建信息，如果您是管理员，您可以对社区户籍信息进行修改</p>
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
                            String cjoinbranch = "";

                            if (request.getAttribute("cjoinbranch") != null)
                                cjoinbranch = (String) request.getAttribute("cjoinbranch");

                        %>
                        <form name="query_form"
                              action="${pageContext.request.contextPath}/communist/findCommunistByBranch" method="post">
                            <!--
                            look 这个地方注意一下，一开始的时候，我在input的value里，写的是value="<%= cjoinbranch %> "
                            look 表达式外面，多打了个一个空格，结果就无法赋值进去了，placeholder也显示，查询也是查不到
                            -->
                            <input type="text"  name="cjoinbranch" value="<%= cjoinbranch %>" placeholder="请输入支部名称"/>
                            <input type="submit"  value="查询"/>
                        </form>
                    </div>
                </div>


                <!--查询结果-->
                <div class="col-sm-12">

                    <!--查询结果提示,如果结果为0，就显示此信息-->
                    <%
                        //判断是否有提示信息需要显示
                        if (request.getAttribute("communists") != null) {
                            if (((List<Communist>) request.getAttribute("communists")).size() == 0) {
                    %>
                    <div id="result_msg" style="text-align: center;color: orangered"><h2>没有查询到相关信息</h2></div>
                    <%
                            }
                        }
                    %>


                    <!--结果展示表, 如果有返回列表，就输出-->
                    <%
                        //判断是否显示结果表
                        if (request.getAttribute("communists") != null) {
                            if (((List<Communist>) request.getAttribute("communists")).size() != 0) {
                    %>
                    <div id="result_table" class="table-responsive" style="overflow:auto;border: 1px">
                        <table class="table table-hover" style="text-align: center">
                            <caption style="font-size: 1.5em;text-align: left">党员</caption>
                            <thead id="result_table_head">
                            <tr>
                                <th colspan="2">操作</th>
                                <th>党员编号</th>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>民族</th>
                                <th>籍贯</th>
                                <th>身份证号码</th>
                                <th>联系方式</th>
                                <th>家庭住址</th>
                                <th>出生年月</th>
                                <th>单位职务</th>
                                <th>任职时间</th>
                                <th>所在支部</th>
                                <th>入党推荐人</th>
                                <th>申请入党时间</th>
                                <th>入党时所在支部</th>
                                <th>是否按期转正</th>
                                <th>由何处转入</th>
                                <th>加入本支部时间</th>
                                <th>每月缴纳党费</th>
                                <th>受教育程度</th>
                                <th>收到奖惩信息</th>
                            </tr>
                            </thead>
                            <tbody id="result_table_body">
                            <%
                                ArrayList<Communist> communists = (ArrayList<Communist>) request.getAttribute("communists");
                                for (Communist c : communists) {
                            %>
                            <tr>
                                <!-- look 这里的超链接默认从根目录下访问，那肯定是找不到的，必须得写全路径名称。不然报错404 -->
                                <td><a href="${pageContext.request.contextPath}/func/PartyBuilding/func_communistInfo_update.jsp?cid=<%= c.getCid()%>&
                                &cname=<%= c.getCname() %>&
                                &csex=<%= c.getCsex() %>&
                                &cnationality=<%= c.getCnationality() %>&
                                &cnativeplace=<%= c.getCnativeplace() %>&
                                &cidnum=<%= c.getCidnum() %>&
                                &cphonenum=<%= c.getCphonenum() %>&
                                &caddress=<%= c.getCaddress() %>&
                                &cbirthday=<%= c.getCbirthday() %>&
                                &cduty=<%= c.getCduty() %>&
                                &cworkentrytime=<%= c.getCworkentrytime() %>&
                                &cjoinbranch=<%= c.getCjoinbranch() %>&
                                &creferrer=<%= c.getCreferrer() %>&
                                &cjointime=<%= c.getCjointime() %>&
                                &cjoinorg=<%= c.getCjoinorg() %>&
                                &cjoinok=<%= c.getCjoinok() %>&
                                &cjoinfrom=<%= c.getCjoinfrom() %>&
                                &cjointhisdate=<%= c.getCjointhisdate() %>&
                                &cmoney=<%= c.getCmoney() %>&
                                &cedu=<%= c.getCedu() %>&
                                &crp=<%= c.getCrp() %>" style="text-decoration: none">修改</a>
                                </td>

                                <td><a href="${pageContext.request.contextPath}/func/PartyBuilding/func_communistInfo_delete.jsp?cidnum=<%= c.getCidnum()%>"
                                       style="text-decoration: none" >删除</a>
                                </td>


                                <td><%= c.getCid() %></td>
                                <td><%= c.getCname() %></td>
                                <td><%= c.getCsex() %></td>
                                <td><%= c.getCnationality() %></td>
                                <td><%= c.getCnativeplace() %></td>
                                <td><%= c.getCidnum() %></td>
                                <td><%= c.getCphonenum() %></td>
                                <td><%= c.getCaddress() %></td>
                                <td><%= c.getCbirthday() %></td>
                                <td><%= c.getCduty() %></td>
                                <td><%= c.getCworkentrytime() %></td>
                                <td><%= c.getCjoinbranch() %></td>
                                <td><%= c.getCreferrer() %></td>
                                <td><%= c.getCjointime() %></td>
                                <td><%= c.getCjoinorg() %></td>
                                <td><%= c.getCjoinok() %></td>
                                <td><%= c.getCjoinfrom() %></td>
                                <td><%= c.getCjointhisdate() %></td>
                                <td><%= c.getCmoney() %></td>
                                <td><%= c.getCedu() %></td>
                                <td><%= c.getCrp() %></td>
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
                    <form id="pageform" name="pageform" action="${pageContext.request.contextPath}/communist/findCommunistByBranch" method="post">
                        <!--直接提交本表单，本表单是隐藏的 -->
                        <input type="hidden" name="cjoinbranch" value="<%=cjoinbranch%>"/>

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
    $("#cMenu").click();
    $("#aMenu").click();
    $("#ceMenu").click();
</script>





</body>


</html>
