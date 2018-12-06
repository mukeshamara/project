<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<form action="cartusingavax.jsp">
 			<input type="text" class="form-control" name="username" id="username" placeholder="Enter your user id" /><br/>
 			<input type="submit" value="submit"/><br/>
			</form>
</body>
</html>
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
   
       <div class=row style="margin-top: 50px;">
       
              <div class="container" style="background-color: rgba(0, 0, 0, .5); color: white; padding: 20px;">
                     
                    
                      <h4>${errmsg10}</h4>
                    
                     
                         
                           
                           <br/>
                           
                           <div class="form-row">
                               <form action="cartpage.do" method="post">
                                  <div class="col-sm-6">
                                         <label> Submit</label>
										<form action="cartpage.do" method="post">
 			<input type="text" class="form-control" name="username" id="username" placeholder="Enter your user id" /><br/>
                                 </div>
                                  
                                  <div class="col" style="text-align: center;">
                                         <br/>
                                         <button class="btn btn-success" type="submit" style="margin: 10px;">Submit</button>
                                  </div>
                                  
                                  <div class="col-sm-6">
                                  <h2> If you want to add more books go to home page or click below link</h2>
                                  <br></br>
                                  <a href="lo.jsp"> Click this to add more books</a>
                          
                           </div>
                     
                     </form>
                     
              </div>
       
       </div>
       
       </div>
       
      
</body>
</html>