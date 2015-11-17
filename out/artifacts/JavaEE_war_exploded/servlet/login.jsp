<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/17
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>
<%--创建一个登陆信息表单--%>
<form action="<%= request.getContextPath()%>/loginServlet" method="post">
  userName: <input type="text" name="uname"/> <br/>
  password: <input type="password" name="upwd"/> <br/>
  <input type="submit" value="Login"/>
  <input type="reset" value="Reset"/>
</form>

</body>
</html>
