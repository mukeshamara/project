package com.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.addtocartDAO;

/**
 * Servlet implementation class cartpage
 */
@WebServlet("/cartpage.do")
public class cartpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cartpage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("username");
		addtocartDAO dao=new addtocartDAO();
		HttpSession hs=request.getSession();
		int y=0;
		System.out.println("came");
		try
		{
		y=dao.checkuserincart(id);
			if(y>0)
			{
				System.out.println(y);
				hs.setAttribute("xy",id);
				RequestDispatcher rd=request.getRequestDispatcher("cartusingavax.jsp");
				rd.forward(request, response);
			}
			else
			{
				System.out.println("going");
				request.setAttribute("errmsg8","<font color='red'>You did not add any books in the cart.Please add any book<br/>");
				RequestDispatcher rd=request.getRequestDispatcher("lo.jsp");
				rd.forward(request, response);
			}
		}catch(Exception ex)
		{
			System.out.println(ex);
		}
	}

}
