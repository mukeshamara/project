package com.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class order
 */
@WebServlet("/ord.do")
public class order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public order() {
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
		String customer_id=request.getParameter("cus_id");
		String order_id=request.getParameter("ord_id");
		HttpSession hs=request.getSession();
		System.out.println(order_id);
		if(customer_id.isEmpty())
		{
			request.setAttribute("errm", "<font color='red'>Please fill the below details as they are mandatory<br/>");
			RequestDispatcher rd=request.getRequestDispatcher("ordereddetails.jsp");
			rd.forward(request, response);
		}
		else
		{
		if(order_id.equalsIgnoreCase("none") || order_id.isEmpty())
		{
			request.setAttribute("errm", "<font color='red'>Please fill the below details as they are mandatory<br/>");
			RequestDispatcher rd=request.getRequestDispatcher("ordereddetails.jsp");
			rd.forward(request, response);
		}
		else
		{
		hs.setAttribute("y1",order_id);
		RequestDispatcher rd=request.getRequestDispatcher("booksordered.jsp");
		rd.forward(request, response);
		}
		}
	}

}
