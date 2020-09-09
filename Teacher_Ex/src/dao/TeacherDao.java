package dao;

import java.util.List;

public interface TeacherDao {
	void insertPro(Problem p);
	void deletePro(Problem p);
	void updatePro(Problem p,String no);
	Problem getProByno1(String n);
	List<Problem> getProByno(String n);
	List<Problem> getProBydetail(String n);
	List<Problem>	getAllProblem();
	
}
