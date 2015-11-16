<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/9
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页面访问计数器</title>
</head>
<body>
<%
  //从application对象中获取计数值对象
  Object obj = application.getAttribute("counter");
  //判断是否为空
  if (obj == null){
    //如果为空，就是第一次访问，则将application中的counter值设置为1
    application.setAttribute("counter", new Integer(1));  //将一个键值对保存到application对象中（key是字符串，value是java对象）
    out.println("该页面被访问了1次 <br/> ");  //输出该页面被访问了1次
  }else{  //如果不为空
    //将获取的counter计数值对象转换为int型
    int counterValue = Integer.parseInt(obj.toString());
    counterValue++;
    out.println("该页面被访问了" + counterValue + "次<br/>");
    //将增加后的值保存到counter中
    application.setAttribute("counter", counterValue);  //counterValue会被自动转换为Integer对象
  }
%>
</body>
</html>
