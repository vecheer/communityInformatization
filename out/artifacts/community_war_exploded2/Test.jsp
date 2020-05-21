<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html lang="en">
<head>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <script src="js/jquery.min.js"></script>
    <title>spring中使用json、ajax</title>


    <!--add IMask reference-->
    <script src="https://unpkg.com/imask"></script>

    <%--解决favicon.ico404的问题--%>
    <link href="favicon.ico" rel="shortcut icon">



    <%--解决favicon.ico404的问题--%>
    <link href="favicon.ico" rel="shortcut icon">
    <%--cdn方式
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap.min.css">
    <!-- 可选的Bootstrap主题文件(一般不用引入) -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/css/bootstrap-theme.min.css">
    <!-- jQuery文件，在bootstrap.min.js之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <!-- Bootstrap核心JavaScript文件 -->
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.3/js/bootstrap.min.js"></script>--%>

    <%--本地文件方式--%>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <title>Boots测试</title>


    <script type="text/javascript">
        $(function () {
            jQuery.support.cors = true;
            $("#btn").click(function () {

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
                alert(jsonstr);
                //-----------------------把form中的内容放到json串中-------------------------------
                $.ajax({
                    type:"post",
                    url:"${pageContext.request.contextPath}/log/logCheckAJAXTest",
                    data:jsonstr,
                    dataType:"json",
                    contentType:"application/json;charset=utf-8",
                    success:function(data){
                        console.log("***1***");
                        if (data.uname == "-1") {
                            alert("用户名或密码错误，请重新检查输入！");
                        } else {
                            alert("欢迎您!" + data.uname);
                            console.log("欢迎您!" + data.uname);
                            $("form").hide();
                            document.getElementById("logged_uname").innerHTML="欢迎您，" + data.uname;
                            //$("#logged_uname").html("欢迎您，" + data.uname)
                        }

                        alert("3");
                    },
                    error:function(xhr){
                        alert("出错了!succes未执行");
                        alert(xhr.responseText)
                    }
                })
            })
        })
    </script>

</head>
<body>

<form action="" id="userInfo">
    姓名: <input type="text" id="uname" name="uname">
    密码:<input type="text" id="upassword" name="upassword">
    <!--
    button默认的type是submit，如果就默认为submit，这里无法执行ajax的回调函数。
    当我把button改为其他标签就可以了，因为其他标签不是默认的submit，
    当然，我把button标签的type设置为普通的button，回调函数里面的方法就又都能执行了
    真他吗离谱
    -->
    <button id="btn" type="button">点击提交</button>
    <%--<input  id="btn" value="点击提交">--%>
</form>

<p id="logged_uname">

</p>




</body>
</html>
