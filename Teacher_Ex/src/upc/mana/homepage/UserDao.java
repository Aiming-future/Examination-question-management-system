package upc.mana.homepage;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import upc.mana.homepage.DbUtils;
import upc.mana.homepage.User;
import upc.mana.information.user_information;

class UserDao{
	public static List<User> getAllUsers() {
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<User> users=new ArrayList<>();
		try {
			//2.连接数据库		
			conn=DbUtils.getConnection();
			// System.out.println("ok");
	        //3.操作数据库
		    String sql="select * from student";
		    pstmt=conn.prepareStatement(sql);
		    rs=pstmt.executeQuery();
		    while(rs.next())
		    {
                User user=new User();
                user.setUsername(rs.getString("stu_no"));
                user.setPassword(rs.getString("stu_pwd"));
                users.add(user);
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
		return users;
	}
	public static String selectName(String ID) {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
	    ResultSet  rs=null;
		String name=new String();
						try {
					    conn=DbUtils.getConnection();	
					    String sql="select * from student where stu_no=?";
						pstmt=conn.prepareStatement(sql);
						String id=ID;
						pstmt.setString(1,id);
					    rs=pstmt.executeQuery();
					    while(rs.next())
					    {
                            name=rs.getString("stu_name");
					    }	
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}finally
						{
							DbUtils.closeResultSet(rs);
							DbUtils.closeStatement(pstmt);
							DbUtils.closeConnection(conn);
						}
			return name;
	}
}