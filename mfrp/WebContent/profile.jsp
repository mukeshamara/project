 <%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home Page</title>

</head>
 

<body>
<%--
<% 
User name=(User)session.getAttribute("xyz"); 
		
out.print("Hello User: You have entered the name: "+name);
%>
 
 

    <sql:setDataSource driver="com.mysql.jdbc.Driver"

            url="jdbc:mysql://localhost:3306/mfrpproject"

            user="root" password="root"

            var="mysrc"

    />

   


    <sql:query var="stmt" dataSource="${mysrc}">

        select * from customer_registration where customer_id='${sessionScope.xyz.userid}';

    </sql:query>
    

    <table border='1'>

        <tr>
           <th>click here</th> <th>User Id</th><th>User Name</th><th>Address</th>

        </tr>

        <c:forEach var="rs" items="${stmt.rows}">
	
            <tr>
				<td><input  type="checkbox" name="book_id" value="${rs.book_id}"></td>
                <td>${rs.customer_id}</td>

                <td>${rs.name}</td>
					
                <td>${rs.email}</td>
				<td>
				
		<td/>
            </tr>

        </c:forEach>
        
        	
			<input type="submit" value="Add to Cart"/>
		

    </table>

  </body>

</html>

--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

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
   
          
              </div>
       
       </div>
       
       </div>
      
 <sql:setDataSource driver="com.mysql.jdbc.Driver"

            url="jdbc:mysql://localhost:3306/mfrpproject"

            user="root" password="root"

            var="mysrc"

    />

   

 

    <sql:query var="stmt" dataSource="${mysrc}">

        select * from customer_registration where customer_id='${sessionScope.xyz.userid}';

    </sql:query>
    <form action="editprofile.jsp">

    

        <c:forEach var="rs" items="${stmt.rows}">
	
           <div class="row">
<div class="container offset-md-6 col-lg-6" style="background-color: rgba(0, 0, 0, 0); color: white;">
<div class="container" style="padding: 30px;">
<h1>
<font color="black">
Profile
</font>
</h1>
</div>
<div class="container">
<form action="payment.do" onsubmit="return validateForm()" method="post">
<div class="form-group row">
    <label for="id"  class="col-sm-2 col-form-label">
    <font color="black">
   
    Customer ID
     </font>
    </label>
    
    <div class="col-sm-6">
      ${rs.customer_id}
      
    </div>
</div>
<div class="form-group row">
    <label for="text"  class="col-sm-2 col-form-label">
    <font color="black">
   
    Name
     </font>
    </label>
    
    <div class="col-sm-6">
     

${rs.name}

    </div>
</div>
<div class="form-group row">
    <label for="text"  class="col-sm-2 col-form-label">
    <font color="black">
   
   Date Of Birth
     </font>
    </label>
    
    <div class="col-sm-6">
      ${rs.date_of_birth}
</div>
<div class="form-group row">
    <label for="text"  class="col-sm-2 col-form-label">
    <font color="black">
   
    Mobile Number
     </font>
    </label>
    
    <div class="col-sm-6">
      ${rs.contact_number}
</div>
<div class="form-group row">
    <label for="text"  class="col-sm-2 col-form-label">
    <font color="black">
  
    Email 
     </font>
    </label>
    
    <div class="col-sm-6">
     ${rs.email_address}
</div>

<p>
</p>
<div class="form-group container" style="display: inline-block;">
<input class="btn btn-success" type="submit" value="Edit The Profile" />
</div>
</form>
</div>
</div>
</div>

        </c:forEach>
        
        	
		
		</form>

    </table>

  </body>

</html>

