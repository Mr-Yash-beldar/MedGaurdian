<%@page import="com.Yash.Medguardian.*" %>
<%@page import="com.Yash.connectivity.*" %>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String id=request.getParameter("id");
String status=request.getParameter("status");

try{
Connection con=ConnectDB.connect();
String query="Update medical set status=? where mid=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,status);
ps.setString(2,id);
int i=ps.executeUpdate();
if(i>0)
	response.sendRedirect("viewappm.jsp");
else
	response.sendRedirect("fail.html");		
}catch(Exception e){
	e.printStackTrace();
}



%>	