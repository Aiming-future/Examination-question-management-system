package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Problem;
import dao.TeacherDaoImpl;

/**
 * Servlet implementation class Add
 */
@WebServlet("/Add")
public class Add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
	PrintWriter  out=response.getWriter();
	String no=(String)request.getParameter("no");
	TeacherDaoImpl t1=new TeacherDaoImpl();
	Problem p0=t1.getProByno1(no);
	if(p0.getNo()!=null) {
		out.println("此编号已存在，请重新输入！");
		out.println("3秒后将自动跳转。。。");
		response.setHeader("refresh", "3;url=WEB/Add.jsp");
	}else {
	String detail=(String)request.getParameter("detail");
	String anso=(String)request.getParameter("anso");
	String keyw=(String)request.getParameter("keyw");
	String dif=(String)request.getParameter("dif");
	String cha_no=(String)request.getParameter("cha_no");
	String cha_title=(String)request.getParameter("cha_title");
	String cha_mpoint=(String)request.getParameter("cha_mpoint");
	String type=(String)request.getParameter("type");
	Problem p=new Problem(no,detail,anso,keyw,dif,cha_no,cha_title,cha_mpoint,type);
	
	t1.insertPro(p);
	response.sendRedirect("WEB/AddRs.jsp");
	}
	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
