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
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-layout-grid2-alt"></i><b>BC</b></span>
                                        <span class="pcoded-mtext">Logins</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="active">
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
                                            <a href="user.jsp" class="waves-effect waves-dark">
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
                                            <h4 class="m-b-10">Med èGuardian</h4>
                                            <p class="m-b-0">Company which approves medicals by testing it.</p>
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
                                <div class="page-body">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <!-- Basic Form Inputs card start -->
                                            <!-- <div class="card"> -->
                                                    <form class="md-float-material form-material" action="AdminSignIn" method="post">
                                                        <div class="auth-box card">
                                                            <div class="card-block">
                                                                <div class="row m-b-20">
                                                                    <div class="col-md-12">
                                                                        <h3 class="text-center">Sign In</h3>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group form-primary">
                                                                    <input type="email" name="email" class="form-control" required >
                                                                    <span class="form-bar"></span>
                                                                    <label class="float-label">Your Email Address</label>
                                                                </div>
                                                                <div class="form-group form-primary">
                                                                    <input type="password" name="password" class="form-control" required>
                                                                    <span class="form-bar"></span>
                                                                    <label class="float-label">Password</label>
                                                                </div>
                                                                
                                                                <div class="row m-t-30">
                                                                    <div class="col-md-12">
                                                                        <button type="submit" class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20">Sign in</button>
                                                                    </div>
                                                                </div>
                                                                <hr/>
                                                                <div class="row">
                                                                    <div class="col-md-10">
                                                                        <p class="text-inverse text-left m-b-0">Thank you.</p>
                                                                        <p class="text-inverse text-left"><a href="index.jsp"><b>Back to website</b></a></p>
                                                                    </div>
                                                                    <div class="col-md-2">
                                                                        <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>  
                                           
                                        </div>
                                    </div>
                                            <!-- Basic Form Inputs card end -->
                                        </div>
                                    </div>
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
