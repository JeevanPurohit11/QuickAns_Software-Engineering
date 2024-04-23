<!doctype html>
<%@page import="user.DBConnection"%>
<%@page import="javax.sql.rowset.CachedRowSet"%>
<html lang="zxx">
    
<!-- Mirrored from templates.envytheme.com/pify/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 07 Feb 2023 18:11:28 GMT -->
<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Links Of CSS File -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/owl.theme.default.min.css">
		<link rel="stylesheet" href="css/owl.carousel.min.css">
		<link rel="stylesheet" href="css/flaticon.css">
		<link rel="stylesheet" href="css/remixicon.css">
		<link rel="stylesheet" href="css/meanmenu.min.css">
		<link rel="stylesheet" href="css/animate.min.css">
		<link rel="stylesheet" href="css/metismenu.min.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/editor.css">
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/responsive.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
		
		
		<!-- Favicon -->
		<!-- <link rel="icon" type="image/png" href="title.png"> -->
		<link rel="icon" href="images/fevicon.png" sizes="96x96" type="image/png">
		<!-- Title -->
		<title>QuickAns</title>
    </head>
    <body>

	<!-- Start Preloader Area -->
		<div class="preloader" id="loader-style">
			<div class="preloader-wrap">
				<span></span>
				<span></span>
				<span></span>
				<span></span>
			</div>
		</div>
		<!-- End Preloader Area -->
<!-- Start Navbar Area --> 
		<div class="navbar-area">
			<div class="mobile-responsive-nav">
				<div class="container">
					<div class="mobile-responsive-menu">
						<div class="logo">
							<a href="userhome.jsp">
								<img src="images/logo.png" alt="logo">
							</a>
						</div>
					</div>
				</div>
			</div>

			<div class="desktop-nav">
				<div class="container">
					<nav class="navbar navbar-expand-md navbar-light">
						<a class="navbar-brand" href="userhome.jsp">
							<img src="images/logo.png" alt="logo" style="position: absolute;top: -75px; width: 170px; height: 200px;">
						</a>

						<div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
							<ul class="navbar-nav m-auto">
								<li class="nav-item">
									<a href="userhome.jsp" class="nav-link">
										Home 
									</a>
								</li>
							
								<li class="nav-item">
									<a href="useraskquestion.jsp" class="nav-link">
									Ask           
									</a>

											</li>
											
								<li class="nav-item">
									<a href="expertsdetailsforuser.jsp" class="nav-link">
										Experts
									</a>
								</li>

								<li class="nav-item">
									<a href="userabout.jsp" class="nav-link">
										About Us
									</a>
								</li>

								<li class="nav-item">
									<a href="usercontact.jsp" class="nav-link">Contact Us</a>
								</li>

							</ul>

							<div class="others-options">
								<ul>
									<li>
										<form class="search-box" action="userhome.jsp">
											<input type="text" name="Search" placeholder="Search for Question..." class="form-control">
									
											<button type="submit" class="search-btn">
												<i class="ri-search-line"></i>
											</button>
										</form>
									</li>
									<li>
										<a href="userfaq.jsp" class="user-noti">
											<i class="ri-question-line"></i>
										</a>
									</li>
									<li>
									
									
									<%
						            CachedRowSet rsnt=DBConnection.selectquery("select *From notification where user_id='"+ session.getAttribute("user_id") +"'");										
 									 
													
													
									%>
										<div class="dropdown">
										
											<button type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" class="user-notif">
												<i class="ri-notification-3-fill"></i>
												<span><%= rsnt.size()
												%></span>
											</button>
											
											<ul class="dropdown-menu notif" aria-labelledby="dropdownMenuButton1">
											<li style="position: relative; left: 200px; color:orange;">
												<a href="DeleteNotification">
											
												<i class="bi-x-circle"></i>
												</a>
												</li>
											<%
                                    		    while(rsnt.next())
 											    {
 											%>
												<li>
													<a href="https://mail.google.com/mail/u/0/#inbox">
														<i class="ri-mail-line"></i>
														
													</a>
													<p><%= rsnt.getString(2) %></p>
												</li>
												
												
												<%
 											    }
												%>
												</ul>
										</div>
									</li>
									<li>
										<div class="dropdown">
											<button type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
												
												
												
												
												<%
											if (session.getAttribute("photo").equals("" )) {
											%>
											<img src="images/up.jpg" width="40" height="40" alt="Image">
									
											<%
											}

											else {
											%>
											<img src="<%= session.getAttribute("photo").toString() %>" width="40" height="40" alt="Image">
									
											<%
											}
											%>
												
												
												
												
												<span><%= session.getAttribute("user_name") %></span>
											</button>
											<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
												<li>
													<a href="userprofile.jsp">
														<i class="ri-user-line"></i>
														User profile
													</a>
												</li>
												
												<li>
													<a href="usereditprofile.jsp">
														<i class="ri-settings-2-line"></i>
														Edit profile
													</a>
												</li>
												

											
												<li>
													<a href="userlogin.jsp">
														<i class="ri-logout-box-r-line"></i>
														Logout
													</a>
												</li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
			</div>

			<div class="others-option-for-responsive">
				<div class="container">
					<div class="dot-menu">
						<div class="inner">
							<div class="circle circle-one"></div>
							<div class="circle circle-two"></div>
							<div class="circle circle-three"></div>
						</div>
					</div>
					
						</div>
			</div>
		</div>
	
		<!-- End Navbar Area -->
		<!-- Start Go Top Area -->
		<div class="go-top">
			<i class="ri-arrow-up-s-fill"></i>
			<i class="ri-arrow-up-s-fill"></i>
		</div>
		<!-- End Go Top Area -->