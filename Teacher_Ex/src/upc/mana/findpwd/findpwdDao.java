package upc.mana.findpwd;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import upc.mana.homepage.DbUtils;
import upc.mana.homepage.User;
class findpwdDao{
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
		    String sql="select * from verification";
		    pstmt=conn.prepareStatement(sql);
		    rs=pstmt.executeQuery();
		    while(rs.next())
		    {
                User user=new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
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
}