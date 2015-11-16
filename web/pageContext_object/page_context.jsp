<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/12
  Time: 0:00
  To change this template use File | Settings | File Templates.
  是前面对象的大集合，引用它可以访问所有的JSP内置对象
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext对象示例</title>
</head>
<body>
<%
  JspWriter myOut = pageContext.getOut(); //获取内置对象
  myOut.print("hello world!");  //功能和out对象相同
  myOut.print("<br/>");

  //通过pageContext将键值对保存到SESSION对象中(还可以保存到page\request\application)
  pageContext.setAttribute("rison", "song", pageContext.SESSION_SCOPE);
  String value = session.getAttribute("rison").toString();
  out.print(value);
  out.print("<br/>");
%>
</body>
</html>
