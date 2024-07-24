<%@include file="files/imports.jsp"%>
<%
String id=request.getParameter("id");
try{
Connection con=ConnectDB.connect();
String query="delete from medicines where medid=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,id);
int i=ps.executeUpdate();
if(i>0)
	response.sendRedirect("ViewMedicines.jsp");
else
	response.sendRedirect("fail.jsp");		
}catch(Exception e){
	e.printStackTrace();
}


%>