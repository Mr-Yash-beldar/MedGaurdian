<%@include file="files/imports.jsp"%>
<%
String id=request.getParameter("medid");
try{
Connection con=ConnectDB.connect();
String query="update  medicines set medstatus='Unavailable' where medid=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,id);
int i=ps.executeUpdate();
if(i>0)
	response.sendRedirect("userallmed.jsp");
else
	response.sendRedirect("fail.jsp");		
}catch(Exception e){
	e.printStackTrace();
}


%>