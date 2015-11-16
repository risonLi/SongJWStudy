package test;

import util.ConnectionFactory;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by song on 2015/11/15.
 */
public class ConnectionFactoryTest {

    public static void main(String[] args) throws SQLException {
        ConnectionFactory cf = ConnectionFactory.getInstance();

        Connection conn = cf.makeConnection();

        System.out.println(conn.getAutoCommit());
    }
}
