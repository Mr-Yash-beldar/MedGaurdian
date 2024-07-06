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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.Yash.connectivity.ConnectDB;

/**
 * Servlet implementation class MedicalUpload
 */
@MultipartConfig(maxFileSize = 16177215)
public class MedicalUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MedicalUpload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**	
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	//"C:\Users\yasho\OneDrive\Desktop\SIHProject\eJusticeBharat\eJusticeBharat\src\main\java\com\Yash\ejusticeBharat\profile"
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		// TODO Auto-generated method stub
//		doGet(request, response);
		
		String mname=request.getParameter("mname");
		String mloc=request.getParameter("mloc");
		String mcinfo=request.getParameter("mcinfo");
		String mctgry=request.getParameter("mctgry");
		String mowner=request.getParameter("mowner");
		
		String mlic=request.getParameter("mlic");
		String mbtype=request.getParameter("mbtype");
		String mhystandards=request.getParameter("mhystandards");
		String mrecord=request.getParameter("mrecord");
		double mlat=Double.parseDouble(request.getParameter("mlat"));
		double mlang=Double.parseDouble(request.getParameter("mlang"));
		String email=request.getParameter("email");
		String mpass=request.getParameter("mpass");
		String mcustcheck=request.getParameter("mcustcheck");
		
	
		try {
			Connection con=ConnectDB.connect();
			PreparedStatement ps1=con.prepareStatement("select mid from medical where email=?");
			ps1.setString(1, email);
			ResultSet rs=ps1.executeQuery();
			if(rs.next())
				response.sendRedirect("fail.jsp");
			else {
			String medicalData="insert into medical values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			InputStream inputStream = null; // input stream of the upload file
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("mprofile");
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
			PreparedStatement ps=con.prepareStatement(medicalData);
			ps.setInt(1, 0);
			ps.setString(2, mname);
			ps.setString(3, mloc);
			ps.setString(4, mcinfo);
			ps.setString(5, mctgry);
			ps.setString(6, mowner);
			if (inputStream != null) {
                //files are treated as BLOB objects in database
                //here we're letting the JDBC driver
                //create a blob object based on the
                //input stream that contains the data of the file
            ps.setBinaryStream(7, inputStream,inputStream.available());
            }
			ps.setString(8, mlic);
			ps.setString(9, mbtype);
			ps.setString(10, mhystandards);
			ps.setString(11, mrecord);
			ps.setString(12, mcustcheck);
			ps.setString(13, "Pending");
			ps.setString(14, email);
			ps.setString(15, mpass);
			ps.setString(14, email);
			ps.setString(15, mpass);
			ps.setDouble(16, mlat);
			ps.setDouble(17, mlang);
			int i=ps.executeUpdate();
			if(i>0) {
				response.sendRedirect("msignin.jsp");
			}
			else {
				response.sendRedirect("medical.jsp");
			}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
