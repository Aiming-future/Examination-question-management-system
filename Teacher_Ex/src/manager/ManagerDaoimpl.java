package manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import dao.Teacher;
import dao.Tool;

public class ManagerDaoimpl implements ManagerDao {
	@Override
	public void insertMana(Manager mana)
	{
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = MDUtils.getConnection();
//			rs = pst.executeQuery("select * from manager where mana_no ="+mana.getNo()+"");
//			if(rs.next())
//			{
//				
//			}else {
				String sql = "insert into manager(mana_no,mana_name,mana_pwd) values(?,?,?)";
				pst = conn.prepareStatement(sql);
				pst.setString(1, mana.getNo());
				pst.setString(2, mana.getName());
				pst.setString(3, mana.getPwd());
				pst.executeUpdate();
//			}		
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
		MDUtils.closeStatement(pst);
		MDUtils.closeConnection(conn);
		}
	}

	@Override
	public void updateMana(Manager mana) {
		// TODO 自动生成的方法存根
		Connection conn = null;
		PreparedStatement pst = null;
		conn = MDUtils.getConnection();
		String sql = "update manager set mana_pwd = ? where mana_no = ?";
		
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1,mana.getPwd());
			pst.setString(2, mana.getNo());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
		
		
		
	}

	@Override
	public void deleteMana(String mana_no) {
		// TODO 自动生成的方法存根
		Connection conn = null;
		PreparedStatement pst = null;
		conn = MDUtils.getConnection();
		String sql = "delete from manager where mana_no = ?";
		
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, mana_no);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	}

	@Override
	public List<Manager> getAllMana() {
		// TODO 自动生成的方法存根
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<Manager>   manas=new ArrayList<>();
		try {
			conn=MDUtils.getConnection();
			String  sql="select  *   from  manager ";
		  pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next())
		{
Manager  mana=new Manager();
mana.setNo(rs.getString("mana_no"));
mana.setName(rs.getString("mana_name"));
mana.setPwd(rs.getString("mana_pwd"));
manas.add(mana);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{

	//4.关闭数据库
	MDUtils.closeResultSet(rs);
	MDUtils.closeStatement(pstmt);
	MDUtils.closeConnection(conn);
	}
		
	
		return manas;
	}

	@Override
	public Manager getManaByNo(String mana_no) {
		// TODO 自动生成的方法存根
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		Manager mana = new Manager();
		try {	
			conn=MDUtils.getConnection();
			String  sql="select  *   from  manager  where  mana_no=?";
		  pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, mana_no);
		rs=pstmt.executeQuery();
		while(rs.next())
		{
mana.setNo(rs.getString("mana_no"));
mana.setName(rs.getString("mana_name"));
mana.setPwd(rs.getString("mana_pwd"));

		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
	MDUtils.closeResultSet(rs);
	MDUtils.closeStatement(pstmt);
	MDUtils.closeConnection(conn);
	}
		
		
		return mana;
	}

	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////teacher
	@Override
	public void insertTea(Teacher tea)
	{
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = Tool.getCon();
//			rs = pst.executeQuery("select * from manager where mana_no ="+mana.getNo()+"");
//			if(rs.next())
//			{
//				
//			}else {
				String sql = "insert into teacher(teacher_no,teacher_name,teacher_discipline,teacher_mail,teacher_pwd) values(?,?,?,?,?)";
				pst = conn.prepareStatement(sql);
				pst.setString(1, tea.getNo());
				pst.setString(2, tea.getName());
				pst.setString(3, tea.getDiscipline());
				pst.setString(4, tea.getMail());
				pst.setString(5, tea.getPwd());
				pst.executeUpdate();
				String sql2 = "insert into verification(username,password,email) values(?,?,?)";
				pst = conn.prepareStatement(sql2);
				pst.setString(1, tea.getNo());
				pst.setString(2, tea.getName());
				pst.setString(3, tea.getMail());
				pst.executeUpdate();
//			}		
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
		Tool.closePmst(pst);
		Tool.closeCon(conn);
		}
	}

	@Override
	public void updateTea(Teacher tea) {
		// TODO 自动生成的方法存根
		Connection conn = null;
		PreparedStatement pst = null;
		conn = Tool.getCon();
		String sql = "update teacher set teacher_pwd = ?,teacher_mail=?,teacher_discipline=?,teacher_name=? where teacher_no = ?";
		
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1,tea.getPwd());
			pst.setString(2,tea.getMail());
			pst.setString(3,tea.getDiscipline());
			pst.setString(4,tea.getName());
			pst.setString(5, tea.getNo());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			Tool.closePmst(pst);
			Tool.closeCon(conn);
			}
		
		
		
		
	}

	@Override
	public void deleteTea(String teacher_no) {
		// TODO 自动生成的方法存根
		Connection conn = null;
		PreparedStatement pst = null;
		conn = Tool.getCon();
		String sql = "delete from teacher where teacher_no = ?";
		
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, teacher_no);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			Tool.closePmst(pst);
			Tool.closeCon(conn);
			}
	}

	@Override
	public List<Teacher> getAllTea() {
		// TODO 自动生成的方法存根
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<Teacher>   teas=new ArrayList<>();
		try {
			conn=Tool.getCon();
			String  sql="select  *   from  teacher ";
		  pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next())
		{
Teacher  tea=new Teacher();
tea.setNo(rs.getString("teacher_no"));
tea.setName(rs.getString("teacher_name"));
tea.setPwd(rs.getString("teacher_pwd"));
tea.setMail(rs.getString("teacher_mail"));
tea.setDiscipline(rs.getString("teacher_discipline"));
teas.add(tea);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{

	//4.关闭数据库
	Tool.closeRs(rs);
	Tool.closePmst(pstmt);
	Tool.closeCon(conn);
	}
		
	
		return teas;
	}

	@Override
	public Teacher getTeaByNo(String teacher_no) {
		// TODO 自动生成的方法存根
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		Teacher tea = new Teacher();
		try {	
			conn=Tool.getCon();
			String  sql="select  *   from  teacher  where  teacher_no=?";
		  pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, teacher_no);
		rs=pstmt.executeQuery();
		while(rs.next())
		{
tea.setNo(rs.getString("teacher_no"));
tea.setName(rs.getString("teacher_name"));
tea.setPwd(rs.getString("teacher_pwd"));
tea.setMail(rs.getString("teacher_mail"));
tea.setDiscipline(rs.getString("teacher_discipline"));


		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
	Tool.closeRs(rs);
	Tool.closePmst(pstmt);
	Tool.closeCon(conn);
	}
		
		
		return tea;
	}
	
	
////////////////////////////////////////////////////////////////////////////////////////////////学生
	@Override
	public void insertStu(Student stu)
	{
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			conn = Tool.getCon();
//			rs = pst.executeQuery("select * from manager where mana_no ="+mana.getNo()+"");
//			if(rs.next())
//			{
//				
//			}else {
				String sql1 = "insert into student(stu_no,stu_name,stu_discipline,stu_mail,stu_pwd) values(?,?,?,?,?)";
				pst = conn.prepareStatement(sql1);
				pst.setString(1, stu.getNo());
				pst.setString(2, stu.getName());
				pst.setString(3, stu.getDiscipline());
				pst.setString(4, stu.getMail());
				pst.setString(5, stu.getPwd());
				pst.executeUpdate();
				String sql2 = "insert into verification(username,password,email) values(?,?,?)";
				pst = conn.prepareStatement(sql2);
				pst.setString(1, stu.getNo());
				pst.setString(2, stu.getName());
				pst.setString(3, stu.getMail());
				pst.executeUpdate();
				String sql3 = "insert into information(sID,name,class) values(?,?,?)";
				pst = conn.prepareStatement(sql3);
				pst.setString(1, stu.getNo());
				pst.setString(2, stu.getName());
				pst.setString(3, stu.getDiscipline());
				pst.executeUpdate();
//			}		
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
		Tool.closePmst(pst);
		Tool.closeCon(conn);
		}
	}

	@Override
	public void updateStu(Student tea) {
		// TODO 自动生成的方法存根
		Connection conn = null;
		PreparedStatement pst = null;
		conn = Tool.getCon();
		String sql = "update student set stu_pwd=?,stu_mail=?,stu_discipline=?,stu_name = ? where stu_no = ?";
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1,tea.getPwd());
			pst.setString(2,tea.getMail());
			pst.setString(3,tea.getDiscipline());
			pst.setString(4,tea.getName());
			pst.setString(5, tea.getNo());
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			Tool.closePmst(pst);
			Tool.closeCon(conn);
			}
		
		
		
		
		
	}

	@Override
	public void deleteStu(String stu_no) {
		// TODO 自动生成的方法存根
		Connection conn = null;
		PreparedStatement pst1 = null;
		PreparedStatement pst2 = null;
		PreparedStatement pst3 = null;
		conn = Tool.getCon();
		try {
			String sql = "delete from student where stu_no = ?";
			pst1 = conn.prepareStatement(sql);
			pst1.setString(1, stu_no);
			pst1.executeUpdate();
			
			String sql2 = "delete from verification where username = ?";
			pst2 = conn.prepareStatement(sql2);
			pst2.setString(1, stu_no);
			pst2.executeUpdate();
			
			String sql3 = "delete from verification where sID = ?";
			pst3 = conn.prepareStatement(sql3);
			pst3.setString(1, stu_no);
			pst3.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}finally {
			Tool.closePmst(pst1);
			Tool.closePmst(pst2);
			Tool.closePmst(pst3);
			Tool.closeCon(conn);
			}
		
	}

	@Override
	public List<Student> getAllStu() {
		// TODO 自动生成的方法存根
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<Student>   teas=new ArrayList<>();
		try {
			conn=Tool.getCon();
			String  sql="select  *   from  student ";
		  pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next())
		{
Student  tea=new Student();
tea.setNo(rs.getString("stu_no"));
tea.setName(rs.getString("stu_name"));
tea.setPwd(rs.getString("stu_pwd"));
tea.setMail(rs.getString("stu_mail"));
tea.setDiscipline(rs.getString("stu_discipline"));
teas.add(tea);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{

	//4.关闭数据库
	Tool.closeRs(rs);
	Tool.closePmst(pstmt);
	Tool.closeCon(conn);
	}
		
	
		return teas;
	}

	@Override
	public Student getStuByNo(String stu_no) {
		// TODO 自动生成的方法存根
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		Student stu = new Student();
		try {	
			conn=Tool.getCon();
			String  sql="select  *   from  student  where  stu_no=?";
		  pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, stu_no);
		rs=pstmt.executeQuery();
		while(rs.next())
		{
stu.setNo(rs.getString("stu_no"));
stu.setName(rs.getString("stu_name"));
stu.setPwd(rs.getString("stu_pwd"));
stu.setMail(rs.getString("stu_mail"));
stu.setDiscipline(rs.getString("stu_discipline"));


		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
	Tool.closeRs(rs);
	Tool.closePmst(pstmt);
	Tool.closeCon(conn);
	}
		
		
		return stu;
	}
	}


