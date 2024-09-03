<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PROJECT DEMO</title>
<link rel="stylesheet" href="signupstyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>


<body>
<%@ page import="java.sql.*"%>
<div class="header">
	<h1>Welcome to <span> TOMORROWLAND!!!</span></h1>
	
	<div class=buttons>
	<button onclick="toggle()">Get Passes!</button>
	<a href="login.jsp">Login</a>
	</div>
	
	</div>



	
<div class="popup" id="popup">
	<div class="title">
		<h2>PASS BUY-IN</h2>
	</div>
	
	<form method="post" action="passAdd.jsp">
		
		<div class="field">
			<label>Full name</label>
			<input type="text" name="fullname" required>
		</div>
		<div class="field">
			<label>Email ID</label>
			<input type="email" name="emailadd" required>
		</div>
		
		<div class="field">
			<label>Password</label>
			<input type="password" name="password" required>
		</div>
		
		<div class="field">
			<label>Contact No</label>
			<input type="number" maxlength="10" name="mobile" required>
		</div>
		
		<div class="field">
			<label>City</label>
			<input type="text" name="city" required>
		</div>
		
		<div class="field">
			<label>Artist</label>
			<select name="artist">
				<option value="" selected>Artist</option>
				<option value="artista" >Artist A</option>
				<option value="artistb">Artist B</option>
			</select>
		</div>
		
		<div class="field">
			<label>Seat Access</label>
			<select name="seat">
				<option value="" selected>Seat Access</option>
				<option value="ground" >Ground Access</option>
				<option value="standa" >Stand A</option>
				<option value="standb" >Stand B</option>
				<option value="pit" >Pit Access</option>
				
			</select>
		</div>
		
		<div class="action-field">
			<input type="submit" value="Register Now!">
		</div>
	</form>
</div>


<script>
	function toggle(){
		var popup=document.querySelector("#popup")
		if(popup.style.display=='none'){
			popup.style.display='block';
		}
		else{
			popup.style.display='none';
		}
	}
</script>
</body>
</html>