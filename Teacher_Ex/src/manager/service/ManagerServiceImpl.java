package manager.service;

import java.util.List;

import dao.Teacher;
import manager.Manager;
import manager.ManagerDao;
import manager.ManagerDaoimpl;
import manager.Student;

public class ManagerServiceImpl implements ManagerService {
	private ManagerServiceImpl() {
		// TODO 自动生成的构造函数存根
	}
	private static ManagerServiceImpl manasi = new ManagerServiceImpl();
	public static ManagerServiceImpl getManasi() {
		return manasi;
	}
	@Override
	public void insertMana(Manager mana)
	{
		ManagerDao manaDao = new ManagerDaoimpl();
		manaDao.insertMana(mana);
	}

	@Override
	public void updateMana(Manager mana) {
		ManagerDao manaDao = new ManagerDaoimpl();
		manaDao.updateMana(mana);
	}

	@Override
	public void deleteMana(String mana_no) {
		ManagerDao manaDao = new ManagerDaoimpl();
		manaDao.deleteMana(mana_no);
	}

	@Override
	public List<Manager> getAllMana() {
		ManagerDao manaDao = new ManagerDaoimpl();
		return manaDao.getAllMana();
	}

	@Override
	public Manager getManaByNo(String mana_no) {
		ManagerDao manaDao = new ManagerDaoimpl();
		return manaDao.getManaByNo(mana_no);

	}
//////////////////////////////////////////////////////////////////student
@Override
public void insertStu(Student tea)
{
	ManagerDao manaDao = new ManagerDaoimpl();
	manaDao.insertStu(tea);
}
@Override
public void updateStu(Student tea) {
	// TODO 自动生成的方法存根
	ManagerDao manaDao = new ManagerDaoimpl();
	manaDao.updateStu(tea);
}
@Override
public void deleteStu(String stu_no) {
	// TODO 自动生成的方法存根
	ManagerDao manaDao = new ManagerDaoimpl();
	manaDao.deleteStu(stu_no);
	
}
@Override
public List<Student> getAllStu() {
	// TODO 自动生成的方法存根
	ManagerDao manaDao = new ManagerDaoimpl();
	return manaDao.getAllStu();
}
@Override
public Student getStuByNo(String teacher_no) {
	// TODO 自动生成的方法存根
	ManagerDao manaDao = new ManagerDaoimpl();
	return manaDao.getStuByNo(teacher_no);
}
/////////////////////////////////////////////////////////////////////////////////////////teacher
@Override
public void insertTea(Teacher tea)
{
	ManagerDao manaDao = new ManagerDaoimpl();
	manaDao.insertTea(tea);
}
@Override
public void updateTea(Teacher tea) {
	// TODO 自动生成的方法存根
	ManagerDao manaDao = new ManagerDaoimpl();
	manaDao.updateTea(tea);
}
@Override
public void deleteTea(String teacher_no) {
	// TODO 自动生成的方法存根
	ManagerDao manaDao = new ManagerDaoimpl();
	manaDao.deleteTea(teacher_no);
	
}
@Override
public List<Teacher> getAllTea() {
	// TODO 自动生成的方法存根
	ManagerDao manaDao = new ManagerDaoimpl();
	return manaDao.getAllTea();
}
@Override
public Teacher getTeaByNo(String teacher_no) {
	// TODO 自动生成的方法存根
	ManagerDao manaDao = new ManagerDaoimpl();
	return manaDao.getTeaByNo(teacher_no);
}
}
