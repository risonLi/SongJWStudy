<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/8
  Time: 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--forward为域名重定向指令，浏览器输入的是该路径，但显示的是forward指定的forward_test.jsp里的内容--%>
<%--向forward_test.jsp中传递两个参数--%>
<jsp:forward page="forward_test.jsp">
  <jsp:param name="song" value="Rison"></jsp:param>
  <jsp:param name="ge" value="哥"></jsp:param>
</jsp:forward>
<html>
<head>
    <title></title>
</head>
<body>
这是index.jsp
</body>
</html>
