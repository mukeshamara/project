<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1" import="java.util.*,com.model.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<%-- <head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home Page</title>

</head>
 

<body>
<%--
<% 
User name=(User)session.getAttribute("xyz"); 
		
out.print("Hello User: You have entered the name: "+name);
%>
 
 <h2> welcome user : ${sessionScope.xyz.userid}</h2>
		Search here: 
		 <select name="item">
  <option value="searchone" name="searched">search one</option>
  <option value="comics" name="searched">comics</option>
  <option value="romance" name="searched">romance</option>
  <option value="thriller" name="searched">thriller</option>
  <option value="emotion" name="searched">emotion</option>
</select>
<button type="submit" name="searchcategory" class="btn btn-primary">Search</button>
		
--%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Search</title>
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
       <!--  Navbar -->
       <%-- <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
         <a class="navbar-brand" href="#">Gain Knowledge---------!</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
         </button>
       --%>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
          
           <div class="navbar-right" style="color: white; font-size: 20px;">
              <div  class="nav-item dropdown" style="cursor: pointer">
                     <div class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           
                            <span style="border: 1px solid white; border-radius: 100%; margin-right: 10px; text-align: center">
                                  <span class="fa fa-user" style="padding-left: 10px; padding-right: 5px;"></span>
                            </span>
                                                
                            ${ sessionScope.xyz.userid}
                            
                     </div>
                     
                        <a class="active" href="lo.jsp"> Home Page </a>&emsp;
                        <a href="userincart.jsp"> Go to cart</a>&emsp;
                        <a href="cancel.jsp"> Ordered Details to cancel</a>&emsp;
                        <a href="order.jsp">Make Payment</a>&emsp;
                     	<a href="profile.jsp">Profile</a>&emsp;
                     	<a href="${pageContext.request.contextPath}/ordered.do">Ordered Details</a>&emsp;
                     	<a href="${pageContext.request.contextPath}/logout.do">Logout</a>&emsp;
                      </div>
              </div>
           </div>
         </div>
       </nav>
              
       
       
       <div class="wrapper container">
       
       <!-- Search window -->
   
       <div class=row style="margin-top: 50px;">
       
              <div class="container" style="background-color: rgba(0, 0, 0, .5); color: white; padding: 20px;">
                    
                     
              </div>
       
       </div>
       
       </div>
   

	<br></br>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"

            url="jdbc:mysql://localhost:3306/mfrpproject"

            user="root" password="root"

            var="mysrc"

    />
    
  
<form action="ord.do" method="post">
    <div class="form-group row">
    <label for="id"  class="col-sm-2 col-form-label">
    <font color="black">
    ${errm}
      <br></br>
    Customer ID
     </font>
    </label>
    
    <div class="col-sm-6">
      <input type="text" class="form-control" name="cus_id" id="cus_id" required />
    </div>
</div>
<div class="form-group row">
    <label for="text"  class="col-sm-2 col-form-label">
    <font color="black">
   
    Order ID
     </font>
    </label>
    <sql:query var="stmt" dataSource="${mysrc}">
        select * from order_payment_screen where customer_id='${sessionScope.xyz.userid}';

    </sql:query>
    
    <div class="col-sm-6">
   
               <select name="ord_id" id="ord_id" class="form-control" required>

                <option value="none">Select the order_id</option>
			
                <c:forEach var="rs" items="${stmt.rows}">

                    <option value="${rs.order_id}">${rs.order_id}</option>

                </c:forEach>

            </select>

            <br/>


<br></br>
    </div>
    <div class="col-sm-6" style="text-align: center;">
                                         <br/>
                                         <button type="submit" class="btn btn-primary" >  Submit</button>
                                  </div>
</div>
</form>
  </body>

</html>


