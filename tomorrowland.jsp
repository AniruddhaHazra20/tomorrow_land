<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="loginstyle.css">
</head>

<body>

<%
String username="", password="";

HttpSession ss=request.getSession();
Object user=ss.getAttribute("user");
if(user!=null)
{ response.sendRedirect("dashboard.jsp");
}
else{
	Cookie cookies[]=request.getCookies();
	
	for(int i=0; i<cookies.length;i++)
	{
		if(cookies[i].getName().equals("username"))
		{
			username=cookies[i].getValue();
		}
		if(cookies[i].getName().equals("password"))
		{
			password=cookies[i].getValue();
		}
	}
	
}


%>


<div class="login">
	<form method="post" action="checkLogin.jsp">
	<h1>Login</h1>
	<input type="email" name="username" value="<%=username%>" placeholder="Username">
	<input type="password" name="password" value="<%=password%>" placeholder="Password">
	<input type="submit" placeholder="Login">
	
	</form>

</div>
</body>
</html>