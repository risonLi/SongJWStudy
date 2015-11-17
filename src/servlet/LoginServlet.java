package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by song on 2015/11/17.
 * 登陆操作
 * LoginServlet 用于显示登陆后的信息
 * web/servlet/login.jsp 为登陆界面
 * web.xml中还需要进行配置
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);

        //获取req提交过来的表单内容
        String userName = req.getParameter("uname");
        String password = req.getParameter("upwd");
        System.out.println("用户名 =》 " + userName);
        System.out.println("密码 =》 " + password);
    }
}
