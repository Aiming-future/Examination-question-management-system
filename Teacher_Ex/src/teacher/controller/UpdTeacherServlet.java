package teacher.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Teacher;
import manager.Manager;
import manager.service.ManagerServiceImpl;

/**
 * Servlet implementation class UpdManagerServlet
 */
@WebServlet("/UpdTeacherServlet")
public class UpdTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdTeacherServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String teacher_no = request.getParameter("no");
		String teacher_name = request.getParameter("name");
		String teacher_pwd = request.getParameter("pwd");
		String teacher_mail= request.getParameter("mail");
		String teacher_dicipline=request.getParameter("discipline");
		Teacher tea = new Teacher(teacher_no,teacher_pwd,teacher_name,teacher_dicipline,teacher_mail);
		ManagerServiceImpl manaService = ManagerServiceImpl.getManasi();
		manaService.updateTea(tea);
		response.sendRedirect("tea.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
