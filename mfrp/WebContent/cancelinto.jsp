<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="cancel.do" method="post">
	User: <input type="text" name="cus_id"/><br/>
		order id: <input type="text" name="order_id"/><br/>
		<input type="submit" value="submit"/><br/>
	</form>
	
</body>
</html>

--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.dao.*,com.model.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OrderCancellation</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../css/bootstrap.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>

<style type="text/css">
body {
  background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1)),url(image.jpg);

 

       height:100vh;

 

       background-size:cover;

 

       background-position:center;
}
label {
font-weight: bold;
}
</style>
</head>
<body>
<div class="row">
<div class="container offset-md-6 col-lg-6" style="background-color: rgba(0, 0, 0, 0); color: white;">
<div class="container" style="padding: 30px;">
<h1>
<center>
<font color="black">
Order Cancellation
</font>
</center>
</h1>
</div>
<div class="container">
<div class="form-group row">
    <label for="id"  class="col-sm-2 col-form-label">
    <font color="black">
      
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
    
    <div class="col-sm-6">
      <input type="text" class="form-control" name="order_id" id="order_id" required />
    </div>
</div>
<div class="form-group row">
    <label for="text"  class="col-sm-2 col-form-label">
    <font color="black">
<p>
</p>
 <span style="font-size: 48px; color: white; font-weight: bolder; padding-top: 20px">
                     Search Results
              </span>
              
              <br></br>
             <table>
              			<tr>
              				<th>Book ID&nbsp;</th>
              				<th>Book Name&nbsp;</th>
              				<th>Booked Quantity&nbsp;</th>              				
              			</tr>
              
              <!-- <ul class="container list-group" style="margin-top: 50px; margin-bottom: 50px;"> -->
              
                     <% 
                     List<cancelmenu> list = (List<cancelmenu>) request.getAttribute("search");
                     
                     for(cancelmenu c : list) { %>
              
              		
              			<tr>
              				<td><%= c.getBook_id()  %></td>&nbsp;
              				<td><%= c.getBook_name()  %></td>&nbsp;
              				<td><%= c.getQuantity()  %></td>  &nbsp;            				
              			</tr>
              			
              		<% } %>
             		
              		</table>
              
              	<!-- 
                     <li class="list-group-item">                          
                     
                                  <div class=" result_item row">
                                         <div class="col">
                                               Book ID 
                                         </div>
                                  
                                         <div class="col">
                                             Book Name   
                                         </div>
                                  
                                         <div class="col">
                                         
                                          	Booked Quantity   <br/>
                                                
                                         
                                         </div>
                                  
                                                
                                  </div>
                                                      
                     </li>
                     
                      -->
                     
                     
                                         
                     
              
              <!-- </ul> -->
              
       </div>
       
</div>
</div>
</div>
<div class="form-group container" style="display: inline-block;">
<form action="cancel.do" method="post">
<input class="btn btn-success" type="submit" value="Cancel" />
</div>
</form>
</body>
</html>
