<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/11
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--指定异常处理文件--%>
<%@page errorPage="handle_error.jsp" %>
<html>
<head>
    <title>抛出异常</title>
</head>
<body>
<%
  int a = 1/0;
%>
</body>
</html>
