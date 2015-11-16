package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by song on 2015/11/15.
 */
public class TransactionTest {

    public static void main(String[] args){
        Connection conn = null;
        conn = getConnection();
        try {
            conn.setAutoCommit(false);  //禁止事务的自动提交
            //这两条插入语句如果有一条产生了异常无法插入，那么可以保证另一条也不会插入数据库
            insertUserData(conn);
            insertAddressData(conn);

            conn.commit();  //提交事务
        } catch (SQLException e) {
            System.out.println("---------------捕获到SQL异常----------------");
            e.printStackTrace();
            try {
                conn.rollback();    //捕获到SQL异常后回滚事务
                System.out.println("---------------回滚事务成功--------------");
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }finally {
            try {
                if (conn != null){
                    conn.close();   //关闭数据库连接
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static Connection getConnection(){
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_db", "root", "lys1988");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void insertUserData(Connection conn) throws SQLException {
        String sql = "insert into tb1_user(id, name, password, email)" +
                    "values (10, 'rison', '123', 'rison@qq.com')";
        Statement st = conn.createStatement();
        int count = st.executeUpdate(sql);
        System.out.println("向用户表中插入了" + count + " 条记录");
    }

    public  static void insertAddressData(Connection conn) throws SQLException {
        //这里主键为1的数据已经存在，会导致无法插入
        String sql = "INSERT INTO tb1_address(id, city, country, user_id)" +
                    "VALUES (1, 'shenzhen', 'china', '10')";
        Statement st = conn.createStatement();
        int count = st.executeUpdate(sql);
        System.out.println("向地址表中插入了" + count + " 条记录");
    }
}
