package dao;

import java.sql.Clob;

public class Problem {
String no;
String detail;
String ansno;
String keyw;
String dif;
String cha_no;
String char_title;
String char_mpoint;
String type;
	public Problem(String no, String detail, String ansno, String keyw, String dif, String cha_no, String char_title,
		String char_mpoint, String type) {
	super();
	this.no = no;
	this.detail = detail;
	this.ansno = ansno;
	this.keyw = keyw;
	this.dif = dif;
	this.cha_no = cha_no;
	this.char_title = char_title;
	this.char_mpoint = char_mpoint;
	this.type = type;
}
	public Problem() {
	super();
	// TODO Auto-generated constructor stub
}
	public String getNo() {
	return no;
}
public void setNo(String no) {
	this.no = no;
}
public String getDetail() {
	return detail;
}
public void setDetail(String detail) {
	this.detail = detail;
}
public String getAnsno() {
	return ansno;
}
public void setAnsno(String ansno) {
	this.ansno = ansno;
}
public String getKeyw() {
	return keyw;
}
public void setKeyw(String keyw) {
	this.keyw = keyw;
}
public String getDif() {
	return dif;
}
public void setDif(String dif) {
	this.dif = dif;
}
public String getCha_no() {
	return cha_no;
}
public void setCha_no(String cha_no) {
	this.cha_no = cha_no;
}
public String getChar_title() {
	return char_title;
}
public void setChar_title(String char_title) {
	this.char_title = char_title;
}
public String getChar_mpoint() {
	return char_mpoint;
}
public void setChar_mpoint(String char_mpoint) {
	this.char_mpoint = char_mpoint;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public void show()
{
	System.out.println(no+" "+detail+" "+ansno+" "+keyw+" "+dif+" "+cha_no+" "+char_title+" "+char_mpoint+" "+type);
}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
