<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/9
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session示例</title>
</head>
<body>
session的唯一标识符：<%= session.getId() %> <br/>
session的创建时间：<%= new Date(session.getCreationTime()).toString() %> <br/>
session的最后访问时间：<%= new Date(session.getLastAccessedTime()).toString() %> <br/>
session的失效时间：<%= session.getMaxInactiveInterval() %> <br/>
<%--session的失效时间可以在web.xml配置中修改--%>
</body>
</html>
