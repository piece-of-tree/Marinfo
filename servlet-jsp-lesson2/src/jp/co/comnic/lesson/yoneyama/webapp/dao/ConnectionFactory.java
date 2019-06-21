package jp.co.comnic.lesson.yoneyama.webapp.dao;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionFactory {
	
	private static Context ctx;
	private static DataSource ds;
	
	private ConnectionFactory() {}

	public static Connection getConnection() throws NamingException, SQLException {
		
		if (ctx == null) {
			ctx = new InitialContext();
		}
		
		if (ds == null) {
			ds = (DataSource)ctx.lookup("java:comp/env/ds/mariadb/test");
		}
		
		return ds.getConnection();
	}
}
