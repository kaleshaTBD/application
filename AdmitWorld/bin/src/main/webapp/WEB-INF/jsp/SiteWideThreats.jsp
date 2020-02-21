<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>

<html lang="en">
<head>
<meta charset="utf-8">
<title>Business Continuity Management</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<style>
/* Style the tab */

/*preloader styles */

.preloader {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	z-index: 99;
	height: 100%;
}

.status {
	width: 200px;
	height: 200px;
	position: absolute;
	left: 50%;
	top: 50%;
	background-image: url(img/loader1.gif);
	background-repeat: no-repeat;
	background-position: center;
	margin: -100px 0 0 -100px;
	z-index:9999;
	//filter: hue-rotate(45deg);
	
}
/* end  */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

.raphael-group-21-creditgroup{
display:none;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 30px;
	border: 1px solid #ccc;
	border-top: none;
}
</style>

<!-- Favicons -->
<!-- <link href="img/favicon.png" rel="icon"> -->
<!-- <link href="img/apple-touch-icon.png" rel="apple-touch-icon"> -->


<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="../libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="../libs/nivo-slider/css/nivo-slider.css" rel="stylesheet">
<link href="../libs/owlcarousel/owl.carousel.css" rel="stylesheet">
<link href="../libs/owlcarousel/owl.transitions.css" rel="stylesheet">
<link href="../libs/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../libs/animate/animate.min.css" rel="stylesheet">
<link href="../libs/venobox/venobox.css" rel="stylesheet">

<!-- Nivo Slider Theme -->
<link href="../css/nivo-slider-theme.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="../css/style.css" rel="stylesheet">
<link href="../css/custom_style.css" rel="stylesheet">
<link href="../css/menu.css" rel="stylesheet">

<!-- Responsive Stylesheet File -->
<link href="../css/responsive.css" rel="stylesheet">

<!-- cutom styles -->
<link href="../css/style-new.css" rel="stylesheet">

<!-- mouse over styles -->
<link href="../css/mouse-over.css" rel="stylesheet">
<link href="../css/jquery.dataTables.min.css" rel="stylesheet">
<link href="../css/buttons.dataTables.min.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css" />
<!-- =======================================================
    Theme Name: eBusiness
    Theme URL: https://bootstrapmade.com/ebusiness-bootstrap-corporate-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->

</head>
<body>


	<div class="row">
		<div class="col-md-2">
			<a href="/BCP/"><img src="../img/ge_haier_logo1.png" alt=""
				class="responsive center-block" /></a>
		</div>
		<div class="col-md-7">
		<h1 style="color: #003B71; font-weight: bold;"><span id="site_name_heading"></span></h1>
			<h1 style="color: #a83e26; font-weight: bold;font-size:23px">Site Wide Threats</h1>
		</div>
		<div class="col-md-3">
			<br>
			<h3 style="color: #003B71; font-weight: bold;">
				Welcome : <span style="color: red; font-size: 20px;" id="name"></span><%-- <span
					id="user_name" style="display: none;">${role}</span> --%>
			</h3>
		</div>
	</div>
	
	
<div class="row">

<div class="preloader" style="display: none;background: rgba(255, 255, 255, 0.6);" class="overlay">
									<div class="status">&nbsp;</div>
								</div>
</div>

	<div class="row tab">

		<nav id="menu">
			<label for="tm" id="toggle-menu">Menu<span class="drop-icon">▾</span></label>
			<input type="checkbox" id="tm">
			<ul class="main-menu clearfix">
				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'act')">Natural Disaster </a></li>
				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'fire')">Fire </a></li>

				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'utility')">Utility Failure </a></li>
				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'it')">IT </a></li>
				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'labor')">Labor Relations</a></li>
			</ul>
		</nav>
	</div>
	
	    <!-- Start image Area -->
<div class="row">
<div class="col-md-8 col-sm-12 col-xs-12">
<img src="../img/ap2.png" class="responsive"/>
</div>
<div class="col-md-4 col-sm-12 col-xs-12 ">
 <!-- <div id="risk-level" style="min-width: 310px; max-width: 400px; height: 300px; margin: 0 auto"></div>  -->

<!-- <div id="chart-container">FusionCharts will render here</div> -->
<div id="chart-container" class="chart"></div>

</div>

</div>
  
	<br>
	
	
	<div class="row">
		<div id="act" class="tabcontent">
			<div class="col-md-12">

				<!-- <div class="col-md-3"><h5 class="blink">Act Of God Report</h5></div> -->
				<!-- <div class="col-md-2"> <h5 class="blink" style="float: right;">Act Of God Report</h5></div> -->
				<div class="col-md-2">
					<button type="button" class="btn btn-primary"  style="float: right;" id="natural">Natural
						Disaster Report</button>
				</div>
				<div class="col-md-8">
					<h4>Natural Disaster</h4>
				</div>

				<div class="col-md-2"></div>
				<!-- <div class="col-md-2"><button type="button" class="btn btn-primary" style="cursor:pointer;float:right;">Act Of God Report</button></div> -->
				<!--  <div class="co-md-4"><h5 class="blink">Act Of God Report</h5></div>
<div class="col-md-8">
<h4 style="text-align:center;color:#003B71;font-weight:bold;font-family:arial;">Act Of God</h4>
	
</div> -->

			</div>

			<!-- <div class="col-md-12">
 
<h4 style="text-align:center;color:#003B71;font-weight:bold;font-family:arial;">Act Of God</h4>
  
  </div> -->

			<div class="row">

				<div class="col-md-offset-2 col-md-8 col-md-offset-2">
					<form action="" id="ActOfGod" name="ActOfGod">
						<div class="col-md-offset-2 col-md-8 col-md-offset-2">
							<div class="form-group">
								<label for="sel1" style="color: red; font-size: 18px;">
									Site Name</label> <input type="text" class="form-control" id="site_name"
									name="site_name" readonly>
							</div>
						</div>
						

<div class="row">
	<div class="col-md-12">
	<div class="form-group">
	<label class="Process1" id="business" >Business Functions</label>
	</div>
	</div>
	
		<div class="col-md-offset-2 col-md-8 col-md-offset-2">
	
	 <div id="education_fields">
          
        </div>
	 <div class="clear"></div>
	 </div>
	<input type="hidden" id="business_impact" name='business_impact' />

</div>

						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label class="Process1">Common Threat Types</label>

								</div>
							</div>
							<!-- <div class="col-md-2"></div> -->
							<div class="col-md-offset-2 col-md-8 col-md-offset-2">
								<!-- 	<div class="form-group">
	<label for="usr">What is your tornado risk Level based on your location:</label>
	<input type="text" class="form-control" id="usr">
	</div> -->

								<div class="form-group">
									<label for="text">What is your tornado risk Level based
										on your location:</label> <select class="form-control updatedata"
										id="tornado_risk" name="tornado_risk">
										<option value="">-Select-</option>
										<option value="Very High">Very High</option>
										<option value="High">High</option>
										<option value="Medium">Medium</option>
										<option value="Low">Low</option>
										<option value="Very Low">Very Low</option>
									</select>
								</div>

								<div class="form-group">
									<label for="text">What is your earthquake risk Level
										based on your location:</label> <select
										class="form-control updatedata" id="earthquake_risk"
										name="earthquake_risk">
										<option value="">-Select-</option>
										<option value="Extremely High">Extremely High</option>
										<option value="Very High">Very High</option>
										<option value="High">High</option>
										<option value="Moderate">Moderate</option>
										<option value="Low">Low</option>
										<option value="Very Low">Very Low</option>
										<option value="Negligible">Negligible</option>
									</select>
								</div>

								<div class="form-group">
									<label for="text">What is your distance to the coast
										(Pacific, Atlantic, Gulf, etc):</label> <select
										class="form-control updatedata" id="coast_distance"
										name="coast_distance">
										<option value="">-Select-</option>
										<option value="<25 miles"><25 miles</option>
										<option value="25-50 miles">25-50 miles</option>
										<option value="50-100 miles">50-100 miles</option>
										<option value=">100 miles">>100 miles</option>
									</select>
								</div>

								<div class="form-group">
									<label for="text">What is the likelihood a flood will
										affect your business:</label> <select class="form-control updatedata"
										id="flood_effect" name="flood_effect">
										<option value=''>-Select-</option>
										<option value='High'>High</option>
										<option value='Moderate'>Moderate</option>
										<option value='Low'>Low</option>
									</select>
								</div>


								<!--  <div class="form-group">
	<label for="usr">What are the financial impacts (loss) for each day the Business Function is down? Brian Schwarz - Matt Newton:</label>
	<input type="text" class="form-control" id="usr">
	</div> -->

							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label class="Process1">In-Sourcing Potential</label>
								</div>
							</div>
							<!-- <div class="col-md-2"></div> -->
							<div class="col-md-offset-2 col-md-8 col-md-offset-2">
								<!-- 	<div class="form-group">
	<label for="usr">What is your tornado risk Level based on your location:</label>
	<input type="text" class="form-control" id="usr">
	</div> -->

								<div class="form-group">
									<label for="text">Is there anywhere else in the GEA
										Portfolio we can make these products:</label> <select
										class="form-control updatedata" id="gea_portfolio"
										name="gea_portfolio">
										<option value="">Select</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
										<option value="Not Sure">Not Sure</option>
									</select>
								</div>
								<div id="gea-protfolio" style="display: none;">
									<div class="form-group">
										<label for="usr">Where:</label> <input type="text"
											class="form-control updatedata" id="gea_where"
											name="gea_where">
									</div>

									<div class="form-group">
										<label for="text">What Capacity %, is recovered?:</label> <br> <select
											class="form-control updatedata" id="quake_risklevel"
											name="quake_risklevel">
											<option value="select">Select</option>
											<option value="90%-100%">90%-100%</option>
											<option value="80%-90%">80%-90%</option>
											<option value="70%-80%">70%-80%</option>
											<option value="60%-70%">60%-70%</option>
											<option value="50%-60%">50%-60%</option>
											<option value="40%-50%">40%-50%</option>
											<option value="30%-40%">30%-40%</option>
											<option value="20%-30%">20%-30%</option>
											<option value="10%-20%">10%-20%</option>
											<option value="0%-10%">0%-10%</option>
										</select>
									</div>
									<div class="form-group">
										<label for="text">For how long:</label> <br> <select
											class="form-control updatedata" id="how_long" name="how_long">
											<option value="select">Select</option>
											<option value="< week">&lt;week</option>
											<option value="1-2 Weeks">1-2 Weeks</option>
											<option value="2 Weeks - Month">2 Weeks - Month</option>
											<option value="1-3Months">1-3Months</option>
											<option value="3-6 Months">3-6 Months</option>
											<option value="6 Months to a Year">>6 Months to a
												Year</option>
										</select>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label class="Process1">Out-Sourcing Potential</label>

								</div>
							</div>
							<!-- <div class="col-md-2"></div> -->
							<div class="col-md-offset-2 col-md-8 col-md-offset-2">
								<div id="gea-protfolio1">
									<div class="form-group">
										<label for="text">Can we outsource the production to
											another manufacturer:</label> <select class="form-control updatedata"
											id="outsource_production" name="outsource_production">
											<option value="">-Select-</option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
											<option value="Not Sure">Not Sure</option>
										</select>
									</div>
								</div>


								<div id="outsourcing-potential" style="display: none;">
									<div class="form-group">
										<label for="text">Who are they:</label> <input type="text"
											class="form-control updatedata" id="gea_who" name="gea_who">
									</div>
									<div class="form-group">
										<label for="usr">Are they a competitor:</label> <select
											class="form-control updatedata" id="competitor"
											name="competitor">
											<option value="">-Select-</option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
										</select>
									</div>
									<div class="form-group">
										<label for="usr">Has the PVP signed off on this
											option:</label> <select class="form-control updatedata" id="pvp_sign"
											name="pvp_sign">
											<option value="select">Select</option>
											<option value="yes">Yes</option>
											<option value="no">No</option>
										</select>
									</div>
									<div class="form-group">
										<label for="text">What Capacity %, is recovered:</label> <br>
										<select class="form-control updatedata"
											id="capacity_recovered" name="capacity_recovered">
											<option value="select">Select</option>
											<option value="90%-100%">90%-100%</option>
											<option value="80%-90%">80%-90%</option>
											<option value="70%-80%">70%-80%</option>
											<option value="60%-70%">60%-70%</option>
											<option value="50%-60%">50%-60%</option>
											<option value="40%-50%">40%-50%</option>
											<option value="30%-40%">30%-40%</option>
											<option value="20%-30%">20%-30%</option>
											<option value="10%-20%">10%-20%</option>
											<option value="0%-10%">0%-10%</option>
										</select>
									</div>
									<div class="form-group">
										<label for="text">For how long:</label> <br> <select
											class="form-control updatedata" id="for_howlong"
											name="for_howlong">
											<option value="100%">Select</option>
											<option value="< week">< week</option>
											<option value="1-2 Weeks">1-2 Weeks</option>
											<option value="2 Weeks - Month">2 Weeks - Month</option>
											<option value="1-3Months">1-3Months</option>
											<option value="3-6 Months">3-6 Months</option>
											<option value=">6 Months to a Year">>6 Months to a
												Year</option>
											<option value="Year">Year</option>
										</select>
									</div>

								</div>

							</div>
						</div>

						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label class="Process1">Crisis Management and Emergency
										Response</label>
								</div>

							</div>
							<!-- <div class="col-md-offset-2 col-md-8"> -->
							<div id="emergency-response">
								<div class="form-group col-md-offset-2 col-md-8">
									<label for="text">Is there a designated Crisis
										Management and Emergency Response Team:</label> <select
										class="form-control updatedata" id="crisis_emergency"
										name="crisis_emergency">
										<option value="">-Select-</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
										<option value="Not Sure">Not Sure</option>
									</select>

								</div>
								<div class="emergency_Response col-md-2"
									style="display: none; margin-top: 30px; color: red;">
									<i class="fa fa-question-circle fa-2x" aria-hidden="true"
										id="EHS"></i> <span class="tooltiptext">Please Verify
										with Security or EHS</span>
								</div>
								<div id="crisis-management" style="display: none;">

									<div class="form-group col-md-offset-2 col-md-8">
										<label for="text">When was Crisis Management and
											Emergency Response Team last updated:</label> <input type="date"
											class="form-control updatedata" id="crm_lastupdate"
											name="crm_lastupdate">
									</div>

									<div class="form-group col-md-offset-2 col-md-8">
										<label for="text">Is there a call tree/list that will
											be used in a crisis/emergency situation:</label> <select
											class="form-control updatedata" id="tree_list"
											name="tree_list">
											<option value="">-Select-</option>
											<option value="Yes">Yes</option>
											<option value="No">No</option>
											<option value="Not Sure">Not Sure</option>
										</select>
									</div>
									
									
									
									<div class="update-ehs col-md-2"
										style="display: none; margin-top: 30px; color: red;">
										<i class="fa fa-question-circle fa-2x" aria-hidden="true"
											id="update-EHS"></i> <span class="tooltiptext">Please
											update information with Security and EHS</span>
									</div>
									<div class="form-group col-md-offset-2 col-md-8"
										style="display: none;" id="list-file">
										<label for="text"> Attach Call Tree:</label> <input
											class="form-control updatedata"
											id="singleFileUploadInput1" type="file" name="file">
									</div>
								</div>
							</div>
						</div>


						<div class="col-md-12">
							<div class="form-group">
								<label class="Process1">Backup Site</label>
							</div>
						</div>
						<div class="">

							<div class="form-group col-md-offset-2 col-md-8">
								<label for="text">Would we rebuild this site in the
									event of a total loss:</label> <select class="form-control updatedata"
									id="rebuild_site" name="rebuild_site">
									<option value="">-Select-</option>
									<option value="Yes">Yes</option>
									<option value="No">No</option>
									<option value="Not Sure">Not Sure</option>
								</select>
							</div>
							<div class="form-group col-md-offset-2 col-md-8">
								<label for="text">Do we have plans Electronically Saved:</label>
								<select class="form-control updatedata" id="electronic_plans"
									name="electronic_plans">
									<option value="">-Select-</option>
									<option value="Yes">Yes</option>
									<option value="No">No</option>
								</select>
							</div>
							
							<div class="form-group col-md-offset-2 col-md-8">
								<label for="text">How Long would it take to rebuild:</label> <input
									type="number" class="form-control updatedata"
									placeholder="number in months" id="time_rebuild"
									name="time_rebuild">
							</div>
						
							<div class="form-group col-md-offset-2 col-md-8">
								<label for="text">Has a back up-site been identified:</label>
								<select class="form-control updatedata" id="backup_site" name="backup_site">
									<option value="">-Select-</option>
									<option value="Yes">Yes</option>
									<option value="No">No</option>
									<option value="Not Sure">Not Sure</option>
								</select>
							</div>
						
							<div class="backup-site" style="display: none;">
								<div class="form-group  col-md-offset-2 col-md-8">
									<label for="address">Please provide Address:</label>
									<textarea class="form-control" rows="5" id="address"
										name="address"></textarea>
								</div>
								<div class="form-group col-md-offset-2 col-md-8">
									<label for="text">Is the site sufficiently outside of
										the potential destruction zone:</label> <select class="form-control"
										id="outside_riskzone" name="outside_riskzone">
										<option value="">-Select-</option>
										<option value="Yes">Yes</option>
										<option value="No">No</option>
										<option value="Not Sure">Not Sure</option>
									</select>
								</div>
								<div class="sufficiently_outside col-md-2"
									style="display: none; margin-top: 30px; color: red;">
									<i class="fa fa-question-circle fa-2x" aria-hidden="true"></i>
									<span class="tooltiptext">Tooltip text</span>
								</div>
							
								<div class="form-group col-md-offset-2 col-md-8">
									<label for="text">Does it meet the minimal requirements
										for SQFT, Power, Water, Bay/Dock Doors:</label> <select
										class="form-control updatedata" id="min_req" name="min_req">
										<option value="">-Select-</option>
										<option value="Yes - All">Yes - All</option>
										<option value="Yes - Some">Yes - Some</option>
										<option value="No">No</option>
										<option value="Not Sure">Not Sure</option>
									</select>
								</div>
									<div class="form-group reason col-md-offset-2 col-md-8"
									style="display: none;">
									<label for="text">Why:</label> <input type="text"
										class="form-control updatedata"
										placeholder="Please write reason" id="why" name="why">
								</div>
								
									<div class="form-group col-md-offset-2 col-md-8">
									<label for="text">What kind of site is it?:</label>
									 <select class="form-control"
										id="kind_site" name="kind_site">
										<option value="">-Select-</option>
										<option value="Hot Site - We own it or are leasing it. It has all equipment, tools, and materials needed to begin">Hot Site</option>
										<option value="Cold Site - We own it or are leasing it. It does not have all major items we need. We will have to acquire new">Cold Site</option>
										<option value="Potential Site - Identified, but will need to be acquired at a later date">Potential Site</option>
									</select>
								</div>
								<div class="form-group col-md-offset-2 col-md-8 responsible_site">
									<label for="text">Who is responsible for making the
										decision to move to the backup site? Primary and Secondary
										POC:</label> <br> <select class="form-control updatedata"
										id="responsible_site" name="responsible_site">
										<option value="100%">Select</option>
										<option value="Desk Phone">Desk Phone</option>
										<option value="Mobile Phone">Mobile Phone</option>
										<option value="Home Phone">Home Phone</option>
										<option value="Email">Email</option>
									</select>
								</div>
								<div class="form-group deficiency col-md-offset-2 col-md-8"
									style="display: none;">
									<label for="text">Deficiency:</label> <input type="text"
										class="form-control updatedata"
										placeholder="Please write deficiency" id="deficiency"
										name="deficiency"> <input type="hidden"
										id='NDBusinessfunctionlength'>
								</div>
								
								<!-- <div class="form-group col-md-offset-2 col-md-8"
									style="display: none;" id="dock_doors">
									<label for="text">Reason:</label> <input
										id="reason" type="text" name="reason"
										class="file-input"/>
								</div> -->
								
								<div class="form-group long col-md-offset-2 col-md-8"
									style="display: none;">
									<label for="text">Attach Backup Site Plan:</label> <input
										id="singleFileUploadInput" type="file" name="file"
										class="file-input"/>
								</div>
									
								<div class="form-group col-md-offset-2 col-md-8"
									style="display: none;">
									<label for="text">What kind of site is it:</label> <select
										class="form-control updatedata" id="site_kind"
										name="site_kind">
										<option value="select">Select</option>
										<option
											value="Hot Site - We own it or are leasing it. It has all equipment, tools, and materials needed to begin recovery">Hot
											Site - We own it or are leasing it. It has all equipment,
											tools, and materials needed to begin recovery</option>
										<option
											value="Cold Site - We own it or are leasing it. It does not have all major items we need. We will have to acquire new equipment / salvage equipment / and install equipment prior to recovery">
											Cold Site - We own it or are leasing it. It does not have all
											major items we need. We will have to acquire new equipment /
											salvage equipment / and install equipment prior to recovery</option>
										<option
											value="Potential Site - Identified, but will need to be acquired at a later date">Potential
											Site - Identified, but will need to be acquired at a later
											date</option>
									</select>
								</div>

								

							</div>
							<div class="form-group col-md-offset-2 col-md-8"
								style="display: none;" id="call-file">
								<label for="text"> Attach Call Tree:</label> <input type="text"
									class="form-control updatedata" id="attach_calltree2"
									name="attach_calltree2">
							</div>

						</div>

						<div
							class="col-md-offset-5 col-md-2 col-md-offset-5 col-sm-offset-4 col-sm-4 col-sm-offset-4 col-xs-offset-4 col-xs-4 col-xs-offset-4">
							<button type="submit" class="btn btn-success update"
								onclick="validate()" style="display: none;">Update</button>
							<button type="button" class="btn btn-primary edit">Edit
								Information</button>
						</div>
					</form>

				</div>
			</div>



			<!-- Act Report popup-->
			
			<div class="modal fade" id="actReport" role="dialog">
				<div class="modal-dialog modal-lg">
					<div class="modal-content" style="width: 100%">
					<div id='printMe'>
						<div class="modal-header" style="background-color: #003b71de;">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title" style="color: #fff;"><span id="natural_site_name"></span></h4>
						</div>
						<div class="modal-body">
							<h5 style="text-align: center; font-weight: bold; color: red;">Threat
								Assessment for "Act of God" incidents (Hurricane, Earthquake,
								Flood, Tornado, Wild Fire, etc.)</h5>
							<hr style="margin-top: 0px; margin-bottom: 10px;">
							<div class="row">
								<div class="col-md-4">
									<label>Date Last : &nbsp;&nbsp;</label><span id="updateDate"></span>
								</div>
								<div class="col-md-4">
									<label>Next Review Due By: &nbsp;&nbsp;</label><span>Remainder with
										previous date</span>
								</div>
								<div class="col-md-4">
									<label>Completed by: &nbsp;&nbsp;</label><span id="last_updated_user"></span>
								</div>
							</div>
							<div class="row" style="margin-top: 10px;">
								<!--    <h2 style="text-align:center;background-color:#355D9D;color:#fff;">sfsf</h2> -->

								<table class="table table-bordered">
									<thead>
										<tr>
											<td colspan="4"
												style="text-align: center; background-color: #355D9D; color: #fff;">NATURAL DISASTER RISK LEVEL
												DISASTER RISK LEVEL</td>
										</tr>
									</thead>
									<tbody>
										<tr class="success">
											<td>Tornado Risk</td>
											<td><span id="risk_tornado"></span></td>
											<td rowspan="4"
												style="text-align: center; padding: 50px; background-color: #ff000021;">Natural
												Disaster Risk Level</td>
											<td rowspan="4" style="padding: 50px;"><span id="risk_disaster_level"></span></td>
										</tr>
										<tr class="info">
											<td>Earthquake Risk</td>
											<td><span id="risk_Earthquake"></span></td>
											
										</tr>
										<tr class="success">
											<td>Hurricane Risk</td>
											<td><span id="risk_Hurricane"></span></td>
											
										</tr>
										<tr class="info">
											<td>Flood Risk</td>
											<td><span id="risk_Flood"></span></td>
											
										</tr>
									</tbody>
								</table>
							</div>
							<div class="row" style="margin-top: 10px;">
								<!--    <h2 style="text-align:center;background-color:#355D9D;color:#fff;">sfsf</h2> -->

								<table class="table table-bordered">
									<thead>
										<tr>
											<td colspan="4"
												style="text-align: center; background-color: #355D9D; color: #fff; text-transform: uppercase;">Crisis
												Management Team</td>
										</tr>
									</thead>
									<tbody>
										<tr class="success">
											<td>Crisis Management Team</td>
											<td><span id="crisis_team"></span></td>
											<!-- <td rowspan="4" style="text-align:center;padding:50px;background-color:#ff000021;">Natural Disaster Risk Level</td>
				<td></td> -->
										</tr>
										<tr class="info">
											<td>Last Updated</td>
											<td><span id="crisis_updated"></span></td>
										</tr>
										<tr class="success">
											<td>Call Tree</td>
											<td><button type="button" class="btn btn-primary" onclick="downloadCrisis_File()">Download File</button></td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="row" style="margin-top: 10px;">
								<!--    <h2 style="text-align:center;background-color:#355D9D;color:#fff;">sfsf</h2> -->

								<table class="table table-bordered">
									<thead>
										<tr>
											<td colspan="4"
												style="text-align: center; background-color: #355D9D; color: #fff; text-transform: uppercase;">Financial
												Impact</td>
										</tr>
									</thead>
									<tbody>
										<tr class="success">
											<td>Critical Business Functions</td>
											<td>Text</td>
											<td rowspan="2"
												style="text-align: center; padding: 50px; background-color: #ff000021;">Total
												Financial Impact (Loss Per Day) of all Business Functions</td>
											<td rowspan="2" style="text-align: center; padding: 50px;">Sum
												of D4 inputs</td>
										</tr>
										<tr class="info">
											<td>Financial impact (Loss Per Day)</td>
											<td>Low</td>

										</tr>
									</tbody>
								</table>
							</div>
							<div class="row insoursing-data"
								style="margin-top: 10px; display: none;">
								<table class="table table-bordered">
									<thead>
										<tr>
											<td colspan="4"
												style="text-align: center; background-color: #355D9D; color: #fff; text-transform: uppercase;">In
												Sourcing Potential</td>
										</tr>
									</thead>
									<tbody>
										<tr class="success">
											<td>Location</td>
											<td><span id="location_in_source"></span></td>
										</tr>
										<tr class="info">
											<td>Capacity Recovered</td>
											<td><span id="capacity_in_source"></span></td>
										</tr>
										<tr class="success">
											<td>Duration of Availablility</td>
											<td><span id="avail_in_source"></span></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="row outsoursing-data"
								style="margin-top: 10px; display: none;">
								<table class="table table-bordered">
									<thead>
										<tr>
											<td colspan="4"
												style="text-align: center; background-color: #355D9D; color: #fff; text-transform: uppercase;">Out
												Sourcing Potential</td>
										</tr>
									</thead>
									<tbody>
										<tr class="success">
											<td>Vendor</td>
											<td> <span id="vendor_out_source"></span></td>
										</tr>
										<tr class="info">
											<td>Are They a Competitor</td>
											<td><span id="comp_out_source"></span></td>
										</tr>
										<tr class="success">
										
											<td>PVP Approval</td>
											<td><span id="pvp_out_source"></span></td>
										</tr>
										<tr class="info">
											<td>Capacity Recovered</td>
											<td><span id="capacity_out_source"></span></td>
										</tr>
										<tr class="success">
											<td>Duration of Availablility</td>
											<td><span id="avail_out_source"></span></td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="row backup-site-data" style="margin-top: 10px; display: none;">
								<table class="table table-bordered">
									<thead>
										<tr>
											<td colspan="4"
												style="text-align: center; background-color: #355D9D; color: #fff; text-transform: uppercase;">Back-Up
												Site</td>
										</tr>
									</thead>
									<tbody>
										<tr class="success link">
											<td>Link to Back-Up Plan</td>
											<td><span id="backup_re_plan"></span></td>
										</tr>
										<tr class="info">
											<td>Rebuild Timeframe</td>
											<td><span id="backup_re_build"></span></td>
										</tr>

										<tr class="success address" style="display: none;">
											<td>Back-Up Site Location</td>
											<td><span id="backup_address"></span></td>
										</tr>
										<tr class="info">
											<td>Is Back-Up site outside of potential disaster area</td>
											<td><span id="backup_potential"></span></td>
										</tr>
										<tr class="success">
											<td>Does the site meet all the needs</td>
											<td><span id="backup_meet"></span></td>
										</tr>
										<tr class="info">
											<td>Site Type</td>
											<td><span id="backup_site123"></span></td>
										</tr>
										<tr class="success">
											<td>POC</td>
											<td><span id="backup_poc"></span></td>
										</tr>
										<tr class="info attachment">
											<td>Back-Up Plan</td>
											<td><button type="button" class="btn btn-primary" onclick="downloadFile()">Download File</button></td>
											
											
										</tr>
									</tbody>
								</table>
							</div>

						</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								onclick="printDiv('printMe')">Print</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>
		</div>

			<!-- End Act Report popup-->


		</div>
	


	<!-- start of fire -->

	<div id="fire" class="tabcontent">
		<div class="row">

			<h4>Fire</h4>

		</div>
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-md-offset-2">

				<form id='firethreatform'>
					<div class="form-group">
						<label for="sel1" style="color: red; font-size: 18px;">
									Site Name</label> <input type="text" class="form-control" id="site_name_fire"
									name="site" readonly>
					</div>
					<div class="form-group">
						<label for="text">When was the last time the Fire Marshal
							Inspected?:</label>
						<!--  <input type="text" name='lastinspecteddate' class="form-control updatedatafire" id="lastinspecteddate">  -->
						<div class='input-group date updatedatafire'>
							<input type='text' id='lastinspecteddate' class="form-control" name='lastinspecteddate' />
							<span class="input-group-addon"> <span
								class="glyphicon glyphicon-calendar"></span>
							</span>
						</div>
						<input type="hidden" id="threatinfo" name="threatinfo"> <input type="hidden"
							id="lengthbiggestthreats">
					</div>


					<!--    <div class="form-group">
                <div class='input-group date' id='last_inspected_date'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
 -->

				<!-- 	<div id="education_fields1"></div>
					<div class="clear"></div> -->

					<div class="form-group">

						<label for="text" style="color: red;">Where are the
							biggest fire threats? I.e. injection molding, ovens, combustible
							dust, wire rack:</label>
					<div id="education_fields1"></div>
					<div class="clear"></div>
					<!-- 	<table id="myTable" class=" table order-list">
							<thead>
								<tr>
									<th style="text-align: center;">Threat Name</th>
									<th style="text-align: center;">Suppression/Mitigation</th>
									<th style="text-align: center;">Last Verified Date</th>
									<th style="text-align: center;">Who Maintains the system</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="col-sm-2"><input type="text" id="threatname"
										name='threatName' class="form-control updatedatafire"
										placeholder="Enter Threat Name" /></td>
									<td class="col-sm-3"><input type="text" id="suppression"
										name='supression' class="form-control updatedatafire"
										placeholder="Enter Suppression/Mitigation" /></td>
									<td class="col-sm-3"><input type="text" id="verified_date"
										name='lastVerifiedData' class="form-control updatedatafire" />
									</td>
									<td class="col-sm-3"><input type="text"
										id="system_maintain" name='maintainsSystem'
										class="form-control updatedatafire"
										placeholder="Enter System maintaince name" /></td>

								</tr>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="5" style="text-align: left;"><input
										type="button" class="btn btn-lg btn-block "
										onclick='createTableFire()' id="addrow" value="Add" /></td>
								</tr>
								<tr>
								</tr>
							</tfoot>
						</table> -->
						<div id='hideinfo1'>
							<table id='table3'
								class="table table-condensed table-bordered table-hover ">
								<thead>
									<tr>
										<th>Critical Business</th>
										<th>Financial Impact</th>
										<th>Critical Business</th>
										<th>Financial Impact</th>

									</tr>
								</thead>
								<tbody id="tableBodyFire"></tbody>

							</table>
						</div>
					</div>

					<div
						class="col-md-offset-5 col-md-2 col-md-offset-5 col-sm-offset-4 col-sm-4 col-sm-offset-4 col-xs-offset-4 col-xs-4 col-xs-offset-4">
						<button type="submit" class="btn btn-success updatefire"
							onclick="validateFire()" style="display: none;">Update</button>
						<button type="button" class="btn btn-primary editfire">Edit
							Information</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- end  of fire -->

	<!-- start of utlity failure -->
	<div id="utility" class="tabcontent">
		<h4>Utility Failure</h4>
		<div class="row">
			<form id="UtilityFailure" name="UtilityFailure">
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="sel1" style="color: red; font-size: 18px;">
									Site Name</label> <input type="text" class="form-control" id="site_name_utility"
									name="site" readonly>
				</div>
				<div class="form-group  col-md-offset-2 col-md-8">
					<label for="text">Is there a Power backup on site?:</label> <select
						class="form-control updatedatautility" id="power_backup"
						name="power_backup">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
						<option value="Not-Sure">Not-Sure</option>
					</select>
				</div>
				<div class="backup-onsite col-md-2"
					style="display: none; margin-top: 30px; color: red;">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"></i> <span
						class="tooltiptext">Tooltip text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Is the Power backup sufficient to carry
						on normal activities?:</label> <select
						class="form-control updatedatautility" id="sufficient_backup"
						name="sufficient_backup">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
						<option Value="Not-Sure">Not-Sure</option>
					</select>
				</div>
				<div class="backup-sufficient col-md-2"
					style="display: none; margin-top: 30px; color: red;">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"></i> <span
						class="tooltiptext">Tooltip text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Is the Power backup sufficient to carry
						on normal activities?:</label> <input type="text"
						class="form-control updatedatautility" id="power_normal"
						name="power_normal">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">When is the last time the Power backup
						was tested?:</label> <input type="text"
						class="form-control updatedatautility" id="powerbackup_test"
						name="powerbackup_test">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Are Incoming Power Transfers located on
						site?:</label> <select class="form-control updatedatautility"
						id="power_transform" name="power_transform">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>
				</div>
				<div class="form-group col-md-offset-2 col-md-8"
					style="display: none;" id="regularl_inspected">
					<label for="text">If so, are they inspected regularly?:</label> <input
						type="text" class="form-control updatedatautility" id="inspection"
						name="inspection">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Are spares readily available?:</label> <select
						class="form-control updatedatautility" id="spares" name="spares">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Are main power service switchgears
						thermally inspected and tested regularly?:</label> <select
						class="form-control updatedatautility" id="switchgears"
						name="switchgears">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Are spares or mitigation power rerouting
						readily available?:</label> <select class="form-control updatedatautility"
						id="mitigation" name="mitigation">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
					</select>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Is there a Water backup on site?:</label> <select
						class="form-control updatedatautility" id="water_backup"
						name="water_backup">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
						<option Value="Not-Sure">Not-Sure</option>
					</select>
				</div>
				<div class="backup-water col-md-2"
					style="display: none; margin-top: 30px; color: red;">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"></i> <span
						class="tooltiptext">Tooltip text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Is the Water backup sufficient to carry
						on normal activities?:</label> <select
						class="form-control updatedatautility" id="water_normal"
						name="water_normal">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
						<option Value="Not-Sure">Not-Sure</option>
					</select>
				</div>
				<div class="sufficient-water col-md-2"
					style="display: none; margin-top: 30px; color: red;">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"></i> <span
						class="tooltiptext">Tooltip text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">When is the last time the Water backup
						was tested?:</label> <input type="text"
						class="form-control updatedatautility" id="water_backuptest"
						name="water_backuptest">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Are Hazardous Chemicals Stored on site?:</label>
					<select class="form-control updatedatautility" id="haz_chem"
						name="haz_chem">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
						<option Value="Not-Sure">Not-Sure</option>
					</select>
				</div>
				<div class="Hazardous-Chemicals col-md-2"
					style="display: none; margin-top: 30px; color: red;">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"></i> <span
						class="tooltiptext">Tooltip text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Do backups exist to prevent
						leakage/exposure?:</label> <select class="form-control updatedatautility"
						id="leakage" name="leakage">
						<option value="">Select</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
						<option Value="Not-Sure">Not-Sure</option>
					</select>
				</div>
				<div class="backup-exit col-md-2"
					style="display: none; margin-top: 30px; color: red;">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"></i> <span
						class="tooltiptext">exit backup text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Are Hazmat Spill Kits in place?:</label> <select
						class="form-control updatedatautility" id="hazmat" name="hazmat">
						<option value="">-Select-</option>
						<option value="Yes">Yes</option>
						<option value="No">No</option>
						<option Value="Not-Sure">Not-Sure</option>
					</select>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">What Chemicals requires utilities to
						maintain a safe condition?:</label> <input type="search"
						class="form-control updatedatautility" id="chemiclas_safe"
						name="chemiclas_safe">
				</div>
				<div
					class="col-md-offset-5 col-md-2 col-md-offset-5 col-sm-offset-4 col-sm-4 col-sm-offset-4 col-xs-offset-4 col-xs-4 col-xs-offset-4">
					<button type="submit" class="btn btn-success updateutility"
						onclick="UpdateUtilitydata()" style="display: none;">Update</button>
					<button type="button" class="btn btn-primary editutility">Edit
						Information</button>
				</div>
			</form>
		</div>
	</div>
	<!-- end of utlity failure -->




	<!-- start of it -->
	<div id="it" class="tabcontent">
		<div class="row">
			<h4>IT</h4>
		</div>
		<div class="row">
			<form action="" name="ITDataForm" id="ITDataForm">
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="sel1" style="color: red; font-size: 18px;">
									Site Name</label> <input type="text" class="form-control" id="site_name_it"
									name="site" readonly>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Is there a Data Backup system in place:</label> <select
						class="form-control updatedataIT" id="data_backupplace"
						name="data_backupplace">
						<option value="">Select</option>
						<option value="data-back-yes">Yes</option>
						<option value="data-back-no">No</option>
						<option value="data-back-not-sure">Not - Sure</option>
					</select>
				</div>
				<div class="icon_data_back_yes col-md-2"
					style="margin-top: 30px; color: red;" id="System_Backup">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"
						id="data-backup"></i> <span class="tooltiptext">Tooltip
						text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8" id="frequent-data">
					<label for="text">How Frequently is the Data Backed up:</label> <input
						type="text" class="form-control updatedataIT" id="frequent_backup"
						name="frequent_backup">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">How would you rank the general attitude
						of the work force:</label> <input type="text"
						class="form-control updatedataIT" id="work_rank" name="work_rank">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Is there data backup stored off-site or
						in a way that it can be recovered if the main facility is a total
						loss:</label> <select class="form-control updatedataIT" id="data_offsite"
						name="data_offsite">
						<option value="">Select</option>
						<option value="stored-backup">Yes</option>
						<option>No</option>
						<option>Not - Sure</option>
					</select>
				</div>
				<div class="col-md-2" style="margin-top: 30px; color: red;"
					id="recovered_off_site">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"></i> <span
						class="Stored-text">Stored text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Where is this system physically locate:</label> <input
						type="text" class="form-control updatedataIT" id="physical_locate"
						name="physical_locate">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Is there a current backup plan in place:</label>
					<select class="form-control updatedataIT" id="current_backup"
						name="current_backup">
						<option value="">Select</option>
						<option value="yes-current-backup">Yes</option>
						<option>No</option>
						<option>Not - Sure</option>
					</select>
				</div>
				<div class="current-backup col-md-2"
					style="display: none; margin-top: 30px; color: red;">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"
						id="data-backup"></i> <span class="tooltiptext">current-backup
						text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Has it been tested:</label> <select
						class="form-control updatedataIT" id="beentested"
						name="beentested">
						<option value="">Select</option>
						<option value="tested-yes">Yes</option>
						<option>No</option>
						<option>Not Sure</option>
					</select>
				</div>
				<div class="tested col-md-2"
					style="display: none; margin-top: 30px; color: red;">
					<i class="fa fa-question-circle fa-2x" aria-hidden="true"
						id="data-backup"></i> <span class="tooltiptext">Tooltip
						text</span>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Date of last test:</label> <input type="text"
						class="form-control updatedataIT" id="lasttest_date"
						name="lasttest_date">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">How many forms of authentication are
						required to access this system:</label> <select
						class="form-control updatedataIT" id="authentication"
						name="authentication">
						<option value="">Select</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>More</option>
					</select>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">How often is user access audited:</label> <select
						class="form-control updatedataIT" id="access_audited"
						name="access_audited">
						<option value="">Select</option>
						<option>Monthly</option>
						<option>Every Six Months</option>
						<option>Once a Year</option>
						<option>Longer than a year</option>
					</select>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Are network connections redundant:</label> <select
						class="form-control updatedataIT" id="network_connections"
						name="network_connections">
						<option value="">Select</option>
						<option>Yes</option>
						<option>No</option>
						<option>Not - Sure</option>
					</select>
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">What if affected when this system goes
						offline:</label> <input type="text" class="form-control updatedataIT"
						id="affected_system" name="affected_system">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Do we have software/hardware support from
						the vendor:</label> <select class="form-control updatedataIT"
						id="software_hardware" name="software_hardware">
						<option value="">Select</option>
						<option value="Yes Total Support">Yes Total Support</option>
						<option value="Yes Some Support">Yes Some Support</option>
						<option value="No">No</option>
						<option value="Not - Sure">Not - Sure</option>
					</select>
				</div>
				<div class="sla">
					<div class="form-group col-md-offset-2 col-md-8">
						<label for="text"> If so what is the SLA:</label> <input
							type="text" class="form-control updatedataIT" id="What_SLA"
							name="what_sla">
					</div>
					<div class="form-group col-md-offset-2 col-md-8">
						<label for="text">What number do we call for emergency
							support:</label> <input type="text" class="form-control updatedataIT"
							id="emergency_support" name="emergency_support">
					</div>

				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">What is the update schedule:</label> <input
						type="text" class="form-control updatedataIT" id="update_schedule"
						name="update_schedule">
				</div>

				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Who is the IT Owner:</label> <input type="text"
						class="form-control updatedataIT" id="it_name" name="it_name"
						placeholder="Owner Name"> <br> <input type="email"
						class="form-control updatedataIT" id="it_email" name="it_email"
						placeholder="Owner email"> <br> <input type="number"
						class="form-control updatedataIT" id="it_phone" name="it_phone"
						placeholder="Owner phone number"> <br> <input
						type="number" class="form-control updatedataIT" id="it_cell"
						name="it_cell" placeholder="Owner cell Number">
				</div>
				<div class="form-group col-md-offset-2 col-md-8">
					<label for="text">Back Up IT Owner:</label> <input type="text"
						class="form-control updatedataIT" id="backupit_name"
						name="backupit_name" placeholder="Backup Owner Name"> <br>
					<input type="email" class="form-control updatedataIT"
						id="backupit_email" name="backupit_email"
						placeholder="Backup Owner email"> <br> <input
						type="number" class="form-control updatedataIT"
						id="backupit_phone" name="backupit_phone"
						placeholder="Backup Owner phone number"> <br> <input
						type="number" class="form-control updatedataIT" id="backupit_cell"
						name="backupit_cell" placeholder="Backup Owner cell Number">
				</div>

				<div
					class="col-md-offset-5 col-md-2 col-md-offset-5 col-sm-offset-4 col-sm-4 col-sm-offset-4 col-xs-offset-4 col-xs-4 col-xs-offset-4">
					<button type="submit" class="btn btn-success updateIT"
						onclick="UpdateITData()" style="display: none;">Update</button>
					<button type="button" class="btn btn-primary editIT">Edit
						Information</button>
				</div>
			</form>
		</div>
	</div>
	<!-- end of IT -->



	<!-- start of labor  -->
	<div id="labor" class="tabcontent">
		<div class="row">
			<h4>Labor Relations</h4>
		</div>
		<div class="row">
			<div class="col-md-offset-2 col-md-8 col-md-offset-2">
				<form id="LaborData" name="LaborData">
					<div class="form-group">
						<label for="sel1" style="color: red; font-size: 18px;">
									Site Name</label> <input type="text" class="form-control" id="site_name_labour"
									name="site" readonly>
					</div>
					<div class="form-group">
						<label for="text">Is this a Union or Non-Union site:</label> <select
							class="form-control updatedatalabour" id="union"
							name="union_nonunion">
							<option>Select</option>
							<option>Union</option>
							<option>Non-Union</option>
						</select>
					</div>
					<div class="form-group">
						<label for="text">In recent history (less than 10 years)
							has there been a strike:</label> <select
							class="form-control updatedatalabour" id="history" name="history">
							<option>Select</option>
							<option>Yes</option>
							<option>No</option>
						</select>
					</div>

					<div class="form-group">
						<label for="text">Will extensive labor negotiations be
							taking place within the next 12 months:</label> <select
							class="form-control updatedatalabour" id="labor_negotiations"
							name="labor_negotiations">
							<option>Select</option>
							<option>Yes</option>
							<option>No</option>
						</select>
					</div>
					<div class="form-group">
						<label for="text">How would you rank the general attitude
							of the work force:</label> <select class="form-control updatedatalabour"
							id="rank" name="rank">
							<option>Select</option>
							<option>Very Happy</option>
							<option>Happy</option>
							<option>Neutral</option>
							<option>Un-Happy</option>
							<option>Very Un-Happy</option>
						</select>
					</div>
					<div class="form-group">
						<label for="text">In the event of a strike, can salaried
							employees replace the labor force:</label> <select
							class="form-control updatedatalabour" id="salaried"
							name="salaried">
							<option>Select</option>
							<option>Yes - Almost Completely</option>
							<option>Yes - But to a lesser extent</option>
							<option>No - Not All</option>
						</select>
					</div>
					<div class="form-group">
						<label for="text">What percentage of work can be
							re-covered by the salaried employees:</label> <select
							class="form-control updatedatalabour" id="percentage_work"
							name="percentage_work">
							<option>Select</option>
							<option>0-25%</option>
							<option>25-50%</option>
							<option>50-75%</option>
							<option>75-100%</option>
						</select>
					</div>
					<div class="form-group">
						<label for="text">Is there a willing pool of potential
							labor within the region:</label> <select
							class="form-control updatedatalabour" id="pool_potential"
							name="pool_potential">
							<option>Select</option>
							<option>Yes</option>
							<option>No</option>
							<option>Not Sure</option>
						</select>
					</div>
					<div
						class="col-md-offset-5 col-md-2 col-md-offset-5 col-sm-offset-4 col-sm-4 col-sm-offset-4 col-xs-offset-4 col-xs-4 col-xs-offset-4">
						<button type="submit" class="btn btn-success updatelabour"
							onclick="UpdateLaborDetails()" style="display: none;">Update</button>
						<button type="button" class="btn btn-primary editlabour"
							onclick="editlabour()">Edit Information</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- end of labour -->
</body>
<script src="../libs/jquery/jquery.min.js"></script>
<script src="../libs/bootstrap/js/bootstrap.min.js"></script>
<script src="../libs/owlcarousel/owl.carousel.min.js"></script>
<script src="../libs/venobox/venobox.min.js"></script>
<script src="../libs/knob/jquery.knob.js"></script>
<script src="../libs/wow/wow.min.js"></script>
<script src="../libs/parallax/parallax.js"></script>
<script src="../libs/easing/easing.min.js"></script>
<script src="../libs/nivo-slider/js/jquery.nivo.slider.js"
	type="text/javascript"></script>
<script src="../libs/appear/jquery.appear.js"></script>
<script src="../libs/isotope/isotope.pkgd.min.js"></script>
<!-- data table -->
<script src="../js/jquery.dataTables.min.js"></script>
<script src="../js/dataTables.buttons.min.js"></script>
<script src="../js/jszip.min.js"></script>
<script src="../js/vfs_fonts.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script src="../js/buttons.html5.min.js"></script>
<script src="../js/buttons.print.min.js"></script>
<script
	src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
<script
	src="https://cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>
<script src="../js/main.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
<script src="../js/sitewide.js"></script>



<script>

	var api = "https://bcp-web.al.ge.com/BCP/site_wide_threads/";
	//var api = "http://localhost:8085/BCP/site_wide_threads/";
	
	 var site_nam = window.location.pathname;
        var Site_original = decodeURI(site_nam.slice(23, 500));
       // alert(Site_original);
	
		  document.getElementById("site_name").value=Site_original;
		  document.getElementById("site_name_fire").value=Site_original;
		  document.getElementById("site_name_utility").value=Site_original;
		  document.getElementById("site_name_it").value=Site_original;
		  document.getElementById("site_name_labour").value=Site_original;
	 document.getElementById("site_name_heading").innerHTML=Site_original;
	document.getElementById("name").innerHTML = localStorage.getItem('user-name');

$(document).ready(function() { 
	//$(".updatedata").attr('disabled', !$("#sName").attr('disabled'));
	$( ".updatedata" ).prop( "disabled", true );
	$( ".updatedatafire" ).prop( "disabled", true );
	$( ".updatedatautility" ).prop( "disabled", true );
	$( ".updatedataIT" ).prop( "disabled", true );
	$( ".updatedatalabour" ).prop( "disabled", true );
	 $(".edit").click(function() {
	    	$(".update").show();
	    	$(".edit").hide();
	    	$( ".updatedata" ).prop( "disabled", false );
	    	
	    }); 
	 $(".editfire").click(function() {
	    	$(".updatefire").show();
	    	$(".editfire").hide();
	    	$( ".updatedatafire" ).prop( "disabled", false );
	    	
	    }); 
	 $(".editutility").click(function() {
	    	$(".updateutility").show();
	    	$(".editutility").hide();
	    	$( ".updatedatautility" ).prop( "disabled", false );
	    	
	    }); 
	 $(".editIT").click(function() {
	    	$(".updateIT").show();
	    	$(".editIT").hide();
	    	$( ".updatedataIT" ).prop( "disabled", false );
	    	
	    }); 
	 $(".editlabour").click(function() {
	    	$(".updatelabour").show();
	    	$(".editlabour").hide();
	    	$( ".updatedatalabour" ).prop( "disabled", false );
	    	
	    }); 

	 getNaturalDisasterData();
	 getFireData();
	 getSiteDataUtility();
	 getITData();
	 getLabourData();

	 
   }); 
   
/*  addmore for act of god*/

function education_fields() {

    room++;
	//console.log('hi'+''+room);
    var objTo = document.getElementById('education_fields')
    var divtest = document.createElement("div");
	divtest.setAttribute("class", "form-group removeclass"+room);
	var rdiv = 'removeclass'+room;
	//alert(rdiv);
    divtest.innerHTML = '<div class="col-sm-6 nopadding"><div class="form-group"> <input type="text" class="form-control" id="critical_business'+room+'"  value="" placeholder="Please enter Critical Business Functions1"></div></div><div class="col-sm-6 nopadding"><div class="form-group"> <div class="input-group"> <input type="text" class="form-control" id="financial_impacts'+room+'"  value="" placeholder="Please enter financial impacts (loss) for each day the Business Function is down"><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_education_fields('+ room +');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button></div></div></div></div><div class="clear"></div>';
    $("#NDBusinessfunctionlength").val(room+1);
    objTo.appendChild(divtest)
}
   function remove_education_fields(rid) {
	   $("#NDBusinessfunctionlength").val(room+1);
	   $('.removeclass'+rid).remove();
   }
   
   


/* end of addmore  */
/*  addmore fileds option for fire */
 
 function education_fields1() {
    room++;
	//console.log('hi'+''+room);
    var objTo = document.getElementById('education_fields1')
    var divtest = document.createElement("div");
	divtest.setAttribute("class", "form-group removeclass"+room);
	var rdiv = 'removeclass'+room;
    divtest.innerHTML = '<div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="threatname'+room+'"  value="" placeholder="Please enter Threat name"></div></div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="suppression'+room+'"  value="" placeholder="Please enter suppression name"></div></div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="verified_date'+room+'"  value="" placeholder="Please enter verified date"></div></div><div class="col-sm-3 nopadding"><div class="form-group"> <div class="input-group"> <input type="text" class="form-control" id="system_maintain'+room+'"  value="" placeholder="Please enter system_maintain name"><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_education_fields('+ room +');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button></div></div></div></div><div class="clear"></div>';
    $("#lengthbiggestthreats").val(room+1);
    objTo.appendChild(divtest)
}
   function remove_education_fields(rid) {

	   $("#lengthbiggestthreats").val(room+1);
	   $('.removeclass'+rid).remove();
   }
   
 
 
 /*  end of fire addmore fileds */






  
  function openCity(evt, cityName) {
	    var i, tabcontent, tablinks;
	    tabcontent = document.getElementsByClassName("tabcontent");
	    for (i = 0; i < tabcontent.length; i++) {
	        tabcontent[i].style.display = "none";
	    }
	    tablinks = document.getElementsByClassName("tablinks");
	    for (i = 0; i < tablinks.length; i++) {   	
	        tablinks[i].className = tablinks[i].className.replace(" active", "");
	     
	    }
	    document.getElementById(cityName).style.display = "block";
	    evt.currentTarget.className += " active";
	}
 

  	
    var counter = 1;
    window.createTable = function()
 	{
	 
		if ($('#critical_business1').val() == '') 
	 	{
	 		alert("Please Enter Critical Business..!!");
	 		return false;
	 	}
		if ($('#financial_impacts1').val() == '') 
	 	{
	 		alert("Please Enter the Financial Impact..!!");
	 		return false;
	 	}
	 $('#table2').show();
		var check=true;
 	counter++;
 	
 	
 	
 	var business = document.getElementById("critical_business1").value;
 	var impact = document.getElementById("financial_impacts1").value;
 	 $('#critical_business1').val('');
	 $('#financial_impacts1').val('');
 	
 
     
 	var htmlText = '';
 	htmlText += '<tr class="first">';
 	htmlText += '<td><input type="text" id="critical_business' + counter
 			+ '" class="form-control" disabled   value="'
       + business
 			+ '">';
 	htmlText += '</td>';
 	htmlText += '<td>';
 	htmlText += '<input type="text" id="financial_impacts' + counter
 			+ '" class="form-control" disabled  value="'
      	+ impact + '">';
 	htmlText += '</td>';
 	 	htmlText += '</tr>';
 	htmlText += '</tbody>';
 	htmlText += '</table>';
 	$("#hideinfo").show();	
 	$('#tableBody').append(htmlText);
 	 
 } 

 $(function() {
	// $("#hideinfo").hide();
	 $("#hideinfo1").hide();
 })
 var counterfire=1;
 window.createTableFire = function()
	 	{
		 
	 if ($('#threatname1').val() == '') 
	 	{
	 		alert("Please Enter Treat Name..!!");
	 		return false;
	 	}
		if ($('#suppression1').val() == '') 
	 	{
	 		alert("Please Enter Suppression..!!");
	 		return false;
	 	}
		if ($('#verified_date1').val() == '') 
	 	{
	 		alert("Please Enter Verified Date..!!");
	 		return false;
	 	}
		if ($('#system_maintain1').val() == '') 
	 	{
	 		alert("Please Enter System Maintainence info..!!");
	 		return false;
	 	}
		$('#table2').show();
 		var check=true;
	 	counterfire++;
	 	var threatname = document.getElementById("threatname1").value;
	 	var suppression = document.getElementById("suppression1").value;
	 	var verified_date = document.getElementById("verified_date1").value;
	 	var system_maintain = document.getElementById("system_maintain1").value;
	 	 $('#threatname1').val('');
		 $('#suppression1').val('');
		 $('#verified_date1').val('');
		 $('#system_maintain1').val('');
	 	var htmlText = '';
	 	htmlText += '<tr class="first">';
	 	htmlText += '<td><input type="text" id="threatname' + counterfire
	 			+ '" class="form-control" disabled   value="'
	       + threatname
	 			+ '">';
	 	htmlText += '</td>';
	 	htmlText += '<td>';
	 	htmlText += '<input type="text" id="suppression' + counterfire
	 			+ '" class="form-control" disabled  value="'
	      	+ suppression + '">';
	 	htmlText += '</td>';
	 	htmlText += '<td>';
	 	htmlText += '<input type="text" id="verified_date' + counterfire
	 			+ '" class="form-control" disabled  value="'
	      	+ verified_date + '">';
	 	htmlText += '</td>';
	 	htmlText += '<td>';
	 	htmlText += '<input type="text" id="system_maintain' + counterfire
	 			+ '" class="form-control" disabled  value="'
	      	+ system_maintain + '">';
	 	htmlText += '</td>';
	 	 	htmlText += '</tr>';
	 	htmlText += '</tbody>';
	 	htmlText += '</table>';
	 	$("#hideinfo1").show();	
	 	$('#tableBodyFire').append(htmlText);
	 	 
	 }
  
	 $(function() {
		 $("#hideinfo").hide();
	 })



function validate(){

		 var a=document.getElementById('site_name').value;

		 var last_user=  localStorage.getItem('user-name');

		 var today = new Date();
		 var dd = String(today.getDate()).padStart(2, '0');
		 var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
		 var yyyy = today.getFullYear();

		 today = mm + '-' + dd + '-' + yyyy;
		 console.log(a+'----'+today+'------'+last_user);

		 $.ajax({
				url : api + "natural_threat_date",
				  type: 'POST',
				  data: {
					  "site": a,
					  "date": today,
					  "last_user": last_user
				  },
				success : function(response) {
				//	localStorage.setItem('natural_threat_date', response.date);
					  }
				  });

		
		 
		var abc = fileUpload1();

		if(abc=='222'){
		 var def = fileUpload();
	 		}
 		if(abc=='222' && def=='444'){

 			//alert($('#backup_site').val()+'@@@@'+$('#tree_list').val());
		
 			 if($('#backup_site').val() == 'No')
 	 			 {
 	 		//	 alert(a);
 				$.ajax({
 					url : 'http://localhost:8085/BCP/deleteFile',
 					  type: 'POST',
 					  data: {"site":a},
 					  success : function(response) {
 					 // alert(response);

 					  }
 					  });
 	 			 }
 			if($('#tree_list').val() == 'No')
 	 			{
 	 		//	alert(a);
 				$.ajax({
 					url : 'http://localhost:8085/BCP/deleteFileCrisis',
					  type: 'POST',
					  data: {"site":a},
					  success : function(response) {
					 // alert(response);

					  }
 					  });
 	 			}
 	 		

 			var str="";
 			//Validations Pending
 			 counter=$("#NDBusinessfunctionlength").val();
 			// alert("Count : "+counter);
 			for(i=0;i<counter;i++){
 			
 				
 				var a=$("#critical_business"+i).val();
 				 var b=$("#financial_impacts"+i).val();
 				 if(typeof $("#critical_business"+i).val() !='undefined'){
 					 str+=a+"/"+b+"@";
 							 
 				 }
 				
 				 
 				
 			}
 			//alert(str);
 			$('#business_impact').val(str);
 		     
 			
 			
		 var $form = $("#ActOfGod");
		 
			var unindexed_array = $form.serializeArray();
			var indexed_array = {};

			$.map(unindexed_array, function(n, i){
			    indexed_array[n['name']] = n['value'];
			});

			var a=JSON.stringify(indexed_array);
			console.log(a);

			$.ajax({
			url : api + "UpdateNaturalThreat",
			  type: 'POST',
			  data: a,
			  contentType: 'application/json; charset=utf-8',
			
			  success : function(response) {
				 
			 alert(response);
			 
				  }
			  });
			 
 		}
	}
/* 	$('#business_impact').val(str);
     
	   var frm = $("#ActOfGod").serialize();
	   $.ajax({
			  type : 'POST',
			  dataType: 'json',  
			  url : 'UpdateActOfGod.html',
			  cache : false,
			  async: true,
			  data : frm ,
			  success : function(response) {
				 // alert('response');
				  var myJSON = JSON.stringify(response);
    			}
		     });
	   document.forms["ActOfGod"].submit();
	   alert("Natural Dsiaster Updated..!!");
   // }
}  
 */
function validateFire(){


	 var str="";
	//Validations Pending
	counter=$("#lengthbiggestthreats").val();
	for(i=0;i<counter;i++){
	
		
		var a=$("#threatname"+i).val();
		 var b=$("#suppression"+i).val();
		 var c=$("#verified_date"+i).val();
		 var d=$("#system_maintain"+i).val();
		if(typeof $("#threatname"+i).val() !='undefined'){
			 str+=a+"/"+b+"/"+c+"/"+d+"@";
		 }
		}

	$('#threatinfo').val(str);

	 var $form = $("#firethreatform");
		var unindexed_array = $form.serializeArray();
		var indexed_array = {};

		$.map(unindexed_array, function(n, i){
		    indexed_array[n['name']] = n['value'];
		});

		var a=JSON.stringify(indexed_array);
		console.log(a);
	//	alert(a);
		
		 $.ajax({
		url : api + "UpdateFireThreat",
		  type: 'POST',
		  data: a,
		  contentType: 'application/json; charset=utf-8'
		})

}  





$(document).ready(function() {

	  
	  
	  $('#power_transform').change(function(){
			if($(this).val()=='Yes'){
			 $('#regularl_inspected').show();
			}
			else{
			 $('#regularl_inspected').hide();
			}
	});
	  $('#haz_chem').change(function(){
			if($(this).val()=='No' || $(this).val()=='Not - Sure'){
			//	alert($(this).val)
			 $('.Hazardous-chemicals').show();
			}
			else{
			 $('.Hazardous-chemicals').hide();
			}
	});




	 $('#leakage').change(function(){
			if($(this).val()=='No' || $(this).val()=='Not - Sure'){
			 $('.backup-exit').show();
			}
			else{
			 $('.backup-exit').hide();
			}
	});
	   
	   $('#data_backupplace').change(function(){
		   if($("#data_backupplace").val()=='No' || $("#data_backupplace").val()=='Not - Sure'){
			 $('#System_Backup').show();
			}else{
			 $('#System_Backup').hide();
			}
			
	});
	  
	   $('#data_offsite').change(function(){
		 
			if($('#data_offsite').val()=='No' || $('#data_offsite').val()=='Not - Sure'){
			 $('#recovered_off_site').show();
			}
			else{
				$('#recovered_off_site').hide();
			}
			
	});
	  
	   $('#current_backup').change(function(){
			if($("#current_backup").val()=='No' || $("#current_backup").val()=='Not - Sure'){
			 $('.current-backup').show();
			}
			else{
			 $('.current-backup').hide();
			 
			}
	});   
	   
	 $('#software_hardware').change(function(){
	 		if($(this).val()=='Yes Total Support' || $(this).val()=='Yes Some Support'){
	 		 $('.sla').show();
	 		}
	 		else{
	 		 $('.sla').hide();
	 		}
	 });
	 
	 $('#beentested').change(function(){
			if($("#beentested").val()=='No' || $("#beentested").val()=='Not - Sure'){
			 $('.tested').show();
			}
			else{
			 $('.tested').hide();
			 
			}
	});
	 $('#power_backup').change(function(){
			if($("#power_backup").val()=='No' || $("#power_backup").val()=='Not - Sure'){
			 $('.backup-onsite').show();
			}
			else{
			 $('.backup-onsite').hide();
			}
	});
	 
	 
	 $('#sufficient_backup').change(function(){
			if($(this).val()=='No' || $(this).val()=='Not - Sure'){
			 $('.backup-sufficient').show();
			}
			else{
			 $('.backup-sufficient').hide();
			}
	});
	 

	 $('#water_backup').change(function(){
			if($('#water_backup').val()=='No' || $('#water_backup').val()=='Not - Sure'){
			 $('.backup-water').show();
			}
			else{
			 $('.backup-water').hide();
			}
	});
	 $('#water_normal').change(function(){
			if($(this).val()=='No' || $(this).val()=='Not - Sure'){
			 $('.sufficient-water').show();
			}
			else{
			 $('.sufficient-water').hide();
			}
	});
	 $('#gea_portfolio').change(function(){
			if($(this).val()=='Yes'){
	     $('#gea-protfolio').show();
			 $('.insoursing-data').show();
			}
			else{
			 $('#gea-protfolio').hide();
			 $('.insoursing-data').hide();
			}
	 });
	 $('#outsource_production').change(function(){
			if($(this).val()=='Yes'){
	     $('#outsourcing-potential').show();
			$('.outsoursing-data').show();
			 //$('#emergency-response').hide();
			}
			else{
			 $('#outsourcing-potential').hide();
			 $('.outsoursing-data').hide();
			// $('#emergency-response').show();
			}
	 });
		
		$('#crisis_emergency').change(function(){
			if($('#crisis_emergency').val()=='Yes'){
	     	 $('#crisis-management').show();
			 $('.emergency_Response').hide();
			}
			else{
			 $('#crisis-management').hide();
			 $('.emergency_Response').show();
			}
	 });
	 

		$('#electronic_plans').change(function(){
		
			if($(this).val()=='Yes'){
	        $('#call-file').show();
	        $('.link').show();
			}
			else{
		
			 $('#call-file').hide();
			 $('.link').hide();
			
			}
	    });
		
		
	    $('#backup_site').change(function(){
			 if( $('#backup_site').val()=='Yes'){
	        $('.backup-site').show();
	        $('.backup-site-data').show(); 
	        $('.address').show();
	        $('.long').show();
			}
			else{
			 $('.backup-site-data').hide();	
			 $('.backup-site').hide();
			 $('.address').hide();
			 $('.long').hide();
			}
	    });	
	    $('#outside_riskzone').change(function(){
			
			if($(this).val()=='No' || $(this).val()=='Not Sure'){
	        $('.reason').show();
			}
			else{
		
			 $('.reason').hide();
			
			}
	    });
	   $('#outside_riskzone').change(function(){
			
			if($(this).val()=='No' || $(this).val()=='Not Sure'){
	   	 $('.sufficiently_outside').show();
	   	 
			}
			else{
			 $('.sufficiently_outside').hide();
			
			}
	    })
	    
})

function Plant()
{
if(document.getElementById("plant").selectedIndex=="")
{
alert ( "Please select plant!");
return false;
}
var sel = document.getElementById("plant");
//get the selected option
var selectedText = sel.options[sel.selectedIndex].text;
alert("You have selected : "+selectedText);
return true;
}
 // add more functionality for business functions

   $(function(){
    $('#addMore').on('click', function() {
              var data = $("#tb tr:eq(1)").clone(true).appendTo("#tb");
              data.find("input").val('');
     });
     $(document).on('click', '.remove', function() {
         var trIndex = $(this).closest("tr").index();
	    // console.log(trIndex);
		// console.log("length"+$('#tb tr').length);
		 /*if(trIndex.length>1){
		 $(this).closest("tr").remove();
		 }else{
		 }*/
            /*if(trIndex>1) {
             $(this).closest("tr").remove();
           } else {
             alert("Sorry!! Can't remove first row!");
           }*/
		   if($('#tb tr').length>2){
		   $(this).closest("tr").remove();
		   }
		   
      });
	  //$("td:last-child").unbind("click");
});  

// show and hide for act of god

// show and hide for act of god
     
		
		
	
		
			$('#tree_list').change(function(){
		
			if($(this).val()=='Yes'){
             $('#list-file').show();
			 $('.update-ehs').hide();
			}
			else{
		
			 $('#list-file').hide();
			  $('.update-ehs').show();
			
			}
        });
	
		     $('#min_req').change(function(){
		
			if($(this).val()=='Yes - All'){
            $('.site').show();
            $('.deficiency').hide();
            $('#why').hide();
			}
			 else if($(this).val()=='Yes -Some') {
			 $('.site').hide();
			 $('.deficiency').show();
			 $('#why').hide();
			}else{
				$('#why').show();
				}
        });

		function checkAttachment() {
      if (document.getElementById('attach-backup').value == '') {
         alert('Please attach plan when available');
      }   
      
   }
   
   // business  add and remove
   $(function(){
    $('#addMore').on('click', function() {
              var data = $("#tb tr:eq(1)").clone(true).appendTo("#tb");
              data.find("input").val('');
     });
     $(document).on('click', '.remove', function() {
         var trIndex = $(this).closest("tr").index();
	   
		   if($('#tb tr').length>2){
		   $(this).closest("tr").remove();
		   }
		   
      });
	  //$("td:last-child").unbind("click");
}); 


//end act of god

// utility failure show and hide conditions

	$('#Power-onsite-backup').change(function(){
		
			if($(this).val()=='No' || $(this).val()=='Not-Sure'){
            $('.backup-onsite').show();
			}
			else{
			 $('.backup-onsite').hide();
			}
        });
		$('#sufficient-back-up').change(function(){
		
			if($(this).val()=='No' || $(this).val()=='Not-Sure'){
            $('.backup-sufficient').show();
			}
			else{
			 $('.backup-sufficient').hide();
			}
        });
		
		$('#total-loss').change(function(){
		
			if($(this).val()=='yes'){
            $('.backup-data').show();
			 $('.backup-site-data').show();
			
			}
			else{
			 $('.backup-data').hide();
			 $('.backup-site-data').hide();
			}
        });
  // end utility failure 


function UpdateUtilitydata() {

	var $form = $("#UtilityFailure");
	var unindexed_array = $form.serializeArray();
	var indexed_array = {};

	$.map(unindexed_array, function(n, i){
	    indexed_array[n['name']] = n['value'];
	});

	var a=JSON.stringify(indexed_array);
	console.log(a);

	$.ajax({
	url : api + "add_utility",
	  type: 'POST',
	  data: a,
	  contentType: 'application/json; charset=utf-8'
	})

	alert("data Updated Successfully....!");

} 

function UpdateITData() {

	var $form = $("#ITDataForm");
	var unindexed_array = $form.serializeArray();
	var indexed_array = {};

	$.map(unindexed_array, function(n, i){
	    indexed_array[n['name']] = n['value'];
	});

	var a=JSON.stringify(indexed_array);
	console.log(a);

	$.ajax({
	url : api + "add_ITThreat",
	  type: 'POST',
	  data: a,
	  contentType: 'application/json; charset=utf-8'
	})

	alert("data Updated Successfully....!");

} 

function UpdateLaborDetails() {



var $form = $("#LaborData");
var unindexed_array = $form.serializeArray();
var indexed_array = {};

$.map(unindexed_array, function(n, i){
    indexed_array[n['name']] = n['value'];
});

var a=JSON.stringify(indexed_array);
console.log(a);

$.ajax({
url : api + "add_Labour",
  type: 'POST',
  data: a,
  contentType: 'application/json; charset=utf-8'
})

alert("data Updated Successfully....!");

} 
function getSiteDataUtility(){
	var frm = document.getElementById('site_name_utility').value;

	  $.ajax({
		  type: 'post',  
		   
	  	  url : api+'fetchUtilityFailure',
	  		cache : false,
	  	 	 data : {
		  	 	 "site":frm 
		  	 	 },
		  	 	 success : function(values) {
		  	 		 console.log(values);

		  	 
					
			$("#power_backup").val(values.power_backup);
			 $("#sufficient_backup").val(values.sufficient_backup);
			 $("#power_normal").val(values.power_normal);
			 $("#powerbackup_test").val(values.powerbackup_test);
			 $("#power_transform").val(values.power_transform);
			 $("#inspection").val(values.inspection);
			 $("#spares").val(values.spares);
			 $("#switchgears").val(values.switchgears);
			 $("#mitigation").val(values.mitigation);
			 $("#water_backup").val(values.water_backup);
			 $("#water_normal").val(values.water_normal);
			 $("#water_backuptest").val(values.water_backuptest);
			 $("#haz_chem").val(values.haz_chem);
			 $("#leakage").val(values.leakage);
			 $("#hazmat").val(values.hazmat);
			 $("#chemiclas_safe").val(values.chemiclas_safe);
		
		  	 	 }
	  });
	
}

function getITData(){
	var frm=document.getElementById('site_name_it').value;
	
	  $.ajax({
		  type: 'post',  
		   
	  	  url : api+'fetchITThreat',
	  		cache : false,
	  	 	 data : 
		  	 	 {
		  	 	 "site":frm 
		  	 	 },
	  	 success : function(values) {
		  	 console.log(values);
		
						
				$("#data_backupplace").val(values.data_backupplace);
				 $("#frequent_backup").val(values.frequent_backup);
				 $("#work_rank").val(values.work_rank);
				 $("#data_offsite").val(values.data_offsite);
				 $("#physical_locate").val(values.physical_locate);
				 $("#current_backup").val(values.current_backup);
				 $("#beentested").val(values.beentested);
				 $("#lasttest_date").val(values.lasttest_date);
				 $("#authentication").val(values.authentication);
				 $("#access_audited").val(values.access_audited);
				 $("#network_connections").val(values.network_connections);
				 $("#affected_system").val(values.affected_system);
				 $("#software_hardware").val(values.software_hardware);
				 $("#What_SLA").val(values.What_SLA);
				 $("#emergency_support").val(values.emergency_support);
				 $("#it_name").val(values.it_name);
				 $("#it_email").val(values.it_email);
				 $("#it_phone").val(values.it_phone);
				 $("#it_cell").val(values.it_cell);
				 $("#backupit_name").val(values.backupit_name);
				 $("#backupit_email").val(values.backupit_email);
				 $("#backupit_phone").val(values.backupit_phone);
				 $("#backupit_cell").val(values.backupit_cell);
				 $("#update_schedule").val(values.update_schedule);
				 
				
	  	 }
	  });
	
}


function getLabourData(){
	var frm = document.getElementById('site_name_labour').value;
	//alert(frm);
	  $.ajax({
		  type: 'post',  
	  	  url : api+'fetchLabourRelations',
	  		cache : false,
	  	 	 data : 
		  	 	 {
		  	 	 "site":frm 
		  	 	 },
	  	 success : function(values) {
			console.log(values);
	
				 $("#union").val(values.union);
				 $("#history").val(values.history);
				 $("#labor_negotiations").val(values.labor_negotiations);
				 $("#rank").val(values.rank);
				 $("#salaried").val(values.salaried);
				 $("#percentage_work").val(values.percentage_work);
				 $("#pool_potential").val(values.pool_potential);
			
	  	 }
	  });


}


function getNaturalDisasterData(){
	

	 var site= $("#site_name").val();

	$.ajax({
		  type: 'post',  
		   
		  url : api+'fetchNaturalTreat_BusinessFuncrions',
			cache : false,
		 	 data : 
			 	 {
			 	 "site":site
			 	 } ,
		 success : function(values) {
			 console.log("Busniess_Functions: "+values);
		
	  		var object = values;

	  		 	 var test ='';
	  			//roughObjSize = JSON.stringify(object).length;
	  			var roughObjSize = Object.keys(object).length;
	  			//alert(roughObjSize);
	  			 if(roughObjSize>=0){
	  			room =roughObjSize+1;
	  			 console.log("business-Functions"+room);
	  			 $("#NDBusinessfunctionlength").val(room);
	 	  		
	  		//	test+='<div class="col-md-2"><button type="button" class="btn btn-success">Success</button></div>';
	  			test += '<div align="right"><button style="width:100px;position: relative;right: 15px;" class="btn  btn-success" type="button"  onclick="education_fields();"> Add</button></div><br>';
	  			test +='<div class="col-md-6"><div class="form-group"><label for="usr">Critical Business:</label></div></div>';
	  			test +='<div class="col-md-6"><div class="form-group"><label for="usr">Financial Impacts:</label></div></div>';
	  			 for(i=0;i<object.length;i++){
	  			
	  		   test += '<div class="form-group removeclass'+i+'">';
	  		   test += '<div class="col-sm-6 nopadding">';
	  		   test +='<div class="form-group">';
	  		   test += '<input type="text" class="form-control" id="critical_business'+i+'"  name="critical_business" value="" placeholder="Please enter Critical Business Functions">';
	  		   test += '</div>';
	  		   test += '</div>';
	  		  test += '<div class="col-sm-6 nopadding">';
	  		  test += '<div class="form-group">';
	  		    test += '<div class="input-group">';
	  		      test += '<input type="text" class="form-control" id="financial_impacts'+i+'"  name="financial_impacts" value="" placeholder="Please enter financial impacts (loss) for each day the Business Function is down">';
	  		      test +='<div class="input-group-btn">';
	  			 /*  if(i==0){
	  		      test+='';
	  				}
	  				else{ */
  				 test +='<button class="btn btn-danger" type="button" id="test'+i+'" onclick="remove_education_fields('+ i +');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button>';
	  				//}
	  		      test +='</div>';
	  		   test += '</div>';
	  		  test += '</div>'
	  		 test += '</div>';
	  		 test += '</div>';
	  		
	  			 }
	  			 
	  			 document.getElementById('education_fields').innerHTML = test;
	  			 }
	  			 else{
	  			 room = 1;
	  			 }
	  			 
	  			 for(i=0;i<object.length;i++){
		  		
	  		
	  				var x = $('#critical_business'+i).val(object[i].critical_business);
	  				var y = $('#financial_impacts'+i).val(object[i].financial_impact);
	  			 } 
	  			 
	  
			   
	  	 }
	  }) 
	
 

 var site=document.getElementById('site_name').value;

	$("#natural_site_name").html(site);

$.ajax({
	  type: 'post',  
	   
	  url : api+'fetchNaturalTreat',
		cache : false,
	 	 data : 
		 	 {
		 	 "site":site
		 	 } ,
	 success : function(values) {
		 console.log(values);

		 if(values == null || values =='')
			 {
			 alert('No Data Found...........!');
			// window.location.reload();
			// document.getElementById("ActOfGod").reset();
				
			 }
		 else{
			/*  $("#critical_business").val(values.critical_business);
			 $("#financial_impacts").val(values.financial_impacts);
			 */ $("#tornado_risk").val(values.tornado_risk);
			 $("#earthquake_risk").val(values.earthquake_risk);
			 //$("#coast_distance").val(values.coast_distance);
			 $("#coast_distance").val(values.coast_distance);
			 $("#gea_portfolio").val(values.gea_portfolio);
			 $("#gea_where").val(values.gea_where);
			 $("#quake_risklevel").val(values.quake_risklevel);
			 $("#how_long").val(values.how_long);
			 $("#outsource_production").val(values.outsource_production);
			 $("#gea_who").val(values.gea_who);
			 $("#competitor").val(values.competitor);
			 $("#pvp_sign").val(values.pvp_sign);
			 $("#capacity_recovered").val(values.capacity_recovered);
			 $("#for_howlong").val(values.for_howlong);
			 $("#crisis_emergency").val(values.crisis_emergency);
			 $("#crm_lastupdate").val(values.crm_lastupdate);
			 $("#tree_list").val(values.tree_list);
			 $("#attach_calltree1").val(values.attach_calltree1);
			 $("#rebuild_site").val(values.rebuild_site);
			 $("#electronic_plans").val(values.electronic_plans);
			 $("#attach_calltree2").val(values.attach_calltree2);
			 $("#time_rebuild").val(values.time_rebuild);
			 $("#backup_site").val(values.backup_site);
			 $("#address").val(values.address);
			 $("#outside_riskzone").val(values.outside_riskzone);
			 $("#why").val(values.why);
			 $("#min_req").val(values.min_req);
			 $("#responsible_site").val(values.responsible_site);
			 $("#backup_siteplan").val(values.backup_siteplan);
			 $("#site_kind").val(values.site_kind);
			 $("#deficiency").val(values.deficiency); 
			 $("#flood_effect").val(values.flood_effect); 

			// document.getElementById('vendor').innerHTML = values.tornado_risk;
				 $("#risk_tornado").html(values.tornado_risk);
				 $("#risk_Earthquake").html(values.earthquake_risk);
				
				 console.log(typeof values.how_long);
				 $("#risk_Hurricane").html(values.coast_distance);
				 $("#risk_Flood").html(values.gea_portfolio);
				 
				 $("#crisis_team").html(values.crisis_emergency);
				 $("#crisis_updated").html(values.crm_lastupdate);
				
				 $("#vendor_out_source").html(values.gea_who);
				 $("#comp_out_source").html(values.competitor);
				 $("#pvp_out_source").html(values.pvp_sign);
				 $("#capacity_out_source").html(values.capacity_recovered);
				 $("#avail_out_source").html(values.for_howlong);

			    $("#location_in_source").html(values.gea_where);
				$("#avail_in_source").html(values.how_long);
				//document.getElementById("avail_in_source").innerHTML=values.how_long;
				$("#capacity_in_source").html(values.quake_risklevel);

			  	 $("#backup_re_plan").html(values.electronic_plans);

					 $("#backup_re_build").html(values.time_rebuild);
					 $("#backup_address").html(values.backup_site);
					 $("#backup_potential").html(values.outside_riskzone);
					 $("#backup_meet").html(values.min_req);
					 $("#backup_site123").html(values.address);
					 $("#backup_poc").html(values.responsible_site);
		
				 
					
			    if(values.crisis_emergency =='Yes'){
		     	 $('#crisis-management').show();
				 $('.emergency_Response').hide();
				}
				else{
				 $('#crisis-management').hide();
				 $('.emergency_Response').show();
				}

				if(values.outsource_production =='Yes'){
		     $('#outsourcing-potential').show();
				$('.outsoursing-data').show();
				 //$('#emergency-response').hide();
				}
				else{
				 $('#outsourcing-potential').hide();
				 $('.outsoursing-data').hide();
				// $('#emergency-response').show();
				}


				
				 if(values.gea_portfolio =='Yes'){
		     $('#gea-protfolio').show();
				 $('.insoursing-data').show();
				}
				else{
				 $('#gea-protfolio').hide();
				 $('.insoursing-data').hide();
				}
				
				
				 if(values.backup_site =='Yes'){
		        $('.backup-site').show();
		        $('.backup-site-data').show(); 
		        $('.address').show();
		        $('.long').show();
		        $(".responsible_site").show();
				}
				else{
				 $('.backup-site-data').hide();	
				 $('.backup-site').hide();
				 $('.address').hide();
				 $('.long').hide();
				 $(".responsible_site").hide();
				}

				if(values.tree_list=='Yes'){
		             $('#list-file').show();
					 $('.update-ehs').hide();
					}
					else{
				
					 $('#list-file').hide();
					  $('.update-ehs').show();
					
					}

				if(values.min_req == 'Yes - All'){
		            $('.site').show();
		            $('.deficiency').hide();
		            $('#why').show(); 
					}
				else if(values.min_req == 'Yes - Some'){
					 $('.site').hide();
					 $('.deficiency').show();
					 $('#why').hide(); 
					} else {
						 $('#why').show();
						}
			 
			 var risktorado = 0;
			 var riskearth = 0;
			 var riskcost = 0;
			 var riskflood = 0;
			
			 
			 var tornado = $('#tornado_risk').val();
			 var earthquake = $('#earthquake_risk').val();
			 var coast = $('#coast_distance').val();
			 var flood = $('#flood_effect').val();
             console.log("hi"+tornado);
			 
			if(tornado=='Very High'){
	    		risktorado+= +50;			
	    	}
	    	else if(tornado=='High'){
	    		risktorado+= +40;
				    	}
	    	else if(tornado=='Medium'){
	    		risktorado+= +30;
			}
	    	else if(tornado=='Low'){
	    		risktorado+= +20;
			}
	    	else if(tornado=='Very Low'){
	    		risktorado+= +10;
			}
			
			/*earthquake  */
			if(earthquake=='Extremely High'){
				riskearth+= +50;	
	    	}
			else if(earthquake=='Very High'){
				riskearth+= +40;
	    	}
			else if(earthquake=='High'){
				riskearth+= +30;		
			}
			else if(earthquake=='Moderate'){
				riskearth+= +20;
			}
			else if(earthquake=='Low'){
				riskearth+= +10;
			}
			else if(earthquake=='Very Low'){
				riskearth+= +5;
			}
			else if(earthquake=='Negligible'){
				riskearth+= +0;
				
			}
			
			/*cost distance  */
			if(coast=='25 miles'){
				riskcost+= +50;
			}
			if(coast=='25-50 miles'){
				riskcost+= +40;
			}
			if(coast=='50-100 miles'){
				riskcost+= +25;
			}
			if(coast=='100 miles'){
				riskcost+= +0;
			}
			/* flood risks  */
			if(flood=='High'){
				riskflood+= +50;
			}
			if(flood=='Moderate'){
				riskflood+= +25;
			}
			if(flood=='Low'){
				riskflood+= +10;
			}
			
			var risktorado1 = risktorado+riskearth+riskcost+riskflood;
			console.log(risktorado1);
			
			// alert(risktorado);
			 //alert(riskearth);
			// alert(c);
			 //alert(riskflood);
			 
			  FusionCharts.ready(function() {
				  var cSatScoreChart = new FusionCharts({
				    type: 'angulargauge',
				    renderAt: 'chart-container',
				   width: '100%',
				    /*height: '300',*/
				    dataFormat: 'json',
				    dataSource: {
				      "chart": {
					    //"borderColor": "#666666",
					
						//"bgColor": 'red',
				        "caption": "Natural Disaster Risk Level",
				        //"subcaption": "Last week",
				        "lowerLimit": "0",
				        "upperLimit": "200",
					    "bgColor": '#f0f8ff',
						//"showBorder": "1",
				        "theme": "fusion"
				      },
				      "colorRange": {
				        "color": [{
				          "minValue": "0",
				          "maxValue": "61",
				          "code": "#26a831"
				        }, {
				          "minValue": "62",
				          "maxValue": "125",
				          "code": "#f4f407"
				        }, {
				          "minValue": "126",
				          "maxValue": "200",
				          "code": "#cc3939"
				        }]
				      },
				      "dials": {
				        "dial": [{
				          "value": risktorado1
				        }]
				      }
				    }
				  }).render();
				  
				  
				  
				});
			 
			  //$("#risk_level").html("testing <b>1 2 3</b>");
			  alert("Risk Level Value is"+risktorado1);

			  if(risktorado1 < 61)
			  {
			  $("#risk_disaster_level").html('Low ('+risktorado1+')');
			   }
		   else if ((risktorado1 >= 61) || (risktorado1 <= 125) ) {
			//  alert('2');
			  $("#risk_disaster_level").html('Medium('+risktorado1+')');
			  } 
		  else 
		  		{
			//  alert('3');
			  $("#risk_disaster_level").html('High('+risktorado1+')');
			  }



			  
		 }
			 
			 }
});

}



function getFireData(){

	var site=document.getElementById('site_name_fire').value;

	$.ajax({
		  type: 'post',  
		   
		  url : api+'fetchFireTreat',
			cache : false,
		 	 data : 
			 	 {
			 	 "site":site
			 	 } ,
		 success : function(values) {
			 console.log(values);

			 var object=values;

			// $("#lastinspecteddate").val(values.lastinspecteddate);
			
			 var result = object.map(object => object.lastinspecteddate);
		
			 $('#lastinspecteddate').val(result[0]);
			 console.log("lastdate"+result[0]);
		         /*var a = object.length;
		  		  $("#lengthbiggestthreats").val(object.length); */
		  			 var test ='';
		  			 
		  			 if(object.length>=0){
		  			 room = (object.length)+1;
		  			 console.log(room);
		  			test += '<div align="right"><button style="width:100px;position: relative;right: 15px;" class="btn  btn-success" type="button"  onclick="education_fields1();"> Add</button></div><br>';
		  			 for(i=0;i<object.length;i++){
		  			
		  		   test += '<div class="form-group removeclass'+i+'">';
		  		   
		  		   test += '<div class="col-sm-3 nopadding">';
		  		   test +='<div class="form-group">';
		  		   test += '<input type="text" class="form-control" id="threatname'+i+'"  value="" placeholder="Please enter threatname">';
		  		   test += '</div>';
		  		   test += '</div>';
		  		  test += '<div class="col-sm-3 nopadding">';
		  		   test +='<div class="form-group">';
		  		   test += '<input type="text" class="form-control" id="suppression'+i+'"  value="" placeholder="Please enter suppression">';
		  		   test += '</div>';
		  		   test += '</div>';
		  		  test += '<div class="col-sm-3 nopadding">';
		  		   test +='<div class="form-group">';
		  		   test += '<input type="text" class="form-control" id="verified_date'+i+'"  value="" placeholder="Please enter verified date">';
		  		   test += '</div>';
		  		   test += '</div>';
		  		  test += '<div class="col-sm-3 nopadding">';
		  		  test += '<div class="form-group">';
		  		    test += '<div class="input-group">';
		  		      test += '<input type="text" class="form-control" id="system_maintain'+i+'"  value="" placeholder="Please enter system maintaince name">';
		  		      test +='<div class="input-group-btn">';
		  			
		  				 test +='<button class="btn btn-danger" type="button" id="test'+i+'" onclick="remove_education_fields('+ i +');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button>';
		  				
		  		      test +='</div>';
		  		   test += '</div>';
		  		  test += '</div>'
		  		 test += '</div>';
		  		 test += '</div>';
		  		
		  			 }
		  			 
		  			 
		  			 document.getElementById('education_fields1').innerHTML = test;
		  			 }
		  			 else{
		  			 room = 1;
		  			 }
		  			 
		  			  for(i=0;i<object.length;i++){
		  				//var j=i+1; 
		  			// $("#critical_business'+i+'").val();
		  				var x = $('#threatname'+i).val(object[i].threatName);
		  				var y = $('#suppression'+i).val(object[i].supression);
		  				var y = $('#verified_date'+i).val(object[i].lastVerifiedData);
		  				var y = $('#system_maintain'+i).val(object[i].maintainsSystem);
		  			 }
 
		  	 }
	  }) 
	
}


$(function () {
	    $('#lastinspecteddate').datetimepicker({
	      //  defaultDate: "11/1/2013",
	        disabledDates: [
	            moment("12/25/2013"),
	           // new Date(2013, 11 - 1, 21)
	        ]
	    });
	    var risklevelND=0;
	    
	    
	    
	    
	    
	    
	    
	});


 

'use strict';

var singleUploadForm = document.querySelector('#singleUploadForm');
var singleFileUploadInput = document.querySelector('#singleFileUploadInput');
var singleFileUploadInput1 = document.querySelector('#singleFileUploadInput1');
var singleFileUploadError = document.querySelector('#singleFileUploadError');
var singleFileUploadSuccess = document.querySelector('#singleFileUploadSuccess');


function uploadSingleFile(file,site) {
	 var formData = new FormData();
	    formData.append("site", site);
	    formData.append("file", file);

	    var xhr = new XMLHttpRequest();
	    xhr.open("POST", "/BCP/uploadFile");
	    xhr.send(formData);
} 

function uploadSingleFile1(file,site) {
	 var formData = new FormData();
	    formData.append("site", site);
	    formData.append("file", file);

	    var xhr = new XMLHttpRequest();
	    xhr.open("POST", "/BCP/uploadFileCrisisManagement");
	    xhr.send(formData);
} 

 function fileUpload(){
	    var files = singleFileUploadInput.files;
	    var site=document.getElementById('site_name').value;
	    if($('#backup_site').val() == 'Yes' && files.length === 0)
	    {
	    alert('please Select a File....!');
	    document.getElementById("singleFileUploadInput").required = true;
	    return "333";
	    }
    else{
	    uploadSingleFile(files[0],site);
	    return '444';  
    	}

}

 function fileUpload1(){
	    var files = singleFileUploadInput1.files;
	    var site=document.getElementById('site_name').value;

	    if($('#tree_list').val() == 'Yes' && files.length === 0)
		    {
	    	 alert('please Select a File....!');
	    	 document.getElementById("singleFileUploadInput1").required = true;
	    	 return "111";
		    }
	    else{
	    uploadSingleFile1(files[0],site); 
	    return "222"; 
	    }

	    
}

 function downloadFile(){

	 var site=document.getElementById('site_name').value;

	 if(site =='' || site == null || site == 'Select')
		 {
		 alert('Please Select a Site.....!');
		 return;
		 }
	 else{

		 window.location ='https://bcp-web.al.ge.com/BCP/downloadFile/'+site;
		// window.location ='http://localhost:8085/BCP/downloadFile/'+site;
	 }	
			
	 
 }

 function downloadCrisis_File(){

	 var site=document.getElementById('site_name').value;

	 if(site =='' || site == null || site == 'Select')
		 {
		 alert('Please Select a Site.....!');
		 }
	 else{

		 window.location ='https://bcp-web.al.ge.com/BCP/downloadFileCrisis/'+site;
		//window.location ='http://localhost:8085/BCP/downloadFileCrisis/'+site;
	 }	
			
	 
 }
 function printDiv(divName){
		var printContents = document.getElementById(divName).innerHTML;
		var originalContents = document.body.innerHTML;
		document.body.innerHTML = printContents;
		window.print();
		document.body.innerHTML = originalContents;
		location. reload(true);
	}


 
/*  $('#submit').on('click', function(e){
   $('.modal').modal('hide');
   console.log('Submit')
 }); */
	
	$("#natural").click(function(){
		 // alert("The paragraph was clicked.");

		  var site=document.getElementById('site_name').value;

			 if(site =='' || site == null || site == 'Select')
				 {
				 alert('Please Select a Site.....!');
				 $('#actReport').modal('hide');
				 return false;
				 }
			 else{
				 $.ajax({
						url : api + "natural_threat_date_get",
						  type: 'POST',
						  data: {
							  "site": site
							 },
						success : function(response) {
						//	localStorage.setItem('natural_threat_date', response.date);
							  document.getElementById("updateDate").innerHTML = response.date;
							  document.getElementById("last_updated_user").innerHTML = response.last_user; 
							  }
						  });
						 
				
				 $('#actReport').modal('show');
				 }
		  
	});
</script>
</html>
