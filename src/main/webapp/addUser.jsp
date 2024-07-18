<%@include file="files/imports.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@include file="files/head.jsp" %>
<body>
    <!-- Pre-loader start -->
    <%@include file="files/preLoader.jsp" %>

    <!-- Pre-loader end -->
     <%@include file="files/first.jsp" %>
     <%
     		String uadd=request.getParameter("add");
     		String ulat=request.getParameter("lat");
     		String ulang=request.getParameter("lng");
     %>

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                        <div class="pcoded-inner-navbar main-menu">
                            <div class="pcoded-navigation-label">Authentication</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu active">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">User Logins</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="usignin.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Sign In</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class="active">
                                            <a href="adduser.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Sign Up</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                    </ul>
                    </nav>
    
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">User Sign Up </h5>
                                            <p class="m-b-0">You First need To Sign Up to Explore Medicals </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="usignin.jsp">Sign In</a>
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

                                    <!-- Page body start -->
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <!-- Basic Form Inputs card start -->
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>User Sign Up</h5>
                                                        <!-- <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span> -->
                                                    </div>
                                                    <div class="card-block">
                                                        <h4 class="sub-title"><b>Personal Details</b></h4>
                                                        <form action="UserUpload " method="post" onsubmit="return validation()" enctype="multipart/form-data">
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Your Name</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="uname" class="form-control" placeholder="Enter Name" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                       
                                                                <div class="col-sm-10">
                                                                    <button type="button" class=" btn waves-effect waves-light btn-primary btn-center"><a href="user.html"><i class="fa fa-map-marker"> Choose Location</i></a></button>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Address</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="uadd" value="<%=uadd %>" class="form-control" placeholder="Address" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Latitude</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="ulat" value="<%=ulat%>" class="form-control" placeholder="Latitude" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Longitude</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="ulng" value="<%=ulang%>" class="form-control" placeholder="Longitude" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Contact Information </label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="ucinfo" class="form-control" placeholder="Contact Number" maxlength="10" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Age Group</label>
                                                                <div class="col-sm-10">
                                                                    <select name="uag" class="form-control" required>
                                                                        <option value="Child">Child</option>
                                                                        <option value="Adult">Adult</option>
                                                                        <option value="Old">Old</option>
                                                                        
                                                                    </select>
                                                                </div>
                                                            </div>
                                                          
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">User Profile</label>
                                                                <div class="col-sm-10">
                                                                    <input type="file" name="uprofile" class="form-control form-control-primary">
                                                                </div>
                                                            </div>
                                                            
                                                            
                                     
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Email
                                                                    </label>
                                                                <div class="col-sm-10">
                                                                    <input type="email" name="uemail" class="form-control form-control-primary" placeholder="Registration Email" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Password</label>
                                                                <div class="col-sm-10">
                                                                    <input type="password" name="upass" class="form-control form-control-round form-control-warning" placeholder="Password" maxlength="8" required>
                                    
                                                                </div>
                                                            </div>
                                                    
                                                
                                                            <div class="form-group row">
                                                                <label class="col-sm-2">Accept terms and Conditions</label>
                                                                <div class="col-sm-10">
                                                                    <input type="checkbox" name="checkbox" required>
                                                                </div>
                                                            </div>
                                                            <button class="btn waves-effect waves-light btn-success btn-outline-success" type="submit"><i class="icofont icofont-check-circled"></i>Sign In</button>
                                                        </form>
                                                          
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
                            <!-- Main-body end -->
                            <!--  <div id="styleSelector">-->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Required Jquery -->
    <%@include file="files/javaScript.jsp"%>
</body>

</html>
