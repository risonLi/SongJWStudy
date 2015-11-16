<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/8
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息展示页面</title>
</head>
<body>
信息展示页面 <br/> <br/>
用户名：<%= request.getAttribute("userName")%>  <br/>
技能：<%= request.getAttribute("skills")%>
</body>
</html>
