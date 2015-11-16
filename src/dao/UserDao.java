package dao;

import entity.User;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by song on 2015/11/15.
 * DAO类
 * 封装了数据库访问和操作逻辑
 * 负责将数据库访问结果转换成DOT
 * 这里定义了一个DOA类的接口
 */
public interface UserDao {

    public void save(Connection conn, User user) throws SQLException;

    public void update(Connection conn, Long id, User user) throws SQLException;

    public void delete(Connection conn, User user) throws SQLException;
}
