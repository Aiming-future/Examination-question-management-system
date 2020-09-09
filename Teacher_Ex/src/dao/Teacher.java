package dao;

public class Teacher {
String no;
String pwd;
String name;
String discipline;
String mail;
	public Teacher(String no, String pwd, String name, String discipline, String mail) {
	super();
	this.no = no;
	this.pwd = pwd;
	this.name = name;
	this.discipline = discipline;
	this.mail = mail;
}
	public Teacher() {
	super();
	// TODO Auto-generated constructor stub
}
	public String getNo() {
	return no;
}
public void setNo(String no) {
	this.no = no;
}
public String getPwd() {
	return pwd;
}
public void setPwd(String pwd) {
	this.pwd = pwd;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDiscipline() {
	return discipline;
}
public void setDiscipline(String discipline) {
	this.discipline = discipline;
}
public String getMail() {
	return mail;
}
public void setMail(String mail) {
	this.mail = mail;
}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
