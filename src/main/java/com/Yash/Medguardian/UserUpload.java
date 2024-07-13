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
 * Servlet implementation class UserUpload
 */
@MultipartConfig(maxFileSize = 16177215)
public class UserUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpload() {
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
		
		String uname=request.getParameter("uname");
		String uadd=request.getParameter("uadd");
		String ucinfo=request.getParameter("ucinfo");
		String uag=request.getParameter("uag");
		double ulat=Double.parseDouble(request.getParameter("ulat"));
		double ulang=Double.parseDouble(request.getParameter("ulng"));
		String uemail=request.getParameter("uemail");
		String upass=request.getParameter("upass");
		System.out.println(ulat+uname);

	
		try {
			Connection con=ConnectDB.connect();
			PreparedStatement ps1=con.prepareStatement("select uid from users where uemail=?");
			ps1.setString(1, uemail);
			ResultSet rs=ps1.executeQuery();
			if(rs.next())
				response.sendRedirect("addUser.jsp");
			else {
			String userData="insert into users values (?,?,?,?,?,?,?,?,?)";
			InputStream inputStream = null; // input stream of the upload file
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("uprofile");
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
			PreparedStatement ps=con.prepareStatement(userData);
			ps.setInt(1, 0);
			ps.setString(2, uname);
			ps.setString(3, uag);
			ps.setString(4, uadd);
			ps.setDouble(5, ulat);
			ps.setDouble(6, ulang);
			if (inputStream != null) {
                //files are treated as BLOB objects in database
                //here we're letting the JDBC driver
                //create a blob object based on the
                //input stream that contains the data of the file
            ps.setBinaryStream(7, inputStream,inputStream.available());
            }
			ps.setString(8, uemail);
			ps.setString(9, upass);
		
			int i=ps.executeUpdate();
			if(i>0) {
				response.sendRedirect("usignin.jsp");
			}
			else {
				response.sendRedirect("addUser.jsp");
			}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
