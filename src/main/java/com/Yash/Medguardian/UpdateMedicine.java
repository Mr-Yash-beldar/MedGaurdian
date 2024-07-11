package com.Yash.Medguardian;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

import com.Yash.connectivity.ConnectDB;

/**
 * Servlet implementation class UpdateMedicine
 */
public class UpdateMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMedicine() {
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
		try {
			int medprice=Integer.parseInt(request.getParameter("medprice"));
			int medqty=Integer.parseInt(request.getParameter("medqty"));
			int meddisc=Integer.parseInt(request.getParameter("meddisc"));
			int medid=Integer.parseInt(request.getParameter("medid"));
			System.out.println(medprice);
			System.out.println(medqty);
			System.out.println(meddisc);
			System.out.println(medid);
			Connection con=ConnectDB.connect();
			PreparedStatement ps=con.prepareStatement("Update medicines set medprice=?,medqty=?,meddisc=? where medid=?");
			ps.setInt(1, medprice);
			ps.setInt(2, medqty);
			ps.setInt(3, meddisc);
			ps.setInt(4, medid);
			int i=ps.executeUpdate();
			if(i>0)
				response.sendRedirect("ViewMedicines.jsp");
			else
				response.sendRedirect("fail.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
