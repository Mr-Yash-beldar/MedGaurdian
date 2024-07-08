package com.Yash.Medguardian;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.*;
import java.time.format.DateTimeFormatter;

import com.Yash.connectivity.ConnectDB;

/**
 * Servlet implementation class MSignIn
 */
public class MSignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MSignIn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		try {
			Connection con=ConnectDB.connect();
			PreparedStatement ps=con.prepareStatement("select email from medical where email=? and mpass=? and status='Approved'");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				Memail.setmEmail(rs.getString(1));
				LocalDate currentDate = LocalDate.now();
		         DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		         PreparedStatement ps1=con.prepareStatement("select medid from medicines where date < ? < medexdate and email=?");
		         ps1.setString(1, formatter.format(currentDate));
		         
		         ps1.setString(2, Memail.getmEmail());
		         ResultSet rs1=ps1.executeQuery();
		         while(rs1.next()) {
		        	 PreparedStatement ps2=con.prepareStatement("Update medicines set nearexpire='Yes' where medid=?");
		        	 ps2.setInt(1, rs1.getInt(1));
		        	 int i=ps2.executeUpdate();
		        	 if(i>0)
		        		 System.out.println("Vakt aa gaya");
		        	 else
		        		 System.out.println("Time he abhi");
			         
		        	 
		         }
		         PreparedStatement ps2=con.prepareStatement("select medid from medicines where medexdate = ? and email=?");
		         ps2.setString(1, formatter.format(currentDate));
		         ps2.setString(2, Memail.getmEmail());
		         ResultSet rs2=ps2.executeQuery();
		         while(rs2.next()) {
		        	 PreparedStatement ps3=con.prepareStatement("Update medicines set expired='Yes' where medid=?");
		        	 ps3.setInt(1, rs2.getInt(1));
		        	 int i=ps3.executeUpdate();
		        	 if(i>0)
		        		 System.out.println("Tata bye bye gaya");
		        	 else
		        		 System.out.println("Time he abhi");
		        	 
		         }
		         PreparedStatement ps4=con.prepareStatement("select medid from medicines where medexdate < ? and email=?");
		         ps4.setString(1, formatter.format(currentDate));
		         ps4.setString(2, Memail.getmEmail());
		         ResultSet rs3=ps4.executeQuery();
		         while(rs3.next()) {
		        	 PreparedStatement ps5=con.prepareStatement("Delete from medicines  where medid=?");
		        	 ps5.setInt(1, rs3.getInt(1));
		        	 int i=ps5.executeUpdate();
		        	 if(i>0)
		        		 System.out.println("Deleted");
		        	 else
		        		 System.out.println("Time he abhi");
		         }
		         
				response.sendRedirect("welcomeMed.jsp");
			}
			else
				response.sendRedirect("msignin.jsp");
				
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
