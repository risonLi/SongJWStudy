<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/11
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page isErrorPage="true" %>
<html>
<head>
    <title></title>
</head>
<body>
异常描述信息： <br/>
<%
  out.print(exception.getMessage());
%>
<br/>

exception对象的字符串描述： <br/>
<%
  out.print(exception.toString());
%>

在IDE的output窗口中打印，浏览器中看不到，可以根据这个追踪到错误的地方
<%
  exception.printStackTrace();
%>
</body>
</html>
