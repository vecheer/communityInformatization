<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/18
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ pager language="java" contentType="text/html; charset=UTF-8"
          pageEncoding="UTF-8" %>
<%@ pager import="java.util.*,com.org.mvcdemo.vo.*,com.org.mvcdemo.common.Pager" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery/jquery-1.9.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <title>产品管理</title>
</head>
<body>
<div class="container-fluid"
     style="padding-left: 0px; padding-right: 0px">
    <!-- 顶部Logo定义开始 -->
    <div class="row-fluid">
        <jsp:include pager="north.jsp" flush="true"/>
    </div>
    <!-- 顶部Logo定义结束 -->
    <div class="row-fluid">
        <!-- 左边导航条定义开始  -->
        <jsp:include pager="left.jsp" flush="true"/>
        <!-- 左边导航条定义结束-->
        <!-- 内容  -->
        <div class="col-md-10" style="margin-top: 20">
            <div class="row-fluid" align="left">
                <div style="float: left; margin-top: 2px; text-align: center;"
                ">
                <%
                    String search_name = "";
                    if (request.getAttribute("search_name") != null)
                        search_name = (String) request.getAttribute("search_name");
                %>
                <form name="search_form" action="SearchProductServlet" method="post">
                    <input type="text" id="search_name" name="search_name" value="<%= search_name%>"/>
                    <input type="submit" id="cmd_search" value="查询"/>
                </form>
            </div>
        </div>
        <div class="row-fluid">
            <div class="col-md-12">
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th>描述</th>
                        <th>价格</th>
                        <th>库存</th>
                        <th>图片</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <%
                        ArrayList<Product> productList = (ArrayList<Product>) request.getAttribute("productList");
                        for (Product p : productList) {
                    %>
                    <tr>
                        <td><%= p.getName() %>
                        </td>
                        <td><%= p.getNote() %>
                        </td>
                        <td><%= p.getPrice() %>
                        </td>
                        <td><%= p.getAmount() %>
                        </td>
                        <!-- 如果没有图片，则使用默认的图片 -->
                        <td><img src="pic/<%= p.getPic()==null?"default.jpg":p.getPic() %>" width=40px height=40px></td>
                        <td>
                            <a href="UpdateProductServlet?pid=<%= p.getPid()%>"><img alt="修改" src="img/new_post.png"
                                                                                     width=25px height=25px></a>
                            <a href="DeleteProductServlet?pid=<%= p.getPid()%>"><img alt="删除" src="img/delete.png"
                                                                                     width=20px height=20px></a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                    <!-- <c:forEach var="menu" items="${menuList }">
                                    <tr>
                                        <td><input type="checkbox" name="chk_id"
                                            value="${menu.id }" /></td>
                                        <td>${menu.id }</td>
                                        <td>${menu.name}</td>
                                        <td>${menu.url }</td>
                                        <td>${menu.parent_menu.name }</td>
                                        <td>${menu.status}</td>
                                    </tr>
                                </c:forEach> -->
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row-fluid" style="float: right">
            <%
                Pager pager = (Pager) request.getAttribute("pager");
                int currentPage = pager.getCurrentPage();
                int lastPage = pager.getTotalPages();
            %>
            <form id="pageform" name="pageform" action="SearchProductServlet" method="post">
                <input type="hidden" name="search_name" value="<%= search_name%>"/>
                <input type="hidden" name="currentPage" id="currentPage"/>
                <ul class="pager">
                    <li><a href="#" onclick="first()">首页</a></li>
                    <li><a href="#" onclick="previous()">上一页</a></li>
                    <li><a href="#" onclick="next()">下一页</a></li>
                    <li><a href="#" onclick="last()">尾页</a></li>
                </ul>
            </form>
            <script language="javaScript">
                function first() {
                    $("#currentPage").val(1);
                    $("#pageform").submit();
                }

                function previous() {
                    $("#currentPage").val(<%= currentPage==1?1:currentPage-1%>);
                    $("#pageform").submit();
                }

                function next() {
                    $("#currentPage").val(<%= currentPage==lastPage?lastPage:currentPage+1%>);
                    $("#pageform").submit();
                }

                function last() {
                    $("#currentPage").val(<%= lastPage%>);
                    $("#pageform").submit();
                }
            </script>
        </div>
    </div>
    <!-- 内容  -->
</div>
</div>
</body>
</html>