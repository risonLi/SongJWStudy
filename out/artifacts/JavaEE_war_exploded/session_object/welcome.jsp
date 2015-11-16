<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/9
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆后的欢迎页面</title>
</head>
<body>
  <%--获取userName--%>
  <% if (session.getAttribute("userName") != null){ %>
  <%--有则输出欢迎信息--%>
  欢迎：<%= session.getAttribute("userName") %>
  <a href="logout.jsp">注销</a> <br/>
  <%--没有则输出请登录的信息--%>
  <% }else { %>
  请先登录
  <a href="login.jsp">登陆</a>
  <% } %>

  <%--判断session是否是新创建的--%>
  <% if (session.isNew()) { %>
  <br/>
  欢迎新用户！
  <% }else{ %>
  欢迎老用户！
  <% } %>

</body>
</html>
