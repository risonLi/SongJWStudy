<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/8
  Time: 17:37
  To change this template use File | Settings | File Templates.
  JSP内置对象测试--out
  out除了输出各种对象到浏览器，还负责缓冲区的管理
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--这里out的默认缓冲区大小为8kb，现在将它修改为10kb--%>
<%@ page buffer="10kb" %>
<html>
<head>
    <title>out测试</title>
</head>
<body>

  <%
    out.println("song");  //这里的换行无法显示在浏览器中
    out.print("ge");
    out.newLine();  //这里的换行同样无法显示在浏览器中
    out.print("<br/>"); //这里的换行可以显示在浏览器中
    out.flush();  //服务器强制刷新输出缓冲区里的数据（手动让缓冲区里的数据输出到浏览器，默认已经为true）
    out.clearBuffer();  //用于清空缓冲区中的数据（该方法不会抛出异常）
    out.clear();  //清空缓冲区的数据，如果之前调用了flush，那么该方法会抛出异常
    out.print("获取当前缓冲区大小：" + out.getBufferSize());
    out.print("<br/>");
    out.print("当前缓冲区剩余字节数目：" + out.getRemaining());
  %>

</body>
</html>
