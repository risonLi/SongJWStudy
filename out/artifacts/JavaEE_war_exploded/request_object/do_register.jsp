<%--
  Created by IntelliJ IDEA.
  User: song
  Date: 2015/11/8
  Time: 18:32
  To change this template use File | Settings | File Templates.
  表单处理界面
--%>
<%
    String userName = request.getParameter("userName");
    String skills = "";
    String[] skillArr = request.getParameterValues("skills"); //获取用户提交的技能数组
    //将技能数组拼装成一个字符串
    if (skillArr != null && skillArr.length > 0) {
        for (String skill : skillArr) {
            skills = skills + skill + " ";
        }
    }
    //将名字和技能字符串保存到request对象中
    request.setAttribute("userName", userName);
    request.setAttribute("skills", skills);
%>
<%--跳转到welcome页面--%>
<jsp:forward page="welcome.jsp"></jsp:forward>