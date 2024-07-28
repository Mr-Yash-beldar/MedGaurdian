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
     		String address=request.getParameter("add");
     		String mlat=request.getParameter("lat");
     		String mlang=request.getParameter("lng");
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
                                        <span class="pcoded-mtext">Medical Logins</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li class=" ">
                                            <a href="msignin.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Sign In</span>
                                                <span class="pcoded-mcaret"></span>
                                            </a>
                                        </li>
                                        <li class="active">
                                            <a href="medical.jsp" class="waves-effect waves-dark">
                                                <span class="pcoded-micon"><i class="ti-angle-right"></i></span>
                                                <span class="pcoded-mtext">Registration</span>
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
                                            <h5 class="m-b-10">Registration Of Medicals </h5>
                                            <p class="m-b-0">You first need the Approval of MedGuardian's Approval to Login in Your Account </p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="index.jsp"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="msignin.jsp">Sign In</a>
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
                                                        <h5>Medical Registration Form</h5>
                                                        <!-- <span>Add class of <code>.form-control</code> with <code>&lt;input&gt;</code> tag</span> -->
                                                    </div>
                                                    <div class="card-block">
                                                        <h4 class="sub-title"><b>Personal Details</b></h4>
                                                        <form action="MedicalUpload " method="post" enctype="multipart/form-data"  onsubmit="return validation()">
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Store Name</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="mname" class="form-control" placeholder="Store Name" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <div class="col-sm-10">
                                                                    <button type="button" class=" btn waves-effect "><a href="map.html"><i class="fa fa-map-marker"> Choose Location</i></a></button>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Address</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="mloc" value="<%=address %>" class="form-control" placeholder="Address" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Latitude</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="mlat" value="<%=mlat %>" class="form-control" placeholder="Latitude" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Longitude</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="mlang" value="<%=mlang %>" class="form-control" placeholder="Longitude" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Contact Information </label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="mcinfo" class="form-control" placeholder="Contact Number" maxlength="10" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Category</label>
                                                                <div class="col-sm-10">
                                                                    <select name="mctgry" class="form-control" required>
                                                                        <option value="Medical Devices Supplier">Medical Devices Supplier</option>
                                                                        <option value="Surgical Instruments Supplier">Surgical Instruments Supplier</option>
                                                                        <option value="Dermatology Clinic">Dermatology Clinic</option>
                                                                        <option value="Surgical Instruments Supplier">Surgical Instruments Supplier</option>
                                                                        <option value="Diabetic Supplies Provider">Diabetic Supplies Provider</option>
                                                                        <option value="Hearing Aid Center">Hearing Aid Center</option>
                                                                        <option value="Natural Health Products Store">Natural Health Products Store</option>
                                                                        <option value="Rehabilitation Equipment Supplier">Rehabilitation Equipment Supplier</option>
                                                                        <option value="Homeopathic Pharmacy">Homeopathic Pharmacy</option>
                                                                        <option value="Medical Imaging Center">Medical Imaging Center</option>
                                                                        <option value="Prosthetic and Orthotic Center">Prosthetic and Orthotic Center</option>
                                                                        <option value="Dental Supplies Provider">Dental Supplies Provider</option>
                                                                        <option value="Herbal Medicine Store">Herbal Medicine Store</option>
                                                                        <option value="Medical Uniforms and Scrubs Store">Medical Uniforms and Scrubs Store</option>
                                                                        <option value="Gynecology Clinic">Gynecology Clinic</option>
                                                                        <option value="Pediatric Pharmacy">Pediatric Pharmacy</option>
                                                                        <option value="Veterinary Supplies Provider">Veterinary Supplies Provider</option>
                                                                        <option value="Ophthalmology Clinic">Ophthalmology Clinic</option>
                                                                        <option value="Home Health Care Services">Home Health Care Services</option>
                                                                        <option value="Mental Health Clinic">Mental Health Clinic</option>
                                                                        <option value="Cardiology Clinic">Cardiology Clinic</option>
                                                                        <option value="Allergy and Immunology Clinic">Allergy and Immunology Clinic</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Owner Name</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="mowner" class="form-control" placeholder="Name of Owner" required >
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Owner Profile</label>
                                                                <div class="col-sm-10">
                                                                    <input type="file" name="mprofile" class="form-control form-control-round form-control-success">
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">License and Registration</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="mlic" class="form-control" placeholder="License and Registration " required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Bussiness Type</label>
                                                                <div class="col-sm-10">
                                                                    <select name="mbtype" class="form-control" required>
                                                                        <option value="Sole Proprietorship">Sole Proprietorship</option>
                                                                        <option value="Partnership">Partnership</option>
                                                                        <option value="Charitable Trust">Charitable Trust</option>
                                                                        <option value="Limited Liability Company (LLC)">Limited Liability Company (LLC)</option>
                                                                        <option value="Limited Liability Partnership (LLP)">Limited Liability Partnership (LLP)</option>
                                                                        <option value="Corporation">Corporation</option>
                                                                        <option value="Franchise">Franchise</option>
                                                                        <option value="Professional Corporation (PC)">Professional Corporation (PC)</option>
                                                                        <option value="Professional Association (PA)">Professional Association (PA)</option>
                                                                        <option value="Nonprofit Organization">Nonprofit Organization</option>
                                                                        <option value="Joint Venture">Joint Venture</option>
                                                                        <option value="Social Enterprise">Social Enterprise</option>
                                                                        <option value="Public Benefit Corporation (PBC)">Public Benefit Corporation (PBC)</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Hygiene Standards</label>
                                                                <div class="col-sm-10">
                                                                    <select name="mhystandards" class="form-control" required>
                                                                        <option value="Hand Hygiene">Hand Hygiene</option>
                                                                        <option value="Mask Protection">Mask Protection</option>
                                                                        <option value="Sterilization and Disinfection">Sterilization and Disinfection</option>
                                                                        <option value="Limited Liability Company (LLC)">Limited Liability Company (LLC)</option>
                                                                        <option value="Waste Management">Waste Management</option>
                                                                        <option value="Environmental Cleaning">Environmental Cleaning</option>
                                                                        <option value="Injection Safety">Injection Safety</option>
                                                                        <option value="Airborne Infection Control">Airborne Infection Control</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Past Compalance</label>
                                                                <div class="col-sm-10">
                                                                    <input type="text" name="mrecord" class="form-control form-control-round" placeholder="Compalance" value="NO" required>
                                    
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Email
                                                                    </label>
                                                                <div class="col-sm-10">
                                                                    <input type="email" name="email" class="form-control form-control-primary" placeholder="Registration Email" required>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row">
                                                                <label class="col-sm-2 col-form-label">Password</label>
                                                                <div class="col-sm-10">
                                                                    <input type="password" name="mpass" class="form-control form-control-round form-control-warning" placeholder="Password" maxlength="8" required>
                                    
                                                                </div>
                                                            </div>
                                                    
                                                
                                                            <div class="form-group row">
                                                                <label class="col-sm-2">Customer Data Protection</label>
                                                                <div class="col-sm-10">
                                                                    <input type="checkbox" name="mcustcheck" required>
                                                                </div>
                                                            </div>
                                                            <button class="btn waves-effect waves-light btn-success btn-outline-success" type="submit"><i class="icofont icofont-check-circled"></i>Success Button</button>
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
