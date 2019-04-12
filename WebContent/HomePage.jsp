<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="styles/HomePage.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<h2>Party Planning People</h2>
				<div class="banner"></div>
			</div>
			<div class="col-md-6">
				<p>
					<button type="button" class="btn btn-default btn-lg userbutton">
						<span class="glyphicon glyphicon-user"></span> My Account
					</button>
				</p>
				<p>
					<button type="button" class="btn btn-default btn-lg logoutbutton">
						<span class="glyphicon glyphicon-log-out"></span> Log Out
					</button>
				</p>
			</div>
			<div class="row">
				<div class="col-md-7">
					<div class="profilePic">
						<img src="jeffrey_miller.jpg">
					</div>
					<div class="userinfo">
						<div class="profilename">Jeffrey Miller</div>
					</div>
					<div class="col-md-5">
						<h1>Upcoming Events</h1>
					</div>
				</div>
				<div class="row1">
					<div class="col-md-3">
						<p>
							<button type="button" class="btn btn-default btn-lg listview">
								<span class="glyphicon glyphicon-th-list"></span>
							</button>
						</p>
					</div>

					<div class="col-md-3">
						<p>
							<button type="button" class="btn btn-default btn-lg calendarview">
								<span class="glyphicon glyphicon-calendar"></span>
							</button>
						</p>
					</div>
					<div class="col-md-3">
						<p>
							<button type="button" class="btn btn-default btn-lg mapview">
								<span class="glyphicon glyphicon-map-marker"></span>
							</button>
						</p>
					</div>
				</div>
				<div class=row2>
					<div class="container">
						<div class="events-all">
							<table>
								<tr>
									<th>
										<div class="solo-table">
										<%for(int j=0;j<20;j++){ %>
											<span class="breaker"></span>
											<table>
												<tr>
													<th>Past Splash</th>
													<th>Event Rating<%for (int i=0;i<5;i++){ %>
														<span class="glyphicon glyphicon-star"></span>
														<%} %>
													</th>
													<th></th>
												</tr>
												<tr>
													<th>USC Scope</th>
													<th>Users Attending:</th>
												</tr>
												<tr>
													<th>935 W. 30th St</th>
													<th>Users Interested:</th>
													<th>
														<button type="button"
															class="btn btn-default btn-lg expand">
															<span class="glyphicon glyphicon-expand"></span>
														</button>
													</th>
												</tr>
												<tr>
													<th>April 9, 2019</th>
													<th>User Not Attending:</th>
												</tr>
												<tr>
													<th>8:00 pm to 2:00 am</th>
													<th>Tags:  #summer #pay #drinksprovided</th>

												</tr>
													<%} %>
											</table>
										
										</div>
									</th>
								</tr>
							</table>
						</div>
					</div>

					<div class="sortbycat">Filters</div>
					<div class="cat">
						<button type="button" class="btn btn-default btn-lg interestedbutton">
						<span class="glyphicon glyphicon-star-empty"> Interested </span>
					</button><br> 
					<button type="button" class="btn btn-default btn-lg attendingbutton">
						<span class="glyphicon glyphicon-check"> Attending</span>
					</button> <br> 
					<button type="button" class="btn btn-default btn-lg notattendingbutton">
						<span class="glyphicon glyphicon-remove"> 
						Not Attending</span>
					</button>
					</div>
					<div class="backgroundcat"></div>
					<input type="text" class="form-control" id="search"
						aria-describedby="search"
						placeholder="Search Event by Name or Tags">
					<button type="button" class="btn btn-default btn-lg searchglass">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>