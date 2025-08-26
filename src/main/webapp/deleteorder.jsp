<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Order</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
			
            *{
				margin:0;
				padding:0;
                font-family: 'Poppins', sans-serif;
			}
			
            body{
				display:flex;
				min-height:100vh;
				align-items:center;
				justify-content:center;
				background-color: white;  /* Background color white */
			}
			
            .box{
				height:380px;
				width:400px;
				background: white;
				padding:20px;
                border-radius: 30px;
                padding-bottom: 30px;
                border: 2px solid red; /* Added red border */
			}
			
            .box div{
				color: red; /* Text color red */
				font-size:30px;
				font-weight:800;
				text-align:center;
				padding:20px 0;
			}
			
            .btn{
				border-radius:30px;
				color:#fff;
				margin-top:18px;
				padding:10px;
				background-color: red; /* Button background color red */
				font-size:18px;
				border:none;
				cursor:pointer;
			}
			
            .btn a{
				color: white;
				text-decoration: none;
			}
		</style>
<body>

<% 
String o_id = request.getParameter("o_id"); 
%>
		
<div class="box">
    <img alt="User" src="images/log2r.png">
    <form action="Orderdelete" method="post">
        <input type="text" name="o_id" placeholder="Enter Order ID" value="<%= o_id %>" required>
        <p>DELETE ORDER</p>
        <button type="submit" class="btn">DELETE</button>
    </form>
    <a href="Orderdetails" style="color: white; text-decoration: none;">Back to Home</a>
</div>

</body>
</html>
