package dao.impl;

import dao.UserDao;
import entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by song on 2015/11/15.
 */
public class UserDaoImpl implements UserDao {

    /**
     * 保存用户信息
     * @param conn
     * @param user
     * @throws SQLException
     */
    @Override
    public void save(Connection conn, User user) throws SQLException {
        //JDBC用来执行SQL查询语句的API之一，通过参数执行，?为占位符，代表要查询的参数
        PreparedStatement ps = conn.prepareCall(
                "INSERT INTO tb1_user (name, password, email) VALUES (?,?,?)");
        ps.setString(1, user.getName());    //1代表第一个问号
        ps.setString(2, user.getPassword());
        ps.setString(3, user.getEmail());
        ps.execute();   //执行
    }

    /**
     * 更新用户信息
     * @param conn
     * @param id
     * @param user
     * @throws SQLException
     */
    @Override
    public void update(Connection conn, Long id, User user) throws SQLException {
        String updateSql = "UPDATE tb1_user SET name=?, password=?, email=? WHERE id=?";
        PreparedStatement ps = conn.prepareStatement(updateSql);
        ps.setString(1, user.getName());
        ps.setString(2, user.getPassword());
        ps.setString(3, user.getEmail());
        ps.setLong(4, id);
        ps.execute();
    }

    /**
     * 删除用户信息
     * @param conn
     * @param user
     * @throws SQLException
     */
    @Override
    public void delete(Connection conn, User user) throws SQLException {
        PreparedStatement ps = conn.prepareStatement("DELETE FROM tb1_user WHERE id=?");
        ps.setLong(1, user.getId());
        ps.execute();
    }
}
