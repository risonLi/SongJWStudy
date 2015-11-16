<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/9
  Time: 22:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  String userName = request.getParameter("userName");
  String password = request.getParameter("password");
  if (userName != null && password != null){  //登陆验证
    session.setAttribute("userName", userName); //在session中设置一个键值对
    response.setHeader("refresh", "2;URL=welcome.jsp"); //跳转文件
  }
%>
