<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/11
  Time: 23:18
  To change this template use File | Settings | File Templates.
  page指向该jsp文件，类似于this
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>page对象示例</title>
</head>
<body>
<%
  out.print("page对象字符串：" + page.toString());
  page.getClass();
  page.hashCode();
//  page.equals(obj); //用于判断是否与obj对象相等
%>
</body>
</html>
