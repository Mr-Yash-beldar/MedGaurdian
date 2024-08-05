<%@include file="files/imports.jsp" %>
<!DOCTYPE html>
<html lang="en">

<%@include file="files/head.jsp" %>
<body>
    <!-- Pre-loader start -->
<%@include file="files/preLoader.jsp" %>
    <!-- Pre-loader end -->
   <% String userName;
	
	String base64Image;
    try{					        	
		Connection con=ConnectDB.connect();
		PreparedStatement ps=con.prepareStatement("select uname,uprofile from users where uemail=?");
		ps.setString(1, Uemail.getuEmail());
		ResultSet rs=ps.executeQuery();
		if(rs.next()){
			userName=rs.getString(1);
       		byte[] imageData=rs.getBytes(2);
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
                                    <span><%=userName %></span>
                                    <i class="ti-angle-down"></i>
                                </a>
                                <ul class="show-notification profile-notification">
                                    
                                    <li class="waves-effect waves-light">
                                        <a href="usignin.jsp">
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
                                        <span id="more-details"><%=userName %><i class="fa fa-caret-down"></i></span>
                                    </div>
                                </div>
                                <div class="main-menu-content">
                                    <ul>
                                        <li class="more-details">
                                           
                                            <a href="usignin.jsp"><i class="ti-layout-sidebar-left"></i>Logout</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            
                            <div class="pcoded-navigation-label active">Near Medicine Store</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="active">
                                    <a href="userwel.jsp" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                        <span class="pcoded-mtext">List Near Medicals</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigation-label"> Buy Medicines</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu pcoded-trigger">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">View Medicines
                                        </span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="userallmed.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Search Medicines by Category</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                      
                                         
                                      
                            
                                    </ul>
                                </li>
                            </ul>
                               <div class="pcoded-navigation-label">Cart</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu ">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-id-badge"></i><b>A</b></span>
                                        <span class="pcoded-mtext">Orders </span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="Ordered.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Orders</span>
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
                                            <h2 class="m-b-10">Welcome  <%=userName %></h2>
                                            
                                            <p class="m-b-0">You can Buy Medicines With Discounted Prize only on Med Guardian...</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#"><%=userName %></a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="Ordered.jsp">Orders</a>
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
                                <div class="page-wrapper">
                                    <!-- Page body start -->
                                    <div class="page-body button-page">
                                        <div class="row">
                                            <!-- bootstrap modal start -->
                                              <div class="col-xl-6 col-md-12">
                                                <div class="card table-card">
                                                    <div class="card-header">
                                                        <h5>Medical's Near You</h5>
                                                        <div classdis="card-header-right">
                                                            <ul class="list-unstyled card-option">
                                                                <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                <li><i class="fa fa-trash close-card"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="card-block">
                                                        <div class="table-responsive">
                                                            <table class="table table-hover m-b-0 without-header">
                                                                <tbody>
                                                                   <% 
                                                                   try{
																        	//String memail=Memail.getmEmail();
																        	Connection con=ConnectDB.connect();
																        	PreparedStatement ps2=con.prepareStatement("select mname, mloc,mowner, profile,mlat,mlang from medical ");
																        	ResultSet rs=ps2.executeQuery();
																        	   double userlatitude = User.getLatitude();
																               double userlongitude = User.getLongitude();
																               double latitude;
																               double longitude;
																               double distance;
																               
																               ArrayList<RowData> rows = new ArrayList<RowData>();
																          		while(rs.next()){
																        		String mname=rs.getString(1);
																        		String add=rs.getString(2);
																        		String oname=rs.getString(3);
																        		byte[] imageData=rs.getBytes(4);
																        		String base64Image1=Base64.getEncoder().encodeToString(imageData);
																        		latitude = rs.getDouble(5);
																           	     longitude = rs.getDouble(6);
																        		distance = DistanceCalculator.calculateDistance(userlatitude, userlongitude, latitude, longitude);
																        		 int dis = (int)distance;
																        		 rows.add(new RowData(base64Image1,mname,oname,dis,add));
																          		}
																        		 
																        		 class RowDataComparator implements Comparator<RowData> {
																        	    	    @Override
																        	    	    public int compare(RowData r1, RowData r2) {
																        	    	        return Double.compare(r1.getDistance(), r2.getDistance());
																        	    	    }
																        	    	}

																        	    	// Sort the data based on distance in ascending order
																        	    	Collections.sort(rows, new RowDataComparator());
																        			 for (RowData row : rows) { %>
																  
                                                                    <tr>
                                                                        <td>
                                                                            <div class="d-inline-block align-middle">
                                                                                <img src="data:image/jpeg;base64,<%=row.getImage()%>" alt="user image" class="img-radius img-40 align-top m-r-15">
                                                                                <div class="d-inline-block">
                                                                                    <h6><%=row.getMname()%></h6>
                                                                                    <p class="text-muted m-b-0"><%=row.getOname()%>, <%=row.getAdd()%></p>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td class="text-right">
                                                                            <h6 class="f-w-700"><b><%=row.getDistance()%> KM</b><a href="https://www.google.com/maps/search/<%=row.getAdd()%>"> <i class="fa fa-external-link fa-2x text-c-blue m-l-10"></i></a></h6>
                                                                        </td>
                                                                    </tr> 
                                                                            
                                                                      <% }
																			  }catch(Exception e){	
        																			e.printStackTrace();
        																	}
     																  	%>
                                                                        
                                                                </tbody>
                                                            </table>

                                                        </div>
                                                    </div>
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
