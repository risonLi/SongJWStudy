<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/9
  Time: 23:45
  To change this template use File | Settings | File Templates.
  config的配置信息在web.xml中
  配置好后，在这里可以直接获取配置的数据
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>config对象示例</title>
</head>
<body>
用户名：<%= config.getInitParameter("username") %> <br/>
密码：<%= config.getInitParameter("password")%>
</body>
</html>
