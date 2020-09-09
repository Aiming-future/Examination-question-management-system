
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/jog.html")
public class Sv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sv() {
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
		int a=Integer.parseInt(request.getParameter("use"));
		String a1=request.getParameter("uses");
		int b=Integer.parseInt(request.getParameter("user"));
		String b1=request.getParameter("users");
		int c=Integer.parseInt(request.getParameter("user1"));
		String c1=request.getParameter("users1");
		String d=request.getParameter("aa");
		int e=Integer.parseInt(request.getParameter("bb"));
		request.setAttribute("a", a);
		request.setAttribute("b", b);
		request.setAttribute("c", c);
		request.setAttribute("d", d);
		request.setAttribute("e", e);
		System.out.print(a+":"+a1+"\n");
		System.out.print(b+":"+b1+"\n");
		System.out.print(c+":"+c1+"\n");
		System.out.print(d+":"+e+"\n");
		if(3*a+5*b+10*c!=100){
			request.getRequestDispatcher("fg1.jsp").forward(request, response);
		}
		else{
		request.getRequestDispatcher("fg.jsp").forward(request, response);}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    this.doGet(request, response);
	}
}