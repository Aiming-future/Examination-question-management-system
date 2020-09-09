package dao;


import java.util.List;

public abstract class Test12311 {

	public static void main(String[] args) {
		TeacherDaoImpl t1=new TeacherDaoImpl();
		Problem p=new Problem("777","777","777","777","777","777","777","777","777");
		t1.updatePro(p,"1.7");
		List<Problem> l=t1.getAllProblem();
		for(int i=0;i<l.size();i++)
		{
			l.get(i).show();
		}
		
	}

}
