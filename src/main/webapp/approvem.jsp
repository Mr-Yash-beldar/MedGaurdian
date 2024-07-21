<%@page import="com.Yash.Medguardian.*" %>
<%@page import="com.Yash.connectivity.*" %>
<%@page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String id=request.getParameter("id");
try{
Connection con=ConnectDB.connect();
String query="Update medical set status='Approved' where mid=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,id);
int i=ps.executeUpdate();
if(i>0)
	response.sendRedirect("viewpendm.jsp");
else
	response.sendRedirect("fail.jsp");		
}catch(Exception e){
	e.printStackTrace();
}



%>	