package upc.mana.information;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import upc.mana.homepage.DbUtils;
/**
 * Servlet implementation class set_information
 */
@WebServlet("/set_information")
public class set_information extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public set_information() {
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
		String username =session.getAttribute("user").toString();
		List<user_information> list = information_Dao.getAllinformation();
		for(user_information user_information:list){
			if(user_information.getsID().equals(username)){
			String sID=user_information.getsID();
			String name=user_information.getname();
			String sex=user_information.getsex();
			String loc=user_information.getloc();
			String identity=user_information.getidentity();
			String ID=user_information.getID();
			String classe=user_information.getclass();
			String hobby=user_information.gethobby();
			String QQ=user_information.getQQ();
			String phone=user_information.getphone();
			String email=user_information.getemail();
			String tip=user_information.gettip();
			session.setAttribute("sID", sID);
			session.setAttribute("name", name);
			session.setAttribute("sex", sex);
			session.setAttribute("loc", loc);
			session.setAttribute("identity", identity);
			session.setAttribute("ID", ID);
			session.setAttribute("classe", classe);
			session.setAttribute("hobby", hobby);
			session.setAttribute("QQ", QQ);
			session.setAttribute("phone", phone);
			session.setAttribute("email", email);
			session.setAttribute("tip", tip);
			response.sendRedirect("StudentPage/set_information.jsp");
			return;
			}
		}	
		out.println("Êý¾Ý¶ªÊ§£¡£¡£¡");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
