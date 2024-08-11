<%@include file="files/imports.jsp" %>
<!DOCTYPE html>
<html lang="en">

<%@include file="files/head.jsp" %>
<body>
    <!-- Pre-loader start -->
<%@include file="files/preLoader.jsp" %>
    <!-- Pre-loader end -->
   <% String ownerName;
	String storeName;
	String base64Image;
    try{					        	
		Connection con=ConnectDB.connect();
		PreparedStatement ps=con.prepareStatement("select mname,mowner,profile from medical where email=?");
		ps.setString(1, Memail.getmEmail());
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			storeName=rs.getString(1);
			ownerName=rs.getString(2);
       		byte[] imageData=rs.getBytes(3);
			base64Image=Base64.getEncoder().encodeToString(imageData);
	%>
       
  
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <nav class="navbar header-navbar pcoded-header">
                <div class="navbar-wrapper">
                    <div class="navbar-logo">
                        <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                            <i class="ti-menu"></i>
                        </a>
                        <div class="mobile-search waves-effect waves-light">
                            <div class="header-search">
                                <div class="main-search morphsearch-search">
                                    <div class="input-group">
                                        <span class="input-group-prepend search-close"><i class="ti-close input-group-text"></i></span>
                                        <input type="text" class="form-control" placeholder="Enter Keyword">
                                        <span class="input-group-append search-btn"><i class="ti-search input-group-text"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="index.jsp">
                            <img class="img-fluid" src="assets/images/logo.png" alt="Theme-Logo" />
                        </a>
                        <a class="mobile-options waves-effect waves-light">
                            <i class="ti-more"></i>
                        </a>
                    </div>
                    <div class="navbar-container container-fluid">
                        <ul class="nav-left">
                            <li>
                                <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                            </li>
                            <li>
                                <a href="#!" onclick="javascript:toggleFullScreen()" class="waves-effect waves-light">
                                    <i class="ti-fullscreen"></i>
                                </a>
                            </li>
                        </ul>
                        <ul class="nav-right">
                       
                            </li>
                            <li class="user-profile header-notification">
                                <a href="#!" class="waves-effect waves-light">
                                    <img src="data:image/jpeg;base64,<%=base64Image%>" class="img-radius" alt="Owner-Profile-Image">
                                    <span><%=ownerName %></span>
                                    <i class="ti-angle-down"></i>
                                </a>
                                <ul class="show-notification profile-notification">
                                    
                                    <li class="waves-effect waves-light">
                                        <a href="msignin.jsp">
                                            <i class="ti-layout-sidebar-left"></i> Logout
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                        <div class="pcoded-inner-navbar main-menu">
                            <div class="">
                                <div class="main-menu-header">
                                    <img class="img-80 img-radius" src="data:image/jpeg;base64,<%=base64Image%>" alt="Owner-Profile-Image">
                                    <div class="user-details">
                                        <span id="more-details"><%=ownerName %><i class="fa fa-caret-down"></i></span>
                                    </div>
                                </div>
                                <div class="main-menu-content">
                                    <ul>
                                        <li class="more-details">
                                           
                                            <a href="msignin.jsp"><i class="ti-layout-sidebar-left"></i>Logout</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="pcoded-navigation-label">Medicine Store</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="">
                                    <a href="welcomeMed.jsp" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                        <span class="pcoded-mtext"><%=storeName %></span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigation-label">Medicine Sections</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu pcoded-trigger active">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">Medicine Details
                                        </span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="AddMedicines.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Add Medicines</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="ViewMedicines.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">View Medicines</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                           <li class="active">
                                            <a href="viewnearex.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Near Expiry Date Medicines</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                         <li class=" ">
                                            <a href="viewexpired.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Expired Medicines</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                      
                            
                                    </ul>
                                </li>
                            </ul>
                               <div class="pcoded-navigation-label">Orders</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-id-badge"></i><b>A</b></span>
                                        <span class="pcoded-mtext">Orders & Customers</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="Orders.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Orders</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="Customers.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Customers</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h2 class="m-b-10">Welcome to <%=storeName %></h2>
                                            <p class="m-b-0">We Provide  herbal and Ayurvedik Medicines With Discounted Prize...</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#"><%=storeName %></a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="orders.jsp">Orders</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
  		 <%  }}catch(Exception e){
        	e.printStackTrace();
       		 }
       		%>
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                 <div class="bg- rounded h-100 p-4">
                            <h6 class="mb-4">All Medicine Near to Expiry Date</h6>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Brand Name</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Category</th>
                                            <th scope="col">Price (Each)</th>
                                            <th scope="col">Discount</th>
                                            <th scope="col">Expiry Date</th>
                                            <th scope="col">Status</th>
                                             <th scope="col">Action</th>
                                            <th scope="col">Action</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                     <%  					        	
										try{
										Connection con=ConnectDB.connect();
										PreparedStatement ps=con.prepareStatement("select * from medicines where email=? and nearexpire='Yes' order by medstatus desc");
										ps.setString(1, Memail.getmEmail());
										ResultSet rs=ps.executeQuery();
										while(rs.next()){
									%>
                                        <tr>
                                            <th scope="row"><%=rs.getInt(1)%></th>
                                            <td><%=rs.getString(2)%></td>
                                            <td><%=rs.getString("medbname")%></td>
                                            <td><%=rs.getString("medqty")%></td>
                                            <td><%=rs.getString("medctgry")%></td>
                                            <td><%=rs.getString("medprice")%></td>
                                            <td><%=rs.getString("meddisc")%>%</td>
                                            <td><%=rs.getString("medexdate")%></td>
                                            <td><i class="text-c-blue"><%=rs.getString("medstatus")%></i></td>
                                        	 <td><a href="updatem.jsp?id=<%=rs.getInt(1)%>"><i class="text-c-green">Update</i></a></td> 
                                            <td><a href="DeleteMedicine.jsp?id=<%=rs.getInt(1)%>"><i class="text-c-red">Delete</i></a></td>
                                        </tr>
                                        
                                        <% }}catch(Exception e){
        											e.printStackTrace();
       															 }
       											%>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                                             </div>
                                        </div>
                                                <!-- Basic Form Inputs card end -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Page body end -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Main-body end -->

                    <div id="styleSelector">

                    </div>
                </div>
            </div>
        </div>
    </div>


<%@include file="files/javaScript.jsp" %>
</body>

</html>
