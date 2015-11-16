<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/8
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
  String song = request.getParameter("song");
  String ge = request.getParameter("ge");
  out.println(song);
  out.println("<br/>");
  out.println(ge);
%>
</body>
</html>
