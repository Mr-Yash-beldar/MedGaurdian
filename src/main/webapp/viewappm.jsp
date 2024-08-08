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
                                            <a href="adminsignin.html"><i class="ti-layout-sidebar-left"></i>Logout</a>
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
                                <li class="">
                                    <a href="admin.jsp" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                        <span class="pcoded-mtext">Notifications</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="pcoded-navigation-label">Medicals</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu active">
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
                                        <li class="active">
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
                                            <h2 class="m-b-10"> Med <i class="fa fa-medkit text-c-green"></i> Guardian</h2>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Approved Medicals</a>
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
                                            
                           <div class="col-12">
                        <div class="bg- rounded h-100 p-4">
                            <h6 class="mb-4">Approved Medical List</h6>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Store Name</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">Contact Number</th>
                                            <th scope="col">Category</th>
                                            <th scope="col">Owner Name</th>
                                            <th scope="col">License No</th>
                                            <th scope="col">Bussiness Type</th>
                                            <th scope="col">Hygeine Standards</th>
                                            <th scope="col">Login Permission</th>
                                            <th scope="col">Action</th>
                                            
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%  
                                       try{					        	
										Connection con=ConnectDB.connect();
										PreparedStatement ps=con.prepareStatement("select mid,mname, mloc,mcinfo,mctgry,mowner,mlic,mbtype,mhystandards, status from medical where status='Approved'");
										ResultSet rs=ps.executeQuery();
										while(rs.next()){
											
									%>
                                        <tr>
                                            <th scope="row"><%=rs.getInt(1)%></th>
                                            <td><%=rs.getString(2)%></td>
                                            <td><%=rs.getString(3)%></td>
                                            <td><%=rs.getString(4)%></td>
                                            <td><%=rs.getString(5)%></td>
                                            <td><%=rs.getString(6)%></td>
                                            <td><%=rs.getString(7)%></td>
                                            <td><%=rs.getString(8)%></td>
                                            <td><%=rs.getString(9)%></td>
                                            <td><i class="fa fa-check"></i></td>
                                            <td><a href="cancelm.jsp?id=<%=rs.getInt(1)%>status=Pending"><i class="text-c-red">Cancel</i></a></td> 
                                        </tr>
                                        
                                        <% }}catch(Exception e){
                                        	e.printStackTrace();
                                        }%>
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
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
