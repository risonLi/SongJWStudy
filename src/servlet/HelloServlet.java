package servlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by song on 2015/11/16.
 * servlet框架结构
 */
public class HelloServlet extends HttpServlet {

    //只有在init调用后servlet才会开始执行，servlet整个生命周期中init只会执行一次
    @Override
    public void init() throws ServletException {
        System.out.println("---------------init without paramenters-------------------");
        super.init();   //这个无需调用，可以注释掉
    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        System.out.println("---------------init with paramenters-------------------");
        super.init(config); //这个必须调用
    }

    //用于处理客户端的请求，浏览器客户端每次请求都会调用service
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("---------------service-------------------");
        PrintWriter pw = resp.getWriter();  //获取一个输出流
        pw.println("hello world!"); //向浏览器输出内容
        pw.close();
    }

    //结束servlet，只会调用一次。
    //只有当servlet容器销毁servlet实例的时候才会调用，关闭服务器或关闭客户端都不会调用
    @Override
    public void destroy() {
        System.out.println("---------------destory-------------------");
        super.destroy();
    }
}
