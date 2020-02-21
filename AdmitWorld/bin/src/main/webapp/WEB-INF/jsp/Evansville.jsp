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
<frame-options policy="SAMEORIGIN" />
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
	z-index: 9999; //
	filter: hue-rotate(45deg);
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

.raphael-group-21-creditgroup {
	display: none;
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
	border-top: none;
}

.boxmodal {
	border: 1px solid #003b71;
	padding: 20px;;
	background-color: #fff;
	box-shadow: 0px 5px 20px 0px #003b71;
	height: 620px;
		
	margin-bottom:40px;
}

.boxmodal-user {
	border: 1px solid #003b71;
	padding: 20px;;
	background-color: #fff;
	box-shadow: 0px 5px 20px 0px #003b71;
	height: auto;
	margin-bottom:40px;
}

.download {
	background-color: #003b71;
	border: none;
	color: white;
	padding: 6px 12px;
	border-radius: 4px;
	cursor: pointer;
	font-size: 14px;
	font-weight: 400;
}

/* Darker background on mouse-over */
.download:hover {
	background-color: #335879;
	box-shadow: 20px 15px rgba(0, 0, 0, 0.15);
}

.preview {
	background-color: #eca64d;
	border: none;
	color: white;
	padding: 6px 12px;
	padding: 6px 12px;
	border-radius: 4px;
	cursor: pointer;
	font-size: 14px;
	font-weight: 400;
}

.preview:hover {
	background-color: #f18b09;
	box-shadow: 20px 15px rgba(0, 0, 0, 0.15);
}

.critical-button {
	background-color: #1b4d77;
	border: none;
	color: white;
	padding: 12px 30px;
	border-radius: 15px;
	cursor: pointer;
	font-size: 20px;
}

.component-button {
	background-color: #8a4a56;
	border: none;
	color: white;
	padding: 12px 30px;
	border-radius: 15px;
	cursor: pointer;
	font-size: 20px;
}

.site-button {
	background-color: #0c8598;
	border: none;
	color: white;
	padding: 12px 30px;
	border-radius: 15px;
	cursor: pointer;
	font-size: 20px;
}

.txt-center {
	text-align: center;
}

.upload {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 6px 12px;
	border-radius: 4px;
	cursor: pointer;
	font-size: 14px;
	font-weight: 400;
}

.upload:hover {
	background-color: #3e8e41;
	box-shadow: 20px 15px rgba(0, 0, 0, 0.15);
}

.mtop-res1 {
	margin-top: 60px;
}

#toggle-menu, #menu a {
	padding: 1em 1.5em !important;
}

.boxmodal-site-details {
	border: 1px solid #003b71;
	padding: 10px 162px;
	background-color: #fff;
	box-shadow: 0px 5px 20px 0px #003b71;
	height: auto;
}

.boxmodal-bcp 
{
border: 1px solid #003b71;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0px 5px 20px 0px #003b71;
	height: auto;
}
@media only screen and (min-width:320px) and (max-width:1024px) {
	.boxmodal {
		border: 1px solid #003b71;
		padding: 20px;;
		background-color: #fff;
		box-shadow: 0px 5px 20px 0px #003b71;
		
	}
	.res-mbtm {
		margin-bottom: 20px;
	}
	.mtop-res1 {
		margin-top: 0px;
	}
	.boxmodal-user {
		border: 1px solid #003b71;
		padding: 20px;;
		background-color: #fff;
		box-shadow: 0px 5px 20px 0px #003b71;
		
	}
	.boxmodal-site-details
	{
	padding:20px;
	}
}

@media only screen and (min-width:2560px)  {


.boxmodal-site-details 
{
border: 1px solid #003b71;
    padding: 63px 270px;
    width: 80%;
    margin-left: 161px;
    background-color: #fff;
    box-shadow: 0px 5px 20px 0px #003b71;
    height: auto;
}
.boxmodal-bcp 
{
border: 1px solid #003b71;
	padding: 20px;
	 margin-left: 161px;
	  width: 76%;
	background-color: #fff;
	box-shadow: 0px 5px 20px 0px #003b71;
	height: auto;
}
}

textarea {
    width: 100%;
    height:100%;
    line-height:15px;
    transition: width 0.25s;
    resize:none;
    overflow:hidden !important; 
    font-size:15px !important; 
    font-weight:700 !important; 
}
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th{
vertical-align: middle !important;
height:10px !important;


}
.role-font
{
font-weight:700;
font-size:13px;
color:#0d5cec;
}
}

.close {opacity:1 !important;}
table th {
  position: -webkit-sticky;
  position: sticky;
  top: 0;
}
th {
  background-color: #bdc0c3;
 
}
@media only screen and (max-width: 1440px)
{

#phones0
{
width:110px !important;
}
#phoness0
{
width:110px !important;
}
}

@media only screen and (min-width:1440px) and (max-width:1820px)
{
#phones0
{
width:110px !important;
}
#phoness0
{
width:110px !important;
}

}
</style>

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

<!-- buttons animation css -->

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/hover.css/2.3.1/css/hover-min.css">


</head>
<body>


	<div class="row">
		<div class="col-md-2">
			<a href="/BCP/"><img src="img/ge_haier_logo1.png" alt=""
				class="responsive center-block" /></a>
		</div>
		<div class="col-md-7">
			<h1 style="color: #003B71; font-weight: bold;">
				<span id="site_name"></span>
			</h1>
		</div>
		<div class="col-md-3">
			<br>
			<h3 style="color: #003B71; font-weight: bold;">
				Welcome : <span style="color: red; font-size: 20px;" id="name"></span>
				<%-- <span
                                  id="user_name" style="display: none;">${role}</span> --%>
			</h3>
		</div>
	</div>
	<div class="row">
		<div class="preloader"
			style="display: none; background: rgba(255, 255, 255, 0.6);"
			class="overlay">
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
					onclick="openCity(event, 'crisis')">Crisis Roster </a></li>

				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'emergency')">Emergency Response Plan
				</a></li>
				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'active')">Active Shooter Response
						Plan </a></li>
				<li><a href="#" class="tablinks"
					onclick="openCity(event, 'bcp')">Business Continuity Planning </a></li>

			</ul>
		</nav>
	</div>
	<!-- Start image Area -->
	<div class="row">
		<div style="margin-bottom: 20px">
			<img src="img/ap1.png" class="responsive" style="width: 100%;" />
		</div>
	</div>
	<br>
	<!-- start of fire -->
	<div class="row">
		<div id="site" class="tabcontent">
			<h1 style="color: #000; font-size: 30px; font-weight: bold">Site
				Details</h1>
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="boxmodal-site-details " style="margin-top: 30px;">

					<form id="VendorData" name="VendorData" class="form-horizontal"
						action="" style="margin-top: 20px;">
						<div class="form-group">
							<label class="control-label col-sm-2" for="email">Address:</label>
							<div class="col-sm-10">
								<textarea class="form-control updatedata" id="address"
									name="address" rows="2"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">city:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control updatedata" id="city"
									placeholder="Enter city" name="city">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="email">State:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control updatedata" id="state"
									placeholder="Enter state" name="state">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">Country:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control updatedata" id="country"
									placeholder="Enter country" name="country">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-2" for="pwd">Zip:</label>
							<div class="col-sm-10">
								<input type="text" class="form-control updatedata" id="zip"
									placeholder="Enter Zip" name="zipcode">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="button" class="btn btn-success update"
									id="SiteAddBut" onclick="updatesiteaddress()">Update</button>
								<button type="button" class="btn btn-primary editutility">Edit
									Information</button>
							</div>
						</div>

					</form>

				</div>
			</div>
			<div class="col-md-2"></div>

		</div>
	</div>
	<div class="row">
		<div id="crisis" class="tabcontent">
			<h1
				style="color: #000; font-size: 30px; font-weight: bold; margin-bottom: 60px">Crisis
				Roster</h1>
				
			<div id="business-form-link" >
			    
			<button type="button" class="btn btn-info btn-sm Add_New_Roles" data-toggle="modal" data-target="#myModal" style="float: right">Add/Delete New Roles</button>
			    <div class="admin_row col-md-12">

				<div class="boxmodal col-md-6">
			
					 <form id="crisis-roaster">
        <div style="height: 540px; overflow: auto" class="txt_business">
					 
			      <table class="table table-fixed " id="customFields">
				      <thead>
				      <th style="color:#c74f43;text-align:center">Role</th>
				      <th style="color:#c74f43;text-align:center">Name</th>
				      <th style="color:#c74f43;text-align:center">Phone</th>
				      <th style="color:#c74f43;text-align:center">Email</th>
				      </thead>
				      <tbody>
				     
				
				    
				    
				      </tbody>
			      </table>
			      </div>
					 </form>
					
					<div class="admin-btn">
				
					   		<div class="col-md-6">
					   		    <button class="btn btn-primary" id="addCF" style="margin-bottom:12px">Add</button>
					   		</div>
					   		<div class="col-md-6">
					   		   										
					   		   		<button class="preview hvr-icon-pulse" onclick="submit_data()" style="float: right;">Submit</button>
					   		
					   		</div>
					   
					
				</div>
				
			</div>
			
	<div class="boxmodal col-md-5" style="margin-left: 7px;width: 49%;">
			
					 <form id="crisis-roaster">
					 <div style="height: 540px; overflow: auto" class="txt_site">
			      <table class="table table-fixed " id="customFields_site">
				      <thead>
				      <th style="color:#c74f43;text-align:center">Role</th>
				      <th style="color:#c74f43;text-align:center">Name</th>
				      <th style="color:#c74f43;text-align:center">Phone</th>
				      <th style="color:#c74f43;text-align:center">Email</th>
				      </thead>
				      <tbody>
				     
				    
				    
				      </tbody>
			      </table>
			      </div > 
					 </form>
					
					<div class="manager-btn">
				
					   		<div class="col-md-6">
					   		    <button class="btn btn-primary" id="addCF_site" style="margin-bottom:12px">Add</button>
					   		</div>
					   		<div class="col-md-6">
					   		   										
					   		   		<button class="preview hvr-icon-pulse" onclick="submit_data()" style="float: right;">Submit</button>
					   		
					   		</div>
					   
					
				</div>
				
			</div>			
			
	
		</div>
		</div>
	</div>
	</div>
	
	<div class="row">
		<div id="emergency" class="tabcontent">
			<h1 style="color: #000">Emergency Response Plan</h1>
		</div>
	</div>
	<div class="row">
		<div id="active" class="tabcontent">
			<h1 style="color: #000">Active Shooter Response Plan</h1>
		</div>
	</div>
	<div class="row">
		<div id="bcp" class="tabcontent">
			<h1
				style="color: #000; font-size: 30px; font-weight: bold; margin-bottom: 50px">Business
				Continuity Planning</h1>
			<div class="col-md-2"></div>
			<div class="col-md-8">
			<div class="boxmodal-bcp " style="margin-top: 30px;">
				<div class="row" style="margin-top: 33px; margin-bottom: 10px;">
					<div class="col-md-6 txt-center res-mbtm">
						<a href="#"  onclick="url_selection_critical_vital_process()">
                            <button class=" critical-button hvr-grow">Critical and
                                Vital Process</button>
                        </a>
					</div>
					<div class="col-md-6 txt-center res-mbtm">
						<a href="#" onclick="url_selection_site_wide_threads()"><button class="site-button hvr-bounce-out">Site Wide threats</button></a>



					</div>
				</div>
				<div class="row" style="margin-top: 50px; margin-bottom: 20px;">
					<div class='col-md-3'></div>
					<div class="col-md-6 txt-center res-mbtm">
						<a href="/BCP/component_failure_mode" target="_blank"><button class=" component-button hvr-bounce-in">component Failure Mode</button></a>
					</div>
					<div class='col-md-3'></div>

				</div>

			</div>
			
		   </div>
			<div class="col-md-2"></div>
		</div>
	</div>
 

 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content" style="background-color:#f3f2f2">
        <div class="modal-header"> 
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><b>Crisis Roster</b></h4>
        </div>
        <div class="modal-body">
        	<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active btn btn-primary" id="login-form-link">Add Role</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link" class="btn btn-danger" style="float:right">Delete Role</a>
							</div>
						</div>
        </div>
         <div class="modal-body">
	         <div id="login-form" style="display: block;">
	         	<h4>Add New Role</h4>
		         <label>Role Name: </label><input type="text" class="form-control" id="add_role">
		         
		          <label>Role Type: </label><select id="role_type" class="form-control">
		          <option value="Business Level Roles">Business Level Roles</option>
		  			<option value="Site Level Roles">Site Level Roles</option>	</select>
		  			<div style="margin-top:15px"></div>
		  			<button type="button" class="btn btn-success" onClick="addrole()" style="float:right;">Submit</button>
	         </div>
	         
	          <div id="register-form" style="display: none;">
		          
		         <h4>Delete Existing Role</h4>
		          <label>Role Name: </label><select id="delete_role" class="form-control">
		          <option value="">-- Select role --</option>
		  			</select>
		  			<div style="margin-top:15px"></div>
		  			<button type="button" class="btn btn-success" onClick="delete_role()" style="float:right;">Submit</button>
	         </div>
	           
	        </div>
       
      </div>
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

	var api = "https://bcp-web.al.ge.com/BCP/";
	//var api = "http://localhost:8085/BCP/";
	//var api = "http://10.59.36.253:8085/BCP/";

	var site_nam = window.location.pathname;
	var Site_original = decodeURI(site_nam.slice(5, 100));
	document.getElementById("site_name").innerHTML = Site_original;
	localStorage.setItem('site-main-name', Site_original);
	document.getElementById("name").innerHTML = localStorage.getItem('user-name');

	var readonly_var_business;
	var readonly_var_site;

	 
	$(function() {

	    $('#login-form-link').click(function(e) {
			$("#login-form").delay(100).fadeIn(100);
	 		$("#register-form").fadeOut(100);
			$('#register-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});
		$('#register-form-link').click(function(e) {
			$("#register-form").delay(100).fadeIn(100);
	 		$("#login-form").fadeOut(100);
			$('#login-form-link').removeClass('active');
			$(this).addClass('active');
			e.preventDefault();
		});

	});

	
	$(document).ready(function() {

		
		var user_role = localStorage.getItem('user-role')

		if (user_role == 'Admin') {
			$(".admin_row").show();
			$(".editutility").show();
			$(".user_row").hide();
			$(".user-btn").hide();
			$(".admin-btn").show();
			readonly_var_site=false;
			readonly_var_business=false;
		} else if(user_role == 'Manager' && localStorage.getItem('user-site')==Site_original)
			{
			$(".admin-btn").hide();
			$(".manager-btn").show();
			$(".user_row").hide();
			$(".user-btn").hide();
			$(".admin_row").show();
			$(".Add_New_Roles").hide();
			readonly_var_business=true;
			  readonly_var_site=false;
			
		}
		else
			{
				//$(".admin_row").hide();
				$(".user_row").show();
				$(".editutility").hide();
				$(".user-btn").show();
				$(".admin-btn").hide();
				$(".manager-btn").hide();
				$(".Add_New_Roles").hide();
				  readonly_var_business=true;
				  readonly_var_site=true;
			}

		function populate(frm, data) {
			  $.each(data, function(key, value){
			    $('[name='+key+']', frm).val(value);
			  });
			}

		var site=localStorage.getItem("site-main-name");

		 localStorage.removeItem("height");
		
			
		  $.ajax({
				url : api + "crisis_roaster/fetch",
				type : 'POST',
				data : {"site":site},	
				success : function(result) {
					     console.log(result);
					     
					     var s=0; var b=0; var c=0; var d=0; var e=0;

					     localStorage.setItem("total_crisi_role_size_fetch", result.length);
					     for (var i = 0; i < result.length; i++) {
						    
					    	 var a=result[i];  
					    
						     $("#customFields").append("<tr valign='top'><td style='width: 220px;'><h4 class='role-font' id='roles"+s+++"'>"+a.role+"</h4></td><td><div class='content'><textarea name='comment' id='names"+b+++"'>"+a.name+"</textarea></div></td></td><td><div class='content11'><textarea id='phones"+c+++"'>"+a.phone+"</textarea></div></td><td><div><textarea id='mails"+d+++"'>"+a.email+"</textarea></div></td></tr>");

					     }
					     
					     var as=[];			
					     $('.content').on( 'change paste cut', 'textarea', function (){
					    	 var ca=$(this.textContent);
					    	 
						    	var size=ca.selector.split("\n").length;
						    	for(var s=0;s<ca.selector.split("\n").length;s++)
							    	{
						    		as.push(ca.selector.split("\n")[s]);
							    	}
						    	$(".content").width(as.longest().length*9);
							    
						    	$(this).height(size*22); $(this).prop("disabled", readonly_var_business);
						    	$(this).height(localStorage.getItem("height"));
					    	  		
					      	}).find( 'textarea' ).change(); 

					     $('.content11').on( 'change paste cut', 'textarea', function (){
					    	 	var ca=$(this.textContent);
						    	var size=ca.selector.split("\n").length;
						    	$(this).height(size*22); $(this).prop("disabled", readonly_var_business);
						    	$(this).height(localStorage.getItem("height"));
					    	  		
					      	}).find( 'textarea' ).change(); 

							var e=0; var f=0;
							for(var i = 0; i < result.length; i++)
								{
							     	$("#mails"+e++).height($("#names"+f++).height()).width("300px").prop("disabled", readonly_var_business);
							     	
								}
				
					     $('textarea').on('keydown', function(e){
							    if(e.which == 10) {e.preventDefault();}
							}).on('input', function(){
							    $(this).height(1);
							    var totalHeight = $(this).prop('scrollHeight') - parseInt($(this).css('padding-top')) - parseInt($(this).css('padding-bottom'));
							   var totalWidth=$(this).prop('scrollWidth') - parseInt($(this).css('padding-left')) - parseInt($(this).css('padding-right'));
							   console.log($(this));
								 console.log(totalWidth);

							   $(this).width(totalWidth); 
							    $(this).height(totalHeight); 
							    localStorage.removeItem("height");
							    localStorage.setItem("height",totalHeight);
							});
				}
			});  


		  $.ajax({
				url : api + "crisis_roaster/fetch_site",
				type : 'POST',
				data : {"site":site},	
				success : function(result) {
					     console.log(result);
					     
					     var s=0; var b=0; var c=0; var d=0; var e=0;

					     localStorage.setItem("total_crisi_role_size_fetch_site", result.length);
					     for (var i = 0; i < result.length; i++) {
					    	 var a=result[i];  
						     $("#customFields_site").append("<tr valign='top'><td style='width: 220px;'><h4 class='role-font' id='roless"+s+++"'>"+a.role+"</h4></td><td><div class='content123'><textarea id='namess"+b+++"'>"+a.name+"</textarea></div></td></td><td><div class='content123d'><textarea id='phoness"+c+++"'>"+a.phone+"</textarea></div></td><td><div><textarea style='width:auto;' id='mailss"+d+++"'>"+a.email+"</textarea></div></td></tr>");
					     }

					     var ds=[];
					     $('.content123').on( 'change paste cut', 'textarea', function (){
						     
					    	 var ca=$(this.textContent);
						    	var size=ca.selector.split("\n").length;

						    	for(var s=0;s<ca.selector.split("\n").length;s++)
						    	{
					    		ds.push(ca.selector.split("\n")[s]);
						    	}
					    		$(".content123").width(ds.longest().length*9);

						    	$(this).height(size*22); 
						    
						    	$(this).prop("disabled", readonly_var_site);
						    	$(this).height(localStorage.getItem("height"));
					    	  		
					      	}).find( 'textarea' ).change(); 

 					 $('.content123d').on( 'change paste cut', 'textarea', function (){
						     
					    	 var ca=$(this.textContent);
						    	var size=ca.selector.split("\n").length;
					    		$(this).height(size*22); 
						    	$(this).prop("disabled", readonly_var_site);
						    	$(this).height(localStorage.getItem("height"));
					    	  		
					      	}).find( 'textarea' ).change(); 

					 	var e=0; var f=0;
						for(var i = 0; i < result.length; i++)
							{
						     	$("#mailss"+e++).height($("#namess"+f++).height()).width("300px").prop("disabled", readonly_var_site);
						     	
							}

								/* 	     
						var e=0; var f=0; var h=0; var s=0; 
							for(var i = 0; i < result.length; i++)
								{
							     	
							     	var ca=$($("#phoness"+f++).textContent);
							    	var size=ca.selector.split("\n").length;
							    	var size_A=size*22; console.log(ca);
							    	$("#namess"+e++).height(size_A).prop("disabled", readonly_var_site);
							    	$("#phoness"+s++).height(size_A).prop("disabled", readonly_var_site);
							    	$("#mailss"+h++).height(size_A).width("300px").prop("disabled", readonly_var_site);

							    	
							    	
								} */
							
					     $('textarea').on('keydown', function(e){
							    if(e.which == 10) {e.preventDefault();}
							}).on('input', function(){
							    $(this).height(1);
							    var totalHeight = $(this).prop('scrollHeight') - parseInt($(this).css('padding-top')) - parseInt($(this).css('padding-bottom'));
							   
							    $(this).height(totalHeight); console.log(totalHeight);
							    localStorage.removeItem("height");
							    localStorage.setItem("height",totalHeight);
							}); 
				}
			}); 


		  Array.prototype.longest=function() {
			    return this.sort(
			      function(a,b) {  
			        if (a.length > b.length) return -1;
			        if (a.length < b.length) return 1;
			          return 0
			      }
			    )[0];
			}
		   
			
		 $.ajax({
				url : api + "crisis_roaster/fetch_roles",
				type : 'POST',
				data: {"site": site},
				success : function(result) {
					     console.log(result);

	     var a=0; var b=0; var c=0; var d=0; var g=-1;

					     $("#addCF").click(function(){

					    	 g++;
						     
						        $("#customFields").append("<tr valign='top'><td style='width: 150px;'> <div class='form-group'><select class='form-control' id='role"+a+++"'></select></div></td><td><textarea id='name"+b+++"'></textarea></td><td><textarea id='phone"+c+++"'></textarea></td><td><textarea id='mail"+d+++"'></textarea></td></tr>");

						   $('textarea').on('keydown', function(e){
								    if(e.which == 10) {e.preventDefault();}
								}).on('input', function(){
								    $(this).height(1);
								    var totalHeight = $(this).prop('scrollHeight') - parseInt($(this).css('padding-top')) - parseInt($(this).css('padding-bottom'));
								    $(this).height(totalHeight);
								});

								localStorage.setItem("total_crisi_role_size", a);

								 $.each(result, function(key, value) {
									 
										for (var i = 0; i < value.length; i++) {
											
											$("#role"+g).append(
													$("<option></option>")
															.attr("value", status).text(
																	value[i]));

										}
										
									});

						    });

				}
			}); 

	

		 $.ajax({
				url : api + "crisis_roaster/fetch_roles_site",
				type : 'POST',
				data: {"site": site},
				success : function(result) {
					     console.log(result);

	     var a=0; var b=0; var c=0; var d=0; var g=-1;


	                              $("#addCF_site").click(function(){
	      
	                                  g++;
	                                  
	      
	                                     $("#customFields_site").append("<tr valign='top'><td style='width: 150px;'> <div class='form-group'><select class='form-control' id='role_site"+a+++"'></select></div></td><td><textarea id='name"+b+++"'></textarea></td><td><textarea id='phone"+c+++"'></textarea></td><td><textarea id='mail"+d+++"'></textarea></td></tr>");
	                      
	                                    
	      
	                                     $('textarea').on('keydown', function(e){
	                                         if(e.which == 10) {e.preventDefault();}
	                                     }).on('input', function(){
	                                         $(this).height(1);
	                                         var totalHeight = $(this).prop('scrollHeight') - parseInt($(this).css('padding-top')) - parseInt($(this).css('padding-bottom'));
	                                         $(this).height(totalHeight);
	                                     });
	      
	                                     localStorage.setItem("total_crisi_role_size", a);
	      
	                                      $.each(result, function(key, value) {
	                                          
	                                             for (var i = 0; i < value.length; i++) {
	                                                 
	                                                 $("#role_site"+g).append(
	                                                         $("<option></option>").attr("value", status).text(value[i]));
	                                                 }
	                                             
	                                         });
	      
	                                 });
	           			}
			}); 
		 

		 $.ajax({
				url : api + "crisis_roaster/fetch_roles_all",
				type : 'GET',
				success : function(result) {
					 $.each(result, function(key, value) {
					                                  
					 for (var i = 0; i < value.length; i++) {
					      $("#delete_role").append(
					         $("<option></option>").attr("value", status).text(value[i]));
					      }
					 });
				}
			}); 



		$(".updatedata").prop("disabled", true);
		$(".update").hide();
		$(".editutility").click(function() {
			$(".updatedata").show();
			$(".editutility").hide();
			$(".update").show();
			$(".updatedata").prop("disabled", false);

		});
		//Site Details Code for fetching

		$.ajax({
			url : api + "site_address_details/fetch",
			type : 'POST',
			data : {
				"site" : Site_original
			},
			success : function(response) {

				$("#address").val(response.address);
				$("#city").val(response.city);
				$("#state").val(response.state);
				$("#country").val(response.country);
				$("#zip").val(response.zipcode);

			}

		});

	});

	function url_selection_critical_vital_process()
	{
	    var site_nam = window.location.pathname;
	    var Site_original = decodeURI(site_nam.slice(5, 100));
	    var url="/BCP/CriticalVital_Process/"+Site_original;
	    window.open(url, '_blank');

	}

	function url_selection_site_wide_threads()
	{
		var site_nam = window.location.pathname;
	    var Site_original = decodeURI(site_nam.slice(5, 100));
	   // window.location.href="/BCP/site_wide_threads/"+Site_original
		var url="/BCP/site_wide_threads/"+Site_original;
	    window.open(url, '_blank');
	}

	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}

	function addrole()
	{
      var role=$("#add_role").val();
      var role_type=$("#role_type option:selected").text();
      $.ajax({
			url : api + "crisis_roaster/add_role",
			type : 'POST',
			data : {"role":role, "role_type":role_type},
			success : function(response) {
				alert(response);
				window.location.reload();
			}
		}); 
      
	}
	
	function download() {
		window.location = api + "crisis_roster_download_file/crisis_roaster";

	}

	function fileupload() {
		var singleFileUploadInput = document
				.getElementById("singleFileUploadInput");

		var files = singleFileUploadInput.files;
		var site = Site_original;
		if (files.length == 0) {
			alert('please Select a File....!');
			document.getElementById("singleFileUploadInput").required = true;
		} else {
			uploadSingleFile(files[0], site);
		}

		function uploadSingleFile(file, site) {
			var formData = new FormData();
			formData.append("site", site);
			formData.append("file", file);

			var xhr = new XMLHttpRequest();
			xhr.open("POST", "/BCP/crisis_roster_file");
			xhr.send(formData);

			 var listener = function () {
			upload_file_data();
			 }
			 var interval = setInterval(listener, 5000);
		}

	}

	function upload_file_data()
	{
		var site=localStorage.getItem("site-main-name");
		
		$.ajax({
			url : api + "crisis_roaster/add_data_from_file",
			type : 'POST',
			data : {"site":site},
			success : function(response) {
				alert('File is Uploaded Successfully...');
				window.location.reload();
			}
		});
		
	}
	
	function updatesiteaddress() {
		var $form = $("#VendorData");
		var unindexed_array = $form.serializeArray();
		var indexed_array = {};

		$.map(unindexed_array, function(n, i) {
			indexed_array[n['name']] = n['value'];
		});

		var a = indexed_array;
		a.site = Site_original;
		var a1 = JSON.stringify(a);
		console.log(a1);

		$.ajax({
			url : api + "site_address_details/add",
			type : 'POST',
			data : a1,
			contentType : 'application/json; charset=utf-8',
			success : function(response) {
				alert(response);
				window.location.reload();
			}
		});
	}

	function submit_data()
	{
		var site=localStorage.getItem("site-main-name");
		
		var jsonVariable = {};
		
		for(var h=0;h<localStorage.getItem("total_crisi_role_size");h++)
			{
					var a=$("#name"+h+"").val();
					var b=$("#phone"+h+"").val();
					var c=$("#mail"+h+"").val();
					
					 var jsonKey  = $("#role"+h+" option:selected").text();
					 if(jsonKey == "")
						 {
						 }
					 else{
					jsonVariable[jsonKey] = {"name":a,"phone":b,"mail":c,"site":site};
						}
					 var jsonKey1  = $("#role_site"+h+" option:selected").text();
					 if(jsonKey1 == "")
						 {
						 }
					 else{
					jsonVariable[jsonKey1] = {"name":a,"phone":b,"mail":c,"site":site};
						}
			}

			for(var j=0;j<localStorage.getItem("total_crisi_role_size_fetch");j++)
			{
					var a=$("#names"+j+"").val();
					var b=$("#phones"+j+"").val();
					var c=$("#mails"+j+"").val();

					var jsonKey  = $("#roles"+j+"").text();
					
					jsonVariable[jsonKey] = {"name":a,"phone":b,"mail":c,"site":site};
			} 
		  for(var k=0;k<localStorage.getItem("total_crisi_role_size_fetch_site");k++)
		{
				var a=$("#namess"+k+"").val();
				var b=$("#phoness"+k+"").val();
				var c=$("#mailss"+k+"").val();

				var jsonKey  = $("#roless"+k+"").text();
				
				jsonVariable[jsonKey] = {"name":a,"phone":b,"mail":c,"site":site};
		}  

		console.log(jsonVariable);
		
		var myJSON = JSON.stringify(jsonVariable);

		console.log(myJSON);
		
         
		  $.ajax({
			url : api + "crisis_roaster/add",
			type : 'POST',
			data : myJSON,	
			contentType : 'application/json; charset=utf-8',
			success : function(response) {
				     alert(response);
				     window.location.reload();
			}
		});    
	}


	function delete_role()
	{
		var role=$("#delete_role option:selected").text();
		 $.ajax({
				url : api + "crisis_roaster/delete_role",
				type : 'POST',
				data : {"role":role},	
				success : function(response) {
					     alert(response);
					     window.location.reload();
				}
			});   
	}


	
</script>


</html>

