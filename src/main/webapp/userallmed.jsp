<%@include file="files/imports.jsp"%>
<!DOCTYPE html>
<html lang="en">

<%@include file="files/head.jsp"%>
<body>
	<!-- Pre-loader start -->
	<%@include file="files/preLoader.jsp"%>
	<!-- Pre-loader end -->
	<%
	String userName;

	String base64Image;
	try {
		Connection con = ConnectDB.connect();
		PreparedStatement ps = con.prepareStatement("select uname,uprofile from users where uemail=?");
		ps.setString(1, Uemail.getuEmail());
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			userName = rs.getString(1);
			//userName=rs.getString(2);
			byte[] imageData = rs.getBytes(2);
			base64Image = Base64.getEncoder().encodeToString(imageData);
	%>


	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<nav class="navbar header-navbar pcoded-header">
				<div class="navbar-wrapper">
					<div class="navbar-logo">
						<a class="mobile-menu waves-effect waves-light"
							id="mobile-collapse" href="#!"> <i class="ti-menu"></i>
						</a>
						<div class="mobile-search waves-effect waves-light">
							<div class="header-search">
								<div class="main-search morphsearch-search">
									<div class="input-group">
										<span class="input-group-prepend search-close"><i
											class="ti-close input-group-text"></i></span> <input type="text"
											class="form-control" placeholder="Enter Keyword"> <span
											class="input-group-append search-btn"><i
											class="ti-search input-group-text"></i></span>
									</div>
								</div>
							</div>
						</div>
						<a href="index.jsp"> <img class="img-fluid"
							src="assets/images/logo.png" alt="Theme-Logo" />
						</a> <a class="mobile-options waves-effect waves-light"> <i
							class="ti-more"></i>
						</a>
					</div>
					<div class="navbar-container container-fluid">
						<ul class="nav-left">
							<li>
								<div class="sidebar_toggle">
									<a href="javascript:void(0)"><i class="ti-menu"></i></a>
								</div>
							</li>
							<li><a href="#!" onclick="javascript:toggleFullScreen()"
								class="waves-effect waves-light"> <i class="ti-fullscreen"></i>
							</a></li>
						</ul>
						<ul class="nav-right">

							</li>
							<li class="user-profile header-notification"><a href="#!"
								class="waves-effect waves-light"> <img
									src="data:image/jpeg;base64,<%=base64Image%>"
									class="img-radius" alt="Owner-Profile-Image"> <span><%=userName%></span>
									<i class="ti-angle-down"></i>
							</a>
								<ul class="show-notification profile-notification">

									<li class="waves-effect waves-light"><a href="usignin.jsp">
											<i class="ti-layout-sidebar-left"></i> Logout
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<nav class="pcoded-navbar">
						<div class="sidebar_toggle">
							<a href="#"><i class="icon-close icons"></i></a>
						</div>
						<div class="pcoded-inner-navbar main-menu">
							<div class="">
								<div class="main-menu-header">
									<img class="img-80 img-radius"
										src="data:image/jpeg;base64,<%=base64Image%>"
										alt="Owner-Profile-Image">
									<div class="user-details">
										<span id="more-details"><%=userName%><i
											class="fa fa-caret-down"></i></span>
									</div>
									
								</div>
								<div class="main-menu-content">
									<ul>
										<li class="more-details"><a href="usignin.jsp"><i
												class="ti-layout-sidebar-left"></i>Logout</a></li>
									</ul>
								</div>
							</div>

							<div class="pcoded-navigation-label">Near Medicine Store</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="userwel.jsp"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-home"></i><b>D</b></span> <span class="pcoded-mtext">List
											Near Medicals</span> <span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<div class="pcoded-navigation-label">Buy Medicines</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu pcoded-trigger active"><a
									href="javascript:void(0)" class="waves-effect waves-dark">
										<span class="pcoded-micon"><i
											class="ti-layout-grid2-alt"></i><b>BC</b></span> <span
										class="pcoded-mtext">View Medicines </span> <span
										class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class="active"><a href="userallmed.jsp"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Medicines</span> <span
												class="pcoded-mcaret"></span>
										</a></li>


									</ul></li>

							</ul>
							<div class="pcoded-navigation-label"></div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu "><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-id-badge"></i><b>A</b></span> <span class="pcoded-mtext">Orders
									</span> <span class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class="active"><a href="Ordered.jsp"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Orders</span> <span
												class="pcoded-mcaret"></span>
										</a></li>


									</ul></li>
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
											<h2 class="m-b-10">
												Welcome
												<%=userName%></h2>
											<p class="m-b-0">You can Buy Medicines With Discounted
												Prize only on Med Guardian...</p>
										</div>
									</div>
									<div class="col-md-4">
										<ul class="breadcrumb">
											<li class="breadcrumb-item"><a href="index.jsp"> <i
													class="fa fa-home"></i>
											</a></li>
											<li class="breadcrumb-item"><a href="#"><%=userName%></a>
											</li>
											<li class="breadcrumb-item"><a href="Ordered.jsp">Orders</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<%
						}
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
						<!-- Page-header end -->
						<div class="pcoded-inner-content">

							<!-- Main-body start -->
							<div class="main-body">

								<!-- Page-body start -->
								<div class="page-body">
									<div class="row">
										<div class="col-12">
											<%
											try {
												Connection con = ConnectDB.connect();
												String query = "SELECT medid,medname,medimg,medbname,medprice,medctgry,medstatus,meddisc,medexdate,email from medicines where expired='No' and medstatus='Available' order by nearexpire";

												PreparedStatement stmt = con.prepareStatement(query);

												ResultSet rs = stmt.executeQuery();
											%>
											<div class="container mt-5">
												<div class="row">

													<%
													while (rs.next()) {
														byte[] imageData = rs.getBytes(3);
														String base64Image1 = Base64.getEncoder().encodeToString(imageData);
														int disprice = Discount.calculateDiscountPrice(rs.getInt("meddisc"), rs.getInt("medprice"));
													%>

													<div class="col-md-4">

														<div class="card">
															<div class="image-container">
																<div class="first">
																	<div
																		class="d-flex justify-content-between align-items-center">
																		<span class="discount"><%=rs.getInt(8)%>%
																			Discount</span> <span class="wishlist"><i
																			class="fa fa-plus"></i></span>
																	</div>
																</div>
																<img src="data:image/jpeg;base64,<%=base64Image1%>"
																	class="img-fluid rounded thumbnail-image ">
															</div>
															<div class="product-detail-container p-2">
																<div class="justify-content-center align-items-center">
																	<h3 class="dress-name"><%=rs.getString(2)%>
																	</h3>
																	<div class="d-flex flex-column mb-2">
																		<span class="new-price"></span> <small
																			class="old-price text-right"><%=disprice%></small>
																	</div>
																</div>
																<div>
																	<a href="orders.jsp?medid=<%=rs.getInt("medid")%>">
																		<button type="submit" name="Buyed"
																			class="btn btn-lg bg-success" value="">Order
																			Now</button>
																	</a>
																</div>


																<div
																	class="d-flex justify-content-between align-items-center pt-1">
																	<div>
																		<i class="fa fa-star-o rating-star">Original Price</i>
																		<span class="rating-number"><%=rs.getInt("medprice")%></span>
																	</div>
																	<span class="btn"><h3><%=disprice%></h3></span>
																</div>
															</div>
														</div>

													</div>
												</div>
											</div>
											<%
											}
											} catch (Exception e) {
											e.printStackTrace();
											}
											%>
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
	<%@include file="files/javaScript.jsp"%>
</body>

</html>
