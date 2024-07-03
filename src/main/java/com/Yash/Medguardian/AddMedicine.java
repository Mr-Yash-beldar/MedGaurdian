package com.Yash.Medguardian;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.time.LocalDate;
import java.time.Month;
import java.time.format.DateTimeFormatter;

import com.Yash.connectivity.ConnectDB;


/**
 * Servlet implementation class AddMedicine
 */
@MultipartConfig(maxFileSize = 16177215)
public class AddMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMedicine() {
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

		String medname=request.getParameter("medname");
		String medbname=request.getParameter("medbname");
		String medctgry=request.getParameter("medctgry");
		int medprice=Integer.parseInt(request.getParameter("medprice"));
		int meddisc=Integer.parseInt(request.getParameter("meddisc"));
		int medqty=Integer.parseInt(request.getParameter("medqty"));
		String medexdate=request.getParameter("medexdate");

        // Parse the input date string to LocalDate object
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate inputDate = LocalDate.parse(medexdate, formatter);
        // Calculate date after 2 months
        LocalDate dateBefore2Months = inputDate.minusMonths(2);
       
        String date = dateBefore2Months.format(formatter);
        	try {
			Connection con=ConnectDB.connect();
			PreparedStatement ps=con.prepareStatement("insert into medicines values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			InputStream inputStream = null; // input stream of the upload file
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("medimg");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());

	            //obtains input stream of the upload file
	            //the InputStream will point to a stream that contains
	            //the contents of the file
	            inputStream = filePart.getInputStream();
	        }
			
			ps.setInt(1,0);
			ps.setString(2, medname);
			if (inputStream != null) {
				//files are treated as BLOB objects in database
				//here we're letting the JDBC driver
				//create a blob object based on the
				//input stream that contains the data of the file
				ps.setBinaryStream(3, inputStream,inputStream.available());
			}
			ps.setString(4,medbname);
			ps.setInt(5, medprice);
			ps.setInt(6, medqty);
			ps.setString(7, medctgry);
			ps.setString(8, "Available");
			ps.setInt(9,meddisc);
			ps.setString(10, medexdate);
			ps.setString(11,date);
			ps.setString(12, Memail.getmEmail());
			ps.setString(13,"No");
			ps.setString(14,"No");
			int i=ps.executeUpdate();
			if(i>0)
				response.sendRedirect("AddMedicines.jsp");
			else
				response.sendRedirect("fail.jsp");		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
