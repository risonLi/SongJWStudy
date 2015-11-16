<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/8
  Time: 18:02
  To change this template use File | Settings | File Templates.
  封装了来自于客户端浏览器的各种信息
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request对象</title>
</head>
<body>

<form action="" method="post">
  <input type="text" name="userName" />
  <input type="submit" value="提交" />
</form>

请求方法名：<%= request.getMethod() %> <br/>
<%--getRequestURI用于获取请求的字符串，从请求的主机名之后的第一个字符开始到结束--%>
请求的资源：<%= request.getRequestURI() %>  <br/>
请求使用的协议：<%= request.getProtocol() %>  <br/>
请求的服务器IP：<%= request.getServerName() %> <br/>
请求的服务器端口：<%= request.getServerPort() %> <br/>
客户端的IP地址：<%= request.getRemoteAddr() %> <br/>
客户端的主机名：<%= request.getRemoteHost()%> <br/>
获取表单提交来的值：<%= request.getParameter("userName")%>

</body>
</html>
