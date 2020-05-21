<%--
  Created by IntelliJ IDEA.
  User: Vecheer
  Date: 2020/5/8
  Time: 9:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>居民个人信息</title>
</head>
<body>
    <a href="resident/findResidentByRidnum?ridnum=888888196088888888">点击查看身份证号为888888196088888888的居民个人信息</a>
    <br>
    <h3>居民个人信息查询</h3>
    <form action="resident/findResidentInCondition" method="post">
        性别:<input type="text" name="rsex" /><br>
        年龄:<input type="text" name="rage"/><br>
        民族:<input type="text" name="rnationality"/><br>
        受教育程度:<input type="text" name="redulevel"/><br>
        户口类型:<input type="text" name="rhrtype"/><br>
        婚姻情况:<input type="text" name="rismarried"/><br>
        住房情况:<input type="text" name="rlivingstatus"/><br>
        健康情况:<input type="text" name="rishealthy"/><br>
        残疾类型:<input type="text" name="rdisabilitytype"/><br>
        单位性质:<input type="text" name="rcompanytype"/><br>
        人员类别:<input type="text" name="rtype"/><br>
        就业情况:<input type="text" name="risemployed"/><br>
        <input type="submit" value="填完啦">
    </form>
    <br>
    <h3>人数统计</h3>
    <form action="resident/countResidentInCondition" method="post">
        性别:<br>
        <input type="radio" name="rsex" value="男"/>男
        <input type="radio" name="rsex" value="男"/>女<br>
        年龄在<input type="text" name="rageL" style="width:25px;"/>岁到<input type="text" name="rageU" style="width:25px;"/>岁之间<br>
        民族:<input type="text" name="rnationality" style="width:60px;"/><br>
        受教育程度:<br>
        <input type="checkbox" name="redulevels[0]" value="大学本科"/>大学本科<br>
        <input type="checkbox" name="redulevels[1]" value="大学专科和专科学校"/>大学专科和专科学校<br>
        <input type="checkbox" name="redulevels[2]" value="中等专业学校中等技术学校"/>中等专业学校中等技术学校<br>
        <input type="checkbox" name="redulevels[3]" value="技工学校"/>技工学校<br>
        <input type="checkbox" name="redulevels[4]" value="高中"/>高中<br>
        <input type="checkbox" name="redulevels[5]" value="初中"/>初中<br>
        <input type="checkbox" name="redulevels[6]" value="小学"/>小学<br>
        <input type="checkbox" name="redulevels[7]" value="文盲或半文盲"/>文盲或半文盲<br>
        户口类型:<br>
        <input type="radio" name="rhrtype" value="城市户口"/>城市户口
        <input type="radio" name="rhrtype" value="农村户口"/>农村户口<br>
        婚姻情况:<br>
        <input type="radio" name="rismarried" value="已婚"/>已婚
        <input type="radio" name="rismarried" value="已婚"/>非已婚(未婚、丧偶、离异)<br>
        住房情况:<br>
        <input type="radio" name="rlivingstatus" value="自购"/>自购
        <input type="radio" name="rlivingstatus" value="租房"/>租房
        <input type="radio" name="rlivingstatus" value="合租"/>合租
        <input type="radio" name="rlivingstatus" value="无房"/>无房<br>
        健康情况:<br>
        <input type="radio" name="rishealthy" value="健康"/>健康
        <input type="radio" name="rishealthy" value="非健康(患疾病或残疾)"/>非健康(患疾病或残疾)<br>
        单位性质:<input type="text" name="rcompanytype"/><br>
        人员类别:<br>
        <input type="radio" name="rtype" value="学生"/>学生
        <input type="radio" name="rtype" value="工人"/>工人
        <input type="radio" name="rtype" value="农民"/>农民
        <input type="radio" name="rtype" value="干部"/>干部
        <input type="radio" name="rtype" value="社会青年"/>社会青年<br>
        就业情况:<br>
        <input type="radio" name="risemployed" value="已就业"/>已就业
        <input type="radio" name="risemployed" value="待业"/>待业<br>
        <input type="submit" value="填完啦">

        <script>
            // 本js脚本目的是 选中单选框选中 可以取消选中
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

    </form>
    <br>
    <h3>添加居民个人信息</h3>
   <form action="resident/saveResident" method="post">
        姓名:<input type="text" name="rname" /><br>
        年龄:<input type="text" name="rage" /><br>
        身份证类型:<input type="text" name="ridtype" /><br>
        身份证号码:<input type="text" name="ridnum" /><br>
        性别:<input type="text" name="rsex" /><br>
        民族:<input type="text" name="rnationality"/><br>
        出生日期:<input type="text" name="rbirthday"/><br>
        受教育程度:<input type="text" name="redulevel"/><br>
        户口类型:<input type="text" name="rhrtype"/><br>
        婚姻情况:<input type="text" name="rismarried"/><br>
        计划生育情况:<input type="text" name="rfpstatus"/><br>
        住房情况:<input type="text" name="rlivingstatus"/><br>
        与户主关系:<input type="text" name="rrelationwzowner"/><br>
        房屋用途:<input type="text" name="rhouseuse"/><br>
        健康情况:<input type="text" name="rishealthy"/><br>
        残疾类型:<input type="text" name="rdisabilitytype"/><br>
        单位性质:<input type="text" name="rcompanytype"/><br>
        人员类别:<input type="text" name="rtype"/><br>
        就业情况:<input type="text" name="risemployed"/><br>
        <input type="submit" value="填完啦">
    </form>
    <br>
    <a href="resident/updateResident?ridnum=123456199878789090&rname=吴三宝">更新身份证为123456199878789090的居民信息</a>
    <br>
    <a href="resident/deleteResident?ridnum=123456199878789090">删除身份证为123456199878789090的居民信息</a>
</body>
</html>
