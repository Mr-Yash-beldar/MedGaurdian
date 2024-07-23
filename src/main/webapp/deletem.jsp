<%@include file="files/imports.jsp"%>
<%
String id=request.getParameter("id");
try{
Connection con=ConnectDB.connect();
String query="delete from medical where mid=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,id);
int i=ps.executeUpdate();
if(i>0)
	response.sendRedirect("viewallm.jsp");
else
	response.sendRedirect("fail.jsp");		
}catch(Exception e){
	e.printStackTrace();
}


%>