package util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Created by song on 2015/11/15.
 * 数据库连接类：调用了数据库配置文件
 */
public class ConnectionFactory {

    private static String driver;
    private static String dburl;
    private static String user;
    private static String password;

    private static Connection conn;

    //可以保证在程序的运行期间只有一个ConnectionFactory的实例存在
    private static final ConnectionFactory factory = new ConnectionFactory();

    /*******************读取数据库配置文件dbconfig.properties中的内容**********************/
    //使用静态代码块，用于初始化类，可以对类的属性进行赋值
    //在加载类的时候执行，静态代码块只会执行一次
    static {
        Properties prop = new Properties();
        //读取属性文件中的内容到输入流中
        InputStream in = ConnectionFactory.class.getClassLoader().getResourceAsStream("dbconfig.properties");
        try {
            prop.load(in);  //加载属性文件中的键值对
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("---------------配置文件读取错误--------------");
        }
        //读取属性文件中的值
        driver = prop.getProperty("driver");
        dburl = prop.getProperty("dburl");
        user = prop.getProperty("user");
        password = prop.getProperty("password");
    }
    /******************************************************************************/

    private ConnectionFactory(){

    }

    public static ConnectionFactory getInstance(){
        return factory;
    }

    public Connection makeConnection(){
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(dburl, user, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }
}
