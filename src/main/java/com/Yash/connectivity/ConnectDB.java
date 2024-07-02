package com.Yash.connectivity;
import java.sql.*;

public class ConnectDB {
	static Connection con=null;
	public static Connection connect() {
		String url="jdbc:mysql://localhost:3306/medguardian";
		String userName="root";
		String password="";
		if(con==null) {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url,userName,password);
		}
		catch(Exception e)
		{
			System.err.println("SomeThing Went Wrong.....");
			e.printStackTrace();
		}
		}
		return con;
		
		
	}

}
