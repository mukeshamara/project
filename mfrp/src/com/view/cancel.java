package com.view;
import com.dao.*;
import com.model.cancelmenu;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class cancel
 */
@WebServlet("/cancel.do")
public class cancel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cancel() {
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
		HttpSession hs=request.getSession();
		String id=(String)hs.getAttribute("cus_id");
		String or_id=(String)hs.getAttribute("ord_id");
		try
		{
		CancelDAO dao=new CancelDAO();

		int re=dao.search(or_id, id);
		if(re>0)
		{
		List<cancelmenu> can=dao.search(or_id);
		
		for(cancelmenu c:can)
		{
			
			int x11=dao.update(c.getQuantity(), c.getBook_id());
		}
		int s1=dao.deletefromcart(or_id);
		
		int rs=dao.cancellation(or_id);
		if(rs>0)
		{
				request.setAttribute("errmsg4", "<font color='red'>You're successfully cancelled the booked order<br/>");
				request.setAttribute("errmsg5", "<font color='red'>Your amount will will be return to your account within 4 working days.<br/>");
				RequestDispatcher rd=request.getRequestDispatcher("aftercancellation.jsp");
				rd.forward(request, response);
			
		}
		else
		{
			request.setAttribute("errmsg7", "<font color='red'>You have entered the wrong credentials. Enter again><br/>");
			RequestDispatcher rd=request.getRequestDispatcher("cancel.jsp");
			rd.forward(request, response);
		}
		}
	}catch(Exception ex)
	{
		System.out.println(ex);
	}
	}

}
