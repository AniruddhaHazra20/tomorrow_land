<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>

<%
int regno;
String fullname, emailadd, password, mobile, city, artist, seat;

regno=Integer.parseInt(request.getParameter("regno"));
fullname=request.getParameter("fullname");
emailadd=request.getParameter("emailadd");
mobile=request.getParameter("mobile");
city=request.getParameter("gender");
artist=request.getParameter("department");
address=request.getParameter("address");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb", "root", "Aniruddha1234");

String sql="INSERT INTO register VALUES(?,?,?,?,?,?,?);";

PreparedStatement ps=con.prepareStatement(sql);

ps.setInt(1,regno);
ps.setString(2,fullname);
ps.setString(3,emailadd);
ps.setString(4,mobile);
ps.setString(5,gender);
ps.setString(6,department);
ps.setString(7,address);

ps.executeUpdate();
ps.close();
con.close();

%>

<script>
alert('Student Registered Successfully');
</script>


<%
response.sendRedirect("index.jsp");
%> 