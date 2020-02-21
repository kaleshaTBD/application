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
<link href="libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="libs/nivo-slider/css/nivo-slider.css" rel="stylesheet">
<link href="libs/owlcarousel/owl.carousel.css" rel="stylesheet">
<link href="libs/owlcarousel/owl.transitions.css" rel="stylesheet">
<link href="libs/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="libs/animate/animate.min.css" rel="stylesheet">
<link href="libs/venobox/venobox.css" rel="stylesheet">

<!-- Nivo Slider Theme -->
<link href="css/nivo-slider-theme.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="css/style.css" rel="stylesheet">
<link href="css/custom_style.css" rel="stylesheet">
<link href="css/menu.css" rel="stylesheet">

<!-- Responsive Stylesheet File -->
<link href="css/responsive.css" rel="stylesheet">

<!-- cutom styles -->
<link href="css/style-new.css" rel="stylesheet">

<!-- mouse over styles -->
<link href="css/mouse-over.css" rel="stylesheet">
<link href="css/jquery.dataTables.min.css" rel="stylesheet">
<link href="css/buttons.dataTables.min.css" rel="stylesheet">

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
			<a href="/BCP/"><img src="img/logo2.png" alt=""
				class="responsive center-block" /></a>
		</div>
		<div class="col-md-7">
			<h1 style="color: #003B71; font-weight: bold;">Site Wide Threats</h1>
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
					onclick="openCity(event, 'site')">Site details</a></li>
				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'crisis')">Crisis Roaster </a></li>

				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'emergency')">Emergency Response Plan </a></li>
				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'active')">Active Shooter Response Plan </a></li>
				
			</ul>
		</nav>
	</div>
	 <!-- Start image Area -->
	<div class="row">
		<div style="margin-bottom:20px">
		 <img src="img/ap1.png" class="responsive" style="width:100%;"/>
		</div>
	</div>
    <br>
    <!-- start of fire -->
    <div class="row">
		<div id="site" class="tabcontent">
            <h1 style="color:#000">Site Details </h1>
		</div>
	</div>
	 <div class="row">
		<div id="crisis" class="tabcontent">
            <h1 style="color:#000">Crisis Roaster </h1>
		</div>
	</div>
	 <div class="row">
		<div id="emergency" class="tabcontent">
            <h1 style="color:#000">Emergency Response Plan</h1>
		</div>
	</div>
	 <div class="row">
		<div id="active" class="tabcontent">
            <h1 style="color:#000">Active Shooter Response Plan</h1>
		</div>
	</div>
		


	<!-- end of labour -->
</body>
	<script src="libs/jquery/jquery.min.js"></script>
	<script src="libs/bootstrap/js/bootstrap.min.js"></script>
	<script src="libs/owlcarousel/owl.carousel.min.js"></script>
	<script src="libs/venobox/venobox.min.js"></script>
	<script src="libs/knob/jquery.knob.js"></script>
	<script src="libs/wow/wow.min.js"></script>
	<script src="libs/parallax/parallax.js"></script>
	<script src="libs/easing/easing.min.js"></script>
	<script src="libs/nivo-slider/js/jquery.nivo.slider.js"
		type="text/javascript"></script>
	<script src="libs/appear/jquery.appear.js"></script>
	<script src="libs/isotope/isotope.pkgd.min.js"></script>
	<!-- data table -->
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.buttons.min.js"></script>
	<script src="js/jszip.min.js"></script>
	<script src="js/vfs_fonts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script src="js/buttons.html5.min.js"></script>
	<script src="js/buttons.print.min.js"></script>
	<script
		src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
	<script
		src="https://cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>
	<script src="js/main.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
	<script src="js/sitewide.js"></script>

<script>
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


</script>


</html>
