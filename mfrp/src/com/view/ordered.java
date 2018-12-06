package com.view;
import java.sql.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.addtocartDAO;
import com.model.User;

/**
 * Servlet implementation class ordered
 */
@WebServlet("/ordered.do")
public class ordered extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ordered() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpServletRequest hrequest = (HttpServletRequest) request;
        HttpSession ses = hrequest.getSession();
        User obj = (User) ses.getAttribute("xyz");
        addtocartDAO dao=new addtocartDAO();
        try
        {
        	int z=dao.ordereddetails(Long.toString(obj.getUserid()));
        	if(z>0)
        	{
        		RequestDispatcher rd=request.getRequestDispatcher("ordered.jsp");
        		rd.forward(request, response);
        	}
        	else
        	{
        		request.setAttribute("errmsg10", "<font color='blue'>You did not booked any books.Please book any books for order<br/>");
				RequestDispatcher rd=request.getRequestDispatcher("userincart.jsp");
				rd.forward(request, response);
        	}
        }catch(Exception ex)
        {
        	System.out.println(ex);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
