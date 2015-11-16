<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/9
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆表单</title>
</head>
<body>
  <form action="do_login.jsp" method="post">
    userName: <input type="text" name="userName" />
    password: <input type="password" name="password"/>
    <input type="submit" value="提交"/>
    <input type="reset" value="重置"/>
  </form>
</body>
</html>
