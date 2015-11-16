<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/8
  Time: 18:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>response对象示例01</title>
</head>
<body>
<%
  //设置头信息，Cache-Control用于设置网页数据的缓存策略，no-cache表示数据内容不会被存储
  response.setHeader("Cache-Control", "no-cache");
  response.setIntHeader("Refresh", 2);  //让网页每隔2s刷新一次
  out.println("date is " + new java.util.Date().toString() + "<br/>");
%>
</body>
</html>
