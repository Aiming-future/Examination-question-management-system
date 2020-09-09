package upc.mana.information;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class edit_information
 */
@WebServlet("/edit_information")
public class edit_information extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public edit_information() {
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
		HttpSession session=request.getSession();
		String phone = request.getParameter("phone");
		String QQ = request.getParameter("QQ");
		String email = request.getParameter("email"); 
		String hobby = request.getParameter("hobby");
		String tip = request.getParameter("tip");
		String sID=session.getAttribute("sID").toString();
		if(phone.equals(null)){
			phone="无";
		}
		if(QQ.equals(null)){
			QQ="无";
		}
		if(email.equals(null)){
			email="无";
		}
		if(hobby.equals(null)){
			hobby="无";
		}
		if(tip.equals(null)){
			tip="无";
		}
		information_Dao id=new information_Dao();
		id.updateuser_information_phone(phone,sID);
		id.updateuser_information_QQ(QQ,sID);
		id.updateuser_information_email(email,sID);
		id.updateuser_information_hobby(hobby,sID);
		id.updateuser_information_tip(tip,sID);
		response.sendRedirect("set_information");
	}
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
