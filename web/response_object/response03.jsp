<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/8
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>response对象示例3</title>
</head>
<body>
<%
  //Cookie是存储在浏览器中的一小段纯文本信息，由服务器发送到浏览器。
  //当浏览器再次访问该网站的时候，浏览器会将请求的网址和该cookie一起提交给服务器。
  //服务器检查该cookie来识别用户状态。
  Cookie myCookie = new Cookie("rison", "liyusong");  //创建一个cookie对象，键和值
  myCookie.setMaxAge(3600); //设置cookie的存活时间为3600s
  response.addCookie(myCookie); //使用response的addCookie来设置cookie
%>
</body>
</html>
