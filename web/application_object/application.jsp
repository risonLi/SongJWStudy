<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/9
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>application对象示例</title>
</head>
<body>
服务器信息：<%= application.getServerInfo() %> <br/>
应用名称：<%= application.getServletContextName() %> <br/>
主机名称：<%= application.getVirtualServerName() %> <br/>
</body>
</html>
