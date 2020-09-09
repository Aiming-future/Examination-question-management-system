package manager;

public class Manager {
private String mana_no;
private String mana_name;
private String mana_pwd;

public Manager() {
	super();
}

public Manager(String mana_no,String mana_name,String mana_pwd)
{
	super();
	this.mana_no = mana_no;
	this.mana_name = mana_name;
	this.mana_pwd = mana_pwd;
}
public void setNo(String mana_no)
{
	this.mana_no = mana_no;
}
public void setName(String mana_name)
{
	this.mana_name = mana_name;
}
public void setPwd(String mana_pwd)
{
	this.mana_pwd = mana_pwd;
}
public String getNo()
{
	return this.mana_name;
}
public String getName()
{
	return this.mana_name;
}
public String getPwd()
{
	return this.mana_pwd;
}
public String toString()
{
	return "manager "+mana_no+" "+mana_name+" "+mana_pwd;
}
}
