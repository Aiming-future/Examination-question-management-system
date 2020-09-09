package a;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DaoDrv {
	private DaoDrv(){}
	private static DaoDrv d=new DaoDrv();
	static DaoDrv f(){return d;}
	String url="jdbc:mysql://localhost:3306/hx?user=root&password=&useSSL=true";//test为数据库名,加入数据库jar包
	String user="root";
	String password="199993";
	Statement st=null;
	Connection con=null;
	public void open() {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url, user, password);
			st=con.createStatement();
		}
		catch(Exception e){
			System.out.println("JJ"+e);
		}
	}
	public void close() {
		try{
			st.close();
			con.close();
		}
		catch(Exception e){
			System.out.println("JJ"+e);
			
		}
	}
}
