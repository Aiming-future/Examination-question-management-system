package manger.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import manager.Manager;
import manager.service.ManagerServiceImpl;

/**
 * Servlet implementation class InsertManaServlet
 */
@WebServlet("/InsertManaServlet")
public class InsertManaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertManaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mana_no = request.getParameter("mana_no");
		String mana_name = request.getParameter("mana_name");
		String mana_pwd = request.getParameter("mana_pwd");
		Manager mana = new Manager(mana_no,mana_name,mana_pwd);
		ManagerServiceImpl manaService = ManagerServiceImpl.getManasi();
		manaService.insertMana(mana);
		request.getRequestDispatcher("GetAllManaServlet").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
