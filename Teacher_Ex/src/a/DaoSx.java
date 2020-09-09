package a;







import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
public class DaoSx {
	public void insert(DaoTable a){
		DaoDrv t=DaoDrv.f();
		try {
			t.open();
			String b=a.tm,c=a.xx1,d=a.xx2,e=a.xx3,f=a.xx4,g=a.da;
			Integer y=a.xh;
			String s="insert into users4 values('"+b+"',"+y+",'"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')";
			t.st.executeUpdate(s);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
	}
	public void insert(DaoTable5 a){
		DaoDrv t=DaoDrv.f();
		try {
			t.open();
			String g=a.da;
			int y=a.xh;
			String s="insert into users11 values('"+g+"',"+y+")";
			t.st.executeUpdate(s);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
	}
	public void update(DaoTable3 a){
    	DaoDrv t=DaoDrv.f();
		try {
			t.open();
			String s="update users8 set hh="+a.h+"  where bh="+a.bh+"";
			t.st.executeUpdate(s);
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void insert(DaoTable3 a){
		DaoDrv t=DaoDrv.f();
		try {
			t.open();
			int h=a.h,m=a.m,s=a.s,b=a.bh;
			String s1="insert into users8 values("+h+","+m+","+s+","+b+")";
			t.st.executeUpdate(s1);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
	}
	public void insert(DaoTable4 a){
		DaoDrv t=DaoDrv.f();
		try {
			t.open();
			int y=a.xz,g=a.bm;
			String s="insert into users9 values("+y+","+g+")";
			t.st.executeUpdate(s);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
	}
	public void insert1(DaoTable4 a){
		DaoDrv t=DaoDrv.f();
		try {
			t.open();
			int y=a.xz,g=a.bm;
			String s="insert into users10 values("+y+","+g+")";
			t.st.executeUpdate(s);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
	}
	public void insert(DaoTable1 a){
		DaoDrv t=DaoDrv.f();
		try {
			t.open();
			String b=a.tm,g=a.da;
			Integer y=a.xh;
			String s="insert into users5 values('"+b+"',"+y+",'"+g+"')";
			t.st.executeUpdate(s);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
	}
	public void insert(DaoTable2 a){
		DaoDrv t=DaoDrv.f();
		try {
			t.open();
			Integer y=a.a;
			String s="insert into users7 values("+y+")";
			t.st.executeUpdate(s);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
	}
	public void insert1(DaoTable1 a){
		DaoDrv t=DaoDrv.f();
		try {
			t.open();
			String b=a.tm,g=a.da;
			Integer y=a.xh;
			String s="insert into users6 values('"+b+"','"+g+"',"+y+")";
			t.st.executeUpdate(s);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
	}
    public List <DaoTable> fg(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS1");
			while(rs.next()){
				DaoTable b=new DaoTable();
				b.xh=rs.getInt("序号");
				b.tm=rs.getString("题目");
				b.xx1=rs.getString("选项1");
				b.xx2=rs.getString("选项2");
				b.xx3=rs.getString("选项3");
				b.xx4=rs.getString("选项4");
				b.da=rs.getString("答案");
				l.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return l;
	}
    public List <DaoTable1> fg1(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable1>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS2");
			while(rs.next()){
				DaoTable1 b=new DaoTable1();
				b.xh=rs.getInt("序号");
				b.tm=rs.getString("题目");
				b.da=rs.getString("答案");
				l.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return l;
	}
    public List <DaoTable1> fg2(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable1>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS3");
			while(rs.next()){
				DaoTable1 b=new DaoTable1();
				b.xh=rs.getInt("序号");
				b.tm=rs.getString("题目");
				b.da=rs.getString("答案");
				l.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return l;
	}
    public List <DaoTable> fg3(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS4");
			while(rs.next()){
				DaoTable b=new DaoTable();
				b.xh=rs.getInt("序号");
				b.tm=rs.getString("题目");
				b.xx1=rs.getString("选项1");
				b.xx2=rs.getString("选项2");
				b.xx3=rs.getString("选项3");
				b.xx4=rs.getString("选项4");
				b.da=rs.getString("答案");
				l.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return l;
	}
    public List <DaoTable1> fg4(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable1>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS5");
			while(rs.next()){
				DaoTable1 b=new DaoTable1();
				b.xh=rs.getInt("序号");
				b.tm=rs.getString("题目");
				b.da=rs.getString("答案");
				l.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return l;
	}
    public List <DaoTable1> fg5(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable1>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS6");
			while(rs.next()){
				DaoTable1 b=new DaoTable1();
				b.xh=rs.getInt("序号");
				b.tm=rs.getString("题目");
				b.da=rs.getString("答案");
				l.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return l;
	}
    public DaoTable2 fg6(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable2>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS7");
			while(rs.next()){
				DaoTable2 b=new DaoTable2();
				b.a=rs.getInt("考试时长");
				l.add(b);
				return b;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return null;
	}
    public DaoTable3 fg7(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable3>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS8");
			while(rs.next()){
				DaoTable3 b=new DaoTable3();
				b.h=rs.getInt("hh");
				b.m=rs.getInt("mm");
				b.s=rs.getInt("ss");
				b.bh=rs.getInt("bh");
				l.add(b);
				return b;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return null;
	}
    public DaoTable4 fg8(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable4>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS9");
			while(rs.next()){
				DaoTable4 b=new DaoTable4();
				b.xz=rs.getInt("xz");
				b.bm=rs.getInt("bm");
				l.add(b);
				return b;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return null;
	}
    public DaoTable4 fg9(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable4>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS10");
			while(rs.next()){
				DaoTable4 b=new DaoTable4();
				b.xz=rs.getInt("xz");
				b.bm=rs.getInt("bm");
				l.add(b);
				return b;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return null;
	}
    public List <DaoTable5> fg10(){
		DaoDrv t=DaoDrv.f();
		List <DaoTable5>l=new ArrayList<>();
		ResultSet rs;
		try {
			t.open();
			rs = t.st.executeQuery("SELECT * FROM USERS11");
			while(rs.next()){
				DaoTable5 b=new DaoTable5();
				b.xh=rs.getInt("xh");
				b.da=rs.getString("da");
				l.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		t.close();
		return l;
	}
}