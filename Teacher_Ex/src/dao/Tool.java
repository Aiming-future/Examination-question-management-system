package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Tool {
	private static final String url="jdbc:mysql://localhost:3306/exam?useUnicode=true&characterEncoding=UTF-8";
	private static final String user="root";
    private static final String password="199993";
private static Tool tool=new Tool();
private  Tool() {}
public Tool getTool()
{
	return tool;
}
static {
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		// TODO �Զ����ɵ� catch ��
		e.printStackTrace();
	}
}
public static Connection getCon()
{
	Connection con=null;
	try {
		con=DriverManager.getConnection(url, user, password);
	} catch (SQLException e) {
		// TODO �Զ����ɵ� catch ��
		e.printStackTrace();
	}
	return con;
}
public static void closeCon(Connection con)
{
	try {
		if(con!=null)
		{con.close();}
	} catch (SQLException e) {
		// TODO �Զ����ɵ� catch ��
		e.printStackTrace();
	}
	
}
public static void closePmst(PreparedStatement pmst)
{
	try {
		if(pmst!=null)
		{pmst.close();}
	} catch (SQLException e) {
		// TODO �Զ����ɵ� catch ��
		e.printStackTrace();
	}
}
public static void closeRs(ResultSet rs)
{
	try {
		if(rs!=null)
		{rs.close();}
	} catch (SQLException e) {
		// TODO �Զ����ɵ� catch ��
		e.printStackTrace();
	}
	
}
	public static void main(String[] args) {
		

	}

}
