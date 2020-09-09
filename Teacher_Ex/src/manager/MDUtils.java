package manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class MDUtils {
private static final String URL="jdbc:mysql://localhost:3306/exam?useUnicode=true&characterEncoding=UTF-8&useSSL=true";
private static final String USER="root";
private static final String PASSWORD="199993";

private MDUtils() {}
static {
	try {
		Class.forName("com.mysql.jdba.Driver");
	} catch (ClassNotFoundException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
}
public static Connection getConnection()
{
	Connection conn=null;
	try {
		conn = DriverManager.getConnection(URL,USER,PASSWORD);
	} catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
	return conn;
}
public static void closeConnection(Connection conn)
{
	try {
		if(conn!=null)
		conn.close();
	} catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
}
public static void closeResultSet(ResultSet rs)
{
	try {
		if(rs!=null)
		rs.close();
	} catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
}
public static void closeStatement(Statement stmt)
{
	try {
		if(stmt!=null)
		stmt.close();
	} catch (SQLException e) {
		// TODO 自动生成的 catch 块
		e.printStackTrace();
	}
}
}
