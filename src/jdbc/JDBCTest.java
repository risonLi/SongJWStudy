package jdbc;


import java.sql.*;

/**
 * Created by song on 2015/11/15.
 */
public class JDBCTest {
    public static void main(String[] args){
//        insert();
//        update();
        delete();
        /***************************基本查询方法*******************************/
        /*String sql = "select * from tb1_user";  //定义一条SQL语句
        Statement st = null;    //向数据库中发送要执行的SQL语句
        Connection conn = null; //当前的数据库连接
        ResultSet rs = null;    //代表结果集，数据库的返回结果

        try {
            //连接数据库，并获取数据
            Class.forName("com.mysql.jdbc.Driver"); //初始化mysqlJDBC的驱动程序
            //获取mysql数据库的连接
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_db", "root", "lys1988");
            st = conn.createStatement();
            rs = st.executeQuery(sql);

            while (rs.next()){
                System.out.print(rs.getInt("id") + " ");
                System.out.print(rs.getString("name") + " ");
                System.out.print(rs.getString("password") + " ");
                System.out.print(rs.getString("email") + " ");
                System.out.println();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                //资源清理
                rs.close();
                st.close();
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }*/
        /********************************************************************/
    }

    //获取数据库连接
    public static Connection getConnection(){
        Connection conn = null; //当前的数据库连接
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_db", "root", "lys1988");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    //插入数据库方法
    public static void insert(){
        Connection conn = getConnection();

        String sql = "insert into tb1_user(name, password, email)" +
                    "values('Sabrina', '123', '763576478@qq.com')";
        try {
            Statement st = conn.createStatement();
            int count = st.executeUpdate(sql);  //获取操作后影响的行数
            System.out.println("向用户表中插入了" + count + "条记录");
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //更新数据库
    public static void update(){
        Connection conn = getConnection();

        String sql = "UPDATE tb1_user SET email='310774028@qq.com' WHERE name = 'rison'";
        try {
            Statement st = conn.createStatement();
            int count = st.executeUpdate(sql);  //获取操作后影响的行数
            System.out.println("向用户表中更新了" + count + "条记录");
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void delete(){
        Connection conn = getConnection();

        String sql = "DELETE FROM tb1_user WHERE name='rison'";
        try {
            Statement st = conn.createStatement();
            int count = st.executeUpdate(sql);  //获取操作后影响的行数
            System.out.println("从用户表中删除了" + count + "条记录");
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
