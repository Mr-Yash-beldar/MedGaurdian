package com.Yash.Medguardian;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Yash.connectivity.ConnectDB;

/**
 * Servlet implementation class USignIN
 */
public class USignIN extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public USignIN() {
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
			PreparedStatement ps=con.prepareStatement("select ulat,ulng,uemail from users where uemail=? and upass=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				User.setLatitude(rs.getDouble(1));
				User.setLongitude(rs.getDouble(2));
				Uemail.setuEmail(rs.getString(3));
				response.sendRedirect("userwel.jsp");
			}
			else
			{
				response.sendRedirect("usignin.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
