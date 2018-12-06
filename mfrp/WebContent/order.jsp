<%--  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<form action="totalprice.do" method="post">
		${errmsg}
		User id: <input type="text" name="user_id"/><br/>
		User name: <input type="text" name="user_name"/><br/>
		<input type="submit" value="submit"/><br/>
		</form>
</body>
</html>

--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<style type="text/css">
body {
       background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1)),url(image.jpg);

 

       height:100vh;

 

       background-size:cover;

 

       background-position:center;
       
        align:center;
}
label {
font-weight: bold;
}
#align
{
 
        text-align: center;

}
</style>
</head>
<body>
 <h1><center>Welcome To Book Mart
    </center>
   </h1>
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
              
<div class="wrapper row justify-content-center">
  
<div class="container col-sm-4" style="background-color: rgba(0, 0, 0,0); color: white; margin-top: 100px; padding-bottom: 50px">
<div class="row justify-content-center" id="align" style="padding: 10px; padding-bottom: 0px;">
<h2>
<font color="black">
To make payment please fill the below details
</font>
</h2> <br/>
</div> 
<div class="row justify-content-center" id="align" style="padding: 10px; padding-bottom: 0px;">
</div> 
<div class="row justify-content-center" style="padding: 5px;"> 
${errmsg}
${errmsg10}
</div>
<div class="container">
<form action="totalprice.do" method="post">
<div class="form-group row">
<label for="user _id" class="offset-sm-1 col-sm-2 col-form-label ">
<font color="black">
User ID
</font>
</label>
<div class="col-sm-8">
<input type="text" class="form-control" name="user_id" id="user_id" >
</div>
</div>
<div class="form-group row">
    <label for="username"  class="offset-sm-1 col-sm-2 col-form-label ">
    <font color="black">
    User Name
    </font>
    </label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name="user_name" id="user_name" placeholder="Enter your user id" >
    </div>
</div>

<div class="row justify-content-center">
<button class="btn btn-success" type="submit" style="margin: 10px;">Login</button>
<button class="btn btn-light" type="reset" style="margin: 10px;">Reset</button>
</div>
</form>
</div>
</div>
</div>
</body>
</html>
