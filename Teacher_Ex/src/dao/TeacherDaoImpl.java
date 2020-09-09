package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.Tool;
import dao.Problem;

public class TeacherDaoImpl implements TeacherDao{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public void insertPro(Problem p) {
		// TODO Auto-generated method stub
		Connection con=null;
		PreparedStatement pmst=null;
		
		String sql="insert into problem(pro_no,pro_detail,pro_anso,pro_keyw,pro_dif,cha_no,cha_title,cha_mpoint,pro_type) values(?,?,?,?,?,?,?,?,?)";
		try {
			con=Tool.getCon();
			pmst=con.prepareStatement(sql);
			pmst.setString(1,p.getNo());
			pmst.setString(2,p.getDetail());
			pmst.setString(3,p.getAnsno());
			pmst.setString(4,p.getKeyw());
			pmst.setString(5,p.getDif());
			pmst.setString(6,p.getCha_no());
            pmst.setString(7,p.getChar_title());
            pmst.setString(8,p.getChar_mpoint());
            pmst.setString(9,p.getType());
							
			pmst.executeUpdate();
		} catch (SQLException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}finally{

			//4.�ر����ݿ�
			
			Tool.closePmst(pmst);
			Tool.closeCon(con);
			}
		
	}

	@Override
	public void deletePro(Problem p) {
		// TODO Auto-generated method stub
		Connection con=null;
		PreparedStatement pmst=null;
		con=Tool.getCon();
		String sql="delete from problem where pro_no=?";
		try {
			pmst=con.prepareStatement(sql);
			pmst.setString(1,p.getNo());
			pmst.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}finally{

			//4.�ر����ݿ�
			
			Tool.closePmst(pmst);
			Tool.closeCon(con);
			}
	}

	

	@Override
	public List<Problem> getProByno(String n) {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<Problem>   depts=new ArrayList<>();
		
		
		try {

			//2.�������ݿ�		
			conn=Tool.getCon();
			// System.out.println("ok");
	//3.	�������ݿ�
			String  sql="select * from  problem  where pro_no=?";
		  pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, n);

		rs=pstmt.executeQuery();
		
		while(rs.next())
		{
			Problem dept=new Problem();
			dept.setNo(rs.getString(1));
			dept.setDetail(rs.getString(2));
			dept.setAnsno(rs.getString(3));
			dept.setKeyw(rs.getString(4));
			dept.setDif(rs.getString(5));
			dept.setCha_no(rs.getString(6));
			dept.setChar_title(rs.getString(7));
			dept.setChar_mpoint(rs.getString(8));
			dept.setType(rs.getString(9));

depts.add(dept);
		}

		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{

	//4.�ر����ݿ�
	Tool.closeRs(rs);
	Tool.closePmst(pstmt);
	Tool.closeCon(conn);
	}
		
	
		return depts;
	}

	@Override
	public List<Problem> getAllProblem() {
		// TODO Auto-generated method stub
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		List<Problem>   depts=new ArrayList<>();
		try {

			//2.�������ݿ�		
			conn=Tool.getCon();
			// System.out.println("ok");
	//3.	�������ݿ�
			String  sql="select  *   from  problem ";
		  pstmt=conn.prepareStatement(sql);
		

		rs=pstmt.executeQuery();
		while(rs.next())
		{
			Problem dept=new Problem();
			dept.setNo(rs.getString(1));
			dept.setDetail(rs.getString(2));
			dept.setAnsno(rs.getString(3));
			dept.setKeyw(rs.getString(4));
			dept.setDif(rs.getString(5));
			dept.setCha_no(rs.getString(6));
			dept.setChar_title(rs.getString(7));
			dept.setChar_mpoint(rs.getString(8));
			dept.setType(rs.getString(9));

depts.add(dept);
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{

	//4.�ر����ݿ�
	Tool.closeRs(rs);
	Tool.closePmst(pstmt);
	Tool.closeCon(conn);
	}
		
	
		return depts;
	}

	@Override
	public List<Problem> getProBydetail(String n) {
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		
		List<Problem>   depts=new ArrayList<>();
		
		try {

			//2.�������ݿ�		
			conn=Tool.getCon();
			// System.out.println("ok");
	//3.	�������ݿ�
			String sql="select * from problem where instr(pro_detail,'"+n+"')>0 ";
		  pstmt=conn.prepareStatement(sql);
		//pstmt.setString(1, n);
       
		rs=pstmt.executeQuery();

		while(rs.next())
		{
			Problem dept=new Problem();
			dept.setNo(rs.getString(1));
			dept.setDetail(rs.getString(2));
			dept.setAnsno(rs.getString(3));
			dept.setKeyw(rs.getString(4));
			dept.setDif(rs.getString(5));
			dept.setCha_no(rs.getString(6));
			dept.setChar_title(rs.getString(7));
			dept.setChar_mpoint(rs.getString(8));
			dept.setType(rs.getString(9));

depts.add(dept);
		}

		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{

	//4.�ر����ݿ�
	Tool.closeRs(rs);
	Tool.closePmst(pstmt);
	Tool.closeCon(conn);
	}
		
	
		return depts;
	}

	@Override
	public void updatePro(Problem p, String no) {
		// TODO Auto-generated method stub
		
		
			Connection con=null;
			PreparedStatement pmst=null;
			
			String sql="update problem set pro_no=?,pro_detail=?,pro_anso=?,pro_keyw=?,pro_dif=?,cha_no=?,cha_title=?,cha_mpoint=?,pro_type=? where pro_no=?";
			try {
				con=Tool.getCon();
				pmst=con.prepareStatement(sql);
				pmst.setString(1,p.getNo());
				pmst.setString(2,p.getDetail());
				pmst.setString(3, p.getAnsno());
				pmst.setString(4, p.getKeyw());
				pmst.setString(5,p.getDif());
				pmst.setString(6,p.getCha_no());
	            pmst.setString(7,p.getChar_title());
	            pmst.setString(8,p.getChar_mpoint());
	            pmst.setString(9,p.getType());
	            pmst.setString(10,no);
	            
				pmst.executeUpdate();
				
				
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}finally{

				//4.�ر����ݿ�
				
				Tool.closePmst(pmst);
				Tool.closeCon(con);
				
		}
		
	}

	@Override
	public Problem getProByno1(String n) {
		Connection  conn=null;
		PreparedStatement  pstmt=null;
		ResultSet  rs=null;
		Problem dept=new Problem();
		
		
		try {

			//2.�������ݿ�		
			conn=Tool.getCon();
			// System.out.println("ok");
	//3.	�������ݿ�
			String  sql="select * from  problem  where pro_no=?";
		  pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, n);

		rs=pstmt.executeQuery();
		
		while(rs.next())
		{
			
			dept.setNo(rs.getString(1));
			dept.setDetail(rs.getString(2));
			dept.setAnsno(rs.getString(3));
			dept.setKeyw(rs.getString(4));
			dept.setDif(rs.getString(5));
			dept.setCha_no(rs.getString(6));
			dept.setChar_title(rs.getString(7));
			dept.setChar_mpoint(rs.getString(8));
			dept.setType(rs.getString(9));

		}

		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{

	//4.�ر����ݿ�
	Tool.closeRs(rs);
	Tool.closePmst(pstmt);
	Tool.closeCon(conn);
	}
		
	
		return dept;
	}

}
