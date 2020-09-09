package upc.mana.student.change;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import upc.mana.homepage.User;
import upc.mana.homepage.DbUtils;
class change_pwdDao{
	public void updateDept(String user,String newpwd) {
		// TODO Auto-generated method stub
				Connection  conn=null;
				PreparedStatement  pstmt=null;
						try {
					    conn=DbUtils.getConnection();	
						String  sql="update verification set password=? where username=?";
						pstmt=conn.prepareStatement(sql);
						String username=user;
						String newpassword=newpwd;
						pstmt.setString(1,newpassword);
						pstmt.setString(2,username);
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