package upc.mana.student.change;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class change_password
 */
@WebServlet("/change_password.html")
public class change_password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public change_password() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");//
		request.setCharacterEncoding("utf-8");  //
		HttpSession  session=request.getSession();
		PrintWriter out = response.getWriter();
		String username =session.getAttribute("user").toString();
		String password = request.getParameter("password");
		String newpassword = request.getParameter("newpassword");
		if(!password.equals(session.getAttribute("pwd"))){
			session.setAttribute("newpassword",newpassword);
			response.sendRedirect("StudentPage/change_password_fail.jsp");
		}
		else{
			change_pwdDao cd=new change_pwdDao();
			cd.updateDept(username,newpassword);
			response.sendRedirect("StudentPage/change_password_suc.jsp");
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
