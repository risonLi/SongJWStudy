<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/9
  Time: 22:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  session.invalidate(); //清除session对象
  response.setHeader("refresh", "2;URL=welcome.jsp"); //跳转到welcome.jsp文件
%>
