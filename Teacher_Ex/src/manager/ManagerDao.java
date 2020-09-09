package manager;

import java.util.List;
import dao.Teacher;
public interface ManagerDao {
	void insertMana(Manager mana);
	void updateMana(Manager mana);
	void deleteMana(String mana_no);
	List<Manager> getAllMana();
	Manager getManaByNo(String mana_no);
	
	void insertTea(Teacher tea);
	void updateTea(Teacher tea);
	void deleteTea(String teacher_no);
	List<Teacher> getAllTea();
	Teacher getTeaByNo(String teacher_no);
	
	void insertStu(Student stu);
	void updateStu(Student stu);
	void deleteStu(String stu_no);
	List<Student> getAllStu();
	Student getStuByNo(String stu_no);

}
