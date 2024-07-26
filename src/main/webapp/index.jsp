<%@include file="files/imports.jsp" %>
<!DOCTYPE html>
<html lang="en">
<%@include file="files/head.jsp" %>
<body>
    <!-- Pre-loader start -->
    <%@include file="files/preLoader.jsp" %>

    <!-- Pre-loader end -->
     <%@include file="files/first.jsp" %>
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
                                        <span class="pcoded-mtext">Logins</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="adminsignin.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                             <span class="pcoded-mtext">Admin</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="medical.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Midical Owner</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="addUser.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">User</span>
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
                                            <h5 class="m-b-10">Med <i class="fa fa-medkit text-c-green"></i> Guardian</h5>
                                            <p class="m-b-0">Med Guardian</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>MedGuardian Info</h5>
                                                        <span>History</span>
                            
                                                    </div>
                                                    <div class="card-block">
                                                        <p>
                                                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
                                                            laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                                                            in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                            laborum."
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-4">
                                                <div class="card text-center order-visitor-card">
                                                    <button> <a href="adminsignin.jsp"><div class="card-block">
                                                        <h6 class="m-b-0">I'am Admin</h6>
                                                        <h4 class="m-t-15 m-b-15"><i class="fa fa-user-secret fa-2x text-c-green"></i></h4>
                                                        <p class="m-b-0">Manages All The Medicals</p>
                                                    </div></a></button>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="card text-center order-visitor-card">
                                                    <button> <a href="medical.jsp"> <div class="card-block">
                                                        <h6 class="m-b-0">I'am Medical Owner</h6>
                                                        <h4 class="m-t-15 m-b-15"><i class="fa fa-medkit text-c-green"></i></h4>
                                                        <p class="m-b-0">Distributes Medicines to The Customers with Discounted Prize</p>
                                                    </div></a></button>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="card text-center order-visitor-card">
                                                    <button> <a href="addUser.jsp">  <div class="card-block">
                                                        <h6 class="m-b-0">I'am User</h6>
                                                        <h4 class="m-t-15 m-b-15"><i class="fa fa-user text-c-green"></i></h4>
                                                        <p class="m-b-0">Medical User can buy or order Medicines through Medicals</p>
                                                    </div></a></button>
                                                </div>
                                            </div>

                                        </div>
										</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="styleSelector"></div>
                </div>
            </div>
        </div>
    </div>
   <%@include file="files/javaScript.jsp" %>
</body>

</html>
