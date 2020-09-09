package upc.mana.homepage;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class login
 */
@WebServlet("/login.html")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		PrintWriter out = response.getWriter();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	    HttpSession session = request.getSession();
	       // 锟斤拷取锟斤拷锟斤拷锟斤拷锟斤拷锟缴碉拷锟斤拷证锟斤拷
	    String ServiceCode = session.getAttribute("validateCode").toString();
	       // 锟斤拷取锟矫伙拷锟斤拷锟斤拷牡锟斤拷锟街わ拷锟�
	    String ClientCode = request.getParameter("codetext");
	    if(ClientCode.equalsIgnoreCase(ServiceCode)){
		List<User> list = UserDao.getAllUsers();
		if(list.size()==0){
		    response.sendRedirect("HomePages.jsp");
		    return;
		}
		for(User user:list){
			if(user.getUsername().equals(username)&& user.getPassword().equals(password)){
				if(user.getUsername().length()==10){
					request.getSession().setAttribute("user",username);
					request.getSession().setAttribute("pwd",password);
					String name=UserDao.selectName(username);
					request.getSession().setAttribute("names",name);
					response.sendRedirect("StudentPage/StudentPage.jsp");
					return;
				}
				else if((user.getUsername().length()==9)){
					request.getSession().setAttribute("user",username);
					request.getSession().setAttribute("pwd",password);
					response.sendRedirect("WEB/TeacherLogin.jsp");
					return;
				}
				else{
					request.getSession().setAttribute("user",username);
					request.getSession().setAttribute("pwd",password);
					response.sendRedirect("manager.jsp");
					return;
				}

			}
		}
	    response.sendRedirect("HomePages.jsp");
		return;
	    }else {
	           response.sendRedirect("HomePagess.jsp");
	       }
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}
}