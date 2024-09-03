<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*"%>

<%

String emailAdd=request.getParameter("username");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","siraj");

PreparedStatement ps=con.prepareStatement(" SELECT * from concert where EmailAdd=? && Password=?;");
ps.setString(1,emailAdd);
ps.setString(2,password);

ResultSet rs=ps.executeQuery();

if(rs.next()){
	HttpSession ss=request.getSession();
	ss.setAttribute("user", emailAdd);
	
	Cookie userCookie=new Cookie("username",emailAdd);
	userCookie.setMaxAge(48*60*60*100);
	response.addCookie(userCookie);
	
	Cookie passwordCookie=new Cookie("password",password);
	userCookie.setMaxAge(48*60*60*100);
	response.addCookie(userCookie);
	
	%>

<script>alert('Login successful');
window.location.href="dashboard.jsp";
</script>


<%}
else{ %>
<script>alert('Login failed');
window.location.href="login.jsp";
</script>

<% 
}con.close();
ps.close();
%>