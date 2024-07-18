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
                                        <li class="active">
                                            <a href="AddMedicines.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Add Medicines</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class=" ">
                                            <a href="ViewMedicines.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">View Medicines</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                         <li class=" ">
                                            <a href="viewnearex.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Near Expiry Date Medicines</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                         <li class=" ">
                                            <a href="viewexpired.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Expiring Today</span>
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
                                        <span class="pcoded-mtext">Orders</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class="">
                                            <a href="MedOrder.jsp" class="waves-effect waves-dark">
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
                                            <li class="breadcrumb-item"><a href="MedOrder.jsp">Orders</a>
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
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Add Medicines</h5>
                                                        <!-- <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span> -->
                                                    </div>
                                                    <div class="card-block">
                                                        <h4 class="sub-title"><b>Medicines Details</b></h4>
                                                        <form action="AddMedicine" method="post" enctype="multipart/form-data">
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label"> Name</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="medname" class="form-control form-control-round form-control-success" placeholder="Medicine Name" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Brand name</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="medbname" class="form-control form-control-round form-control-success" placeholder="Medicine Brand" required>
                                                                </div>
                                                            </div>
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Price</label>
                                                                <div class="col-sm-10">
                                                                    <input type="Number" name="medprice " class="form-control form-control-round form-control-success" maxlength="5" placeholder="Price" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Medicine Category</label>
                                                                <div class="col-sm-10">
                                                                    <select name="medctgry" class="form-control" required>
                                                                        <option value="Cough & Cold">Cough & Cold</option>
                                                                        <option value="Fever & Pain Relief">Fever & Pain Relief</option>
                                                                        <option value="Allergies & Hay Fever">Allergies & Hay Fever</option>
                                                                        <option value="Digestive Health">Digestive Health</option>
                                                                        <option value="Headache & Migraine">Headache & Migraine</option>
                                                                        <option value="Insomnia & Sleep Aids">Insomnia & Sleep Aids</option>
                                                                        <option value="Skin Conditions">Skin Conditions</option>
                                                                        <option value="All-purpose First Aid">All-purpose First Aid</option>
                                                                        <option value="Vitamins & Supplements">Vitamins & Supplements</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Quantity</label>
                                                                <div class="col-sm-10">
                                                                    <input type="number" name="medqty" class="form-control form-control-round form-control-success" placeholder="Quantity Of Medicines" required>
                                                                </div>
                                                            </div>
                                                             <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Medicine Image</label>
                                                                <div class="col-sm-10">
                                                                    <input type="file" name="medimg" class="form-control form-control-round form-control-success">
                                                                </div>
                                                            </div>
                                                      
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Discount</label>
                                                                <div class="col-sm-10">
                                                                    <select name="meddisc" class="form-control form-control-round form-control-success" required>
                                                                        <option value="0">No Discount</option>
                                                                        <option value="10">10%</option>
                                                                        <option value="20">20%</option>
                                                                        <option value="50">50%</option>
                                                                        <option value="90">90%</option>
                                                                    </select>
                                                                </div>
                                                            </div>
    
                                                            <div class="form-group row">
                                                                <label class="col-sm-2">Expiry Date</label>
                                                                <div class="col-sm-10 form-control-round form-control-success" >
                                                                    <input type="date" name="medexdate" required>
                                                                </div>
                                                            </div>
                                                            <button class="btn waves-effect waves-light btn-success btn-outline-success" type="submit"><i class="icofont icofont-check-circled"></i>Add Medicine</button>
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
                        </div>
                    </div>
                    <!-- Main-body end -->

                    <div id="styleSelector">

                    </div>
                </div>
            </div>
        </div>
    </div>

	<%  
		}}catch(Exception e){
        	e.printStackTrace();
        }
      %>

<%@include file="files/javaScript.jsp" %>
</body>

</html>
