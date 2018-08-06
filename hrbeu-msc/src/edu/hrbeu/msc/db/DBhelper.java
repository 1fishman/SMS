package edu.hrbeu.msc.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//用于获取数据库连接
public class DBhelper {

	public static final String URL = "jdbc:mysql://127.0.0.1:3306/msc";
	public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	public static final String USERNAME = "root";
	public static final String PASSWORD = "root";
	
	public static Connection getConnection() throws ClassNotFoundException,SQLException{
		Class.forName(DRIVER_CLASS);//获取数据库驱动类
		return DriverManager.getConnection(URL,USERNAME,PASSWORD);
	}
}
