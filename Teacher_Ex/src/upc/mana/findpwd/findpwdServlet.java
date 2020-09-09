package upc.mana.findpwd;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import upc.mana.homepage.User;
import upc.mana.homepage.DbUtils;

/**
 * Servlet implementation class findpwdServlet
 */
@WebServlet("/findpwdServlet")
public class findpwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public findpwdServlet() {
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
		HttpSession session=request.getSession();
		PrintWriter out = response.getWriter();
		String username =request.getParameter("username");
		String email =request.getParameter("email");
		List<User> list = findpwdDao.getAllUsers();
		if(list.size()==0){
		    response.sendRedirect("forget_pwds.jsp");
		    return;
		}
		for(User user:list){
			if(user.getUsername().equals(username)&& user.getEmail().equals(email)){
			String password=user.getPassword();
			session.setAttribute("password", password);
			response.sendRedirect("findpwd.jsp");
			return;
			}
		}	
		response.sendRedirect("forget_pwds.jsp");
	    return;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
