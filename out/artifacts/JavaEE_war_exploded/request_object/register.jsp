<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/8
  Time: 18:32
  To change this template use File | Settings | File Templates.
  测试表单提交数组时request的处理方法
  表单录入界面
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>录入表单信息</title>
</head>
<body>

<form action="do_register.jsp" method="post">
  用户名：<input type="text" name="userName"/> <br/>
  技能：
  <input type="checkbox" name="skills" value="java"/>java
  <input type="checkbox" name="skills" value="css"/>css
  <input type="checkbox" name="skills" value="javascript"/>JS
  <input type="checkbox" name="skills" value="html"/>html
  <br/>
  <input type="submit" value="提交"/>
  <input type="reset" value="重置"/>
</form>

</body>
</html>
