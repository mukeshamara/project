<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<style>
       body {
       
              
  background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1)),url(image.jpg);

 

       height:100vh;

 

       background-size:cover;

 

       background-position:center;
       
       }
</style>
</head>
<body>

<h2> welcome user : ${sessionScope.xyz.userid}</h2>

		<h1> Added sucessfully</h1>
		<sql:setDataSource driver="com.mysql.jdbc.Driver"

            url="jdbc:mysql://localhost:3306/mfrpproject"

            user="root" password="root"

            var="mysrc"

    />
   <%--  <% User usid=(User)session.getAttribute("xyz"); %>--%>
 <%String userid=(String)session.getAttribute("user");%>
    <sql:query var="stmt" dataSource="${mysrc}">

        select * from add_to_cart;

    </sql:query>
    

    <table border='1'>

        <tr>

           <th>Book_id</th><th>Customer_id</th><th>Quantity</th>

        </tr>

        <c:forEach var="rs" items="${stmt.rows}">
	
            <tr>
				
                <td>${rs.book_id}</td>

                <td>${rs.customer_id}</td>
					
                <td><input type="text" name="quantity" value="0"/></td>
                <%-- <% String x=(String)request.getParameter("quantity"); 
				<td><input  type="checkbox" name="book_id" value="x"></td>
            </tr> --%>

        </c:forEach>
        <form action="print.do" method="post">
			<input type="submit" value="Add to Cart"/>
		</form>
		  </table>
		<%-- <a href="lo.jsp">To add more books</a> --%>
</body>
</html>