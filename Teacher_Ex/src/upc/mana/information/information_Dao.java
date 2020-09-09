package upc.mana.information;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import upc.mana.homepage.DbUtils;
class information_Dao{
	public static List<user_information> getAllinformation() {
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<user_information> list=new ArrayList<>();
		try {
			//2.连接数据库		
			conn=DbUtils.getConnection();
			// System.out.println("ok");
	        //3.操作数据库
		    String sql="select * from information";
		    pstmt=conn.prepareStatement(sql);
		    rs=pstmt.executeQuery();
		    while(rs.next())
		    {
		    	user_information user_information=new user_information();
                user_information.setsID(rs.getString("sID"));
                user_information.setname(rs.getString("name"));
                user_information.setsex(rs.getString("sex"));
                user_information.setloc(rs.getString("loc"));
                user_information.setidentity(rs.getString("identity"));
                user_information.setID(rs.getString("ID"));
                user_information.setclass(rs.getString("class"));
                user_information.sethobby(rs.getString("hobby"));
                user_information.setQQ(rs.getString("QQ"));
                user_information.setphone(rs.getString("phone"));
                user_information.setemail(rs.getString("email"));
                user_information.settip(rs.getString("tip"));
                list.add(user_information);
		    }	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
	//4.关闭数据库
	    DbUtils.closeResultSet(rs);
	    DbUtils.closeStatement(pstmt);
	    DbUtils.closeConnection(conn);
	    }
		return list;
	}
	public void updateuser_information_phone(String value,String user) {
		// TODO Auto-generated method stub
				Connection  conn=null;
				PreparedStatement  pstmt=null;
						try {
					    conn=DbUtils.getConnection();	
						String  sql="update information set phone=? where sID=? ";
						pstmt=conn.prepareStatement(sql);
						pstmt.setString(1,value);
						pstmt.setString(2,user);
						pstmt.executeUpdate();//插入到数据库
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally
						{
							DbUtils.closeStatement(pstmt);
							DbUtils.closeConnection(conn);
						}
	}
	public void updateuser_information_QQ(String value,String user) {
		// TODO Auto-generated method stub
				Connection  conn=null;
				PreparedStatement  pstmt=null;
						try {
					    conn=DbUtils.getConnection();	
						String  sql="update information set QQ=? where sID=? ";
						pstmt=conn.prepareStatement(sql);
						pstmt.setString(1,value);
						pstmt.setString(2,user);
						pstmt.executeUpdate();//插入到数据库
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally
						{
							DbUtils.closeStatement(pstmt);
							DbUtils.closeConnection(conn);
						}
	}
	public void updateuser_information_email(String value,String user) {
		// TODO Auto-generated method stub
				Connection  conn=null;
				PreparedStatement  pstmt=null;
						try {
					    conn=DbUtils.getConnection();	
						String  sql="update information set email=? where sID=? ";
						pstmt=conn.prepareStatement(sql);
						pstmt.setString(1,value);
						pstmt.setString(2,user);
						pstmt.executeUpdate();//插入到数据库
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally
						{
							DbUtils.closeStatement(pstmt);
							DbUtils.closeConnection(conn);
						}
	}
	public void updateuser_information_hobby(String value,String user) {
		// TODO Auto-generated method stub
				Connection  conn=null;
				PreparedStatement  pstmt=null;
						try {
					    conn=DbUtils.getConnection();	
						String  sql="update information set hobby=? where sID=? ";
						pstmt=conn.prepareStatement(sql);
						pstmt.setString(1,value);
						pstmt.setString(2,user);
						pstmt.executeUpdate();//插入到数据库
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally
						{
							DbUtils.closeStatement(pstmt);
							DbUtils.closeConnection(conn);
						}
	}
	public void updateuser_information_tip(String value,String user) {
		// TODO Auto-generated method stub
				Connection  conn=null;
				PreparedStatement  pstmt=null;
						try {
					    conn=DbUtils.getConnection();	
						String  sql="update information set tip=? where sID=? ";
						pstmt=conn.prepareStatement(sql);
						pstmt.setString(1,value);
						pstmt.setString(2,user);
						pstmt.executeUpdate();//插入到数据库
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally
						{
							DbUtils.closeStatement(pstmt);
							DbUtils.closeConnection(conn);
						}
	}
}