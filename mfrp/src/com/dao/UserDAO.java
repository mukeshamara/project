package com.dao;

import java.sql.*;

import javax.annotation.Resource;
import javax.sql.DataSource;

import com.model.*;
public class UserDAO {
	// @Resource(lookup = "java:comp/env/jdbc/mfrppro")

    // private static DataSource dataSource;
	public User search(String id) throws ClassNotFoundException, SQLException
	{
		Connection con=null;
		User u1=null;
		try
		{
			String url="jdbc:mysql://localhost:3306/mfrpproject";   //last jdbc is database which we created
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mfrpproject","root","root");
				//String url="jdbc:mysql://localhost:3306/mfrp";   //last jdbc is database which we created
			//con = dataSource.getConnection();
				Statement stmt=con.createStatement();
				int id1=Integer.parseInt(id);
		
			String query="select customer_id,password,name FROM customer_registration where customer_id='"+id+"'";
			ResultSet rs=stmt.executeQuery(query);
			if(rs.next())
			{
				Long userid=rs.getLong(1);
				String userpass=rs.getString(2);
				String name=rs.getString(3);
				u1=new User(userid,userpass,name);
			}
		}catch(Exception ex)
		{
			System.out.println(ex);
		}
		finally
		{
			try
			{
				if(con!=null)
				{
					con.close();
					
				}
			}catch(Exception ex1)
			{
			System.out.println("closed");	
			}
		}
		return u1;
	}
	
}
