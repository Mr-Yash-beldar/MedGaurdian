<%@include file="files/imports.jsp" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="files/head.jsp" %>
<body>
    <!-- Pre-loader start -->
    <%@include file="files/preLoader.jsp" %>
    <!-- Pre-loader end -->
    <%@include file="files/adminNavbar.jsp" %>


            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                        <div class="pcoded-inner-navbar main-menu">
                            <div class="">
                                <div class="main-menu-header">
                                    <img class="img-80 img-radius" src="assets/images/avatar-4.jpg" alt="User-Profile-Image">
                                    <div class="user-details">
                                        <span id="more-details">Admin<i class="fa fa-caret-down"></i></span>
                                    </div>
                                </div>
                                <div class="main-menu-content">
                                    <ul>
                                        <li class="more-details">
                                            <a href="adminsignin.jsp"><i class="ti-layout-sidebar-left"></i>Logout</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                          <!--  <div class="p-15 p-b-0">
                                <form class="form-material" action="admin.jsp" method="post">
                                    <div class="form-group form-primary">
                                        <input type="search" name="footer-email" class="form-control">
                                        <span class="form-bar"></span>
                                        <label class="float-label"><i class="fa fa-search m-r-10"></i>Search By Category</label>
                                        
                                    </div>
            
                                </form>
                            </div> -->
                            <div class="pcoded-navigation-label">Registration Request</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="active">
                                    <a href="admin.jsp" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                        <span class="pcoded-mtext">Notifications</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigation-label">Medicals</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">View Medicals</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="viewallm.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">View All</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="viewappm.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Approved Medicals</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="viewpendm.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Pending Medicals</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
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
                                            <h5 class="m-b-10"></h5>
                                            <h2 class="m-b-0">Welcome to Med <i class="fa fa-medkit text-c-red" > </i> Guardian</h2>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Pending Registration</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content">



                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <div class="page-body">

                                
                                        <div class="row">
                                            <!-- Material statustic card start -->
                                           <!-- order-visitor end -->

                                            <!--  sale analytics start -->
                                            <div class="col-xl-6 col-md-12">
                                                <div class="card table-card">
                                                    <div class="card-header">
                                                        <h5>Medical's Registration</h5>
                                                        <div class="card-header-right">
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
                                                                   <% int approve=0,pending=0;
                                                                   try{
																        	//String memail=Memail.getmEmail();
																        	Connection con=ConnectDB.connect();
																        	PreparedStatement ps=con.prepareStatement("select mname, mloc,mowner, profile,status from medical ");
																        	ResultSet rs=ps.executeQuery();
																        		while(rs.next()){
																        			if(rs.getString("status").equals("Pending"))
																        				pending++;
																        			else
																        				approve++;
																        		byte[] imageData=rs.getBytes(4);
																        		String base64Image=Base64.getEncoder().encodeToString(imageData);
																        	if(rs.getString("status").equals("Pending")){	
																       %>
                                                                    <tr>
                                                                        <td>
                                                                            <div class="d-inline-block align-middle">
                                                                                <img src="data:image/jpeg;base64,<%=base64Image%>" alt="user image" class="img-radius img-40 align-top m-r-15">
                                                                                <div class="d-inline-block">
                                                                                    <h6><%=rs.getString(1)%></h6>
                                                                                    <p class="text-muted m-b-0"><%=rs.getString(3) %> , <%=rs.getString(2)%></p>
                                                                                </div>
                                                                            </div>
                                                                        </td>
                                                                        <td class="text-right">
                                                                            <h6 class="f-w-700">Pending...<i class="fas fa-level-down-alt text-c-red m-l-10"></i></h6>
                                                                        </td>
                                                                    </tr>         
                                                                      <% }}
																      
																       %>
																    <tr>
                                                                        <td>
                                                                            <div class="d-inline-block align-middle">
                                                                               <h6 class="f-w-700">Pending Requests Not Available</h6>
                                                                            </div>
                                                                        </td>
                                                                    </tr>   
																        <% }catch(Exception e){	
        																			e.printStackTrace();
        																	}
     																  	%>
                                                                        
                                                                </tbody>
                                                            </table>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-6 col-md-12">
                                                <div class="row">
                                                    <!-- sale card start -->

                                                    <div class="col-md-6">
                                                        <div class="card text-center order-visitor-card">
                                                            <div class="card-block">
                                                                <h6 class="m-b-0">Pending Registration </h6>
                                                                <h4 class="m-t-15 m-b-15"><i class="fa fa-arrow-down m-r-15 text-c-red"></i><%=pending%></h4>
                                                                <p class="m-b-0">Total Count of Pending Registration</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="card text-center order-visitor-card">
                                                            <div class="card-block">
                                                                <h6 class="m-b-0">Approved Medicals</h6>
                                                                <h4 class="m-t-15 m-b-15"><i class="fa fa-arrow-up m-r-15 text-c-green"></i><%=approve%></h4>
                                                                <p class="m-b-0">Total Count of Approved Medicals</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <!-- sale card end -->
                                                </div>
                                            </div>

                                            <!--  sale analytics end -->

                                            <!-- Project statustic start -->
                                            
                                            <!-- Project statustic end -->
                                        </div>
                                    </div>
                                    <!-- Page-body end -->
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


  <%@include file="files/javaScript.jsp" %>
</body>

</html>
