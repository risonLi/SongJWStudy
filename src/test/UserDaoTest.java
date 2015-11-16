package test;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import entity.User;
import util.ConnectionFactory;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by song on 2015/11/15.
 * 使用DAO
 * 执行前面的操作
 */
public class UserDaoTest {

    public static void main(String[] args){
        Connection conn = null;
        conn = ConnectionFactory.getInstance().makeConnection();
        try {
            conn.setAutoCommit(false);  //关闭事务的自动提交

            UserDao userDao = new UserDaoImpl();
            User rison = new User();    //创建一个用户实体
            rison.setName("rison");
            rison.setEmail("310774028@qq.com");
            rison.setPassword("123");

            userDao.save(conn, rison);  //执行数据库插入操作

            conn.commit();  //提交事务
        } catch (SQLException e) {
            e.printStackTrace();
            try {
                conn.rollback();    //如果有异常，则执行回滚操作
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
    }
}
