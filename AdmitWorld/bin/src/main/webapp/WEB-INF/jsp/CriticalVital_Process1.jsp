<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
  
<style>
/* Style the tab */

.man{
font-size: 20px;
color:red;
}

/*preloader styles */

.preloader1 {
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
	background-image: url(../img/loader1.gif);
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
/* .tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}
 */
/* Change background color of buttons on hover */
/* .tab button:hover {
    background-color: #ddd;
}
 */
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
/* upload file */

/*prashanthi changes*/
.modal-width
{
width:auto !important;
}
.search-bar
{
color:#000;position: relative;top: 15px;width: 50%;border-radius: 30px;right:15px;
}
.recomm-search
{
position: relative;top:15px;;width: 45%;
}
.add-new-res
{
cursor:pointer;position: relative;top: 27px;left: 20px;
}
.inactive-res
{
cursor:pointer;position: relative;top: 27px;/* left: 50px; */right: 125px;
}
.file-upload-res
{
position: relative;top: 33px;left: 2%;
}
.submit-res
{
position: relative;top: 25px;

}
@media only screen and (max-width:1024px)
{

.title-res
{
padding-left:25px;
}
.search-bar
{
top:0px !important;
right:0px !important;
}
.recomm-search
{
top:0px !important;
}
.add-new-res
{
cursor:pointer;position: relative;top: 0px;left: 20px;
}
.inactive-res
{
    cursor: pointer;
    position: relative;
    top: 9px;
    left: 6px;
    right: 0;
}
.select-site-res
{
margin-left: 23px;
margin-top: 17px;
}
.select-line-res
{
margin-left: 23px;
margin-top: 17px;
}
.file-upload-res
{
 top: 0; 
 left: 5%
}
.submit-res
{
    top: 17px;
    left: 5%;
    margin-bottom:15px;
}
div.dt-buttons 
{
margin-bottom:15px;
left:5%;
}
.res-scroll
{
overflow-x:hidden;
}
}
.vendorlink:hover
{
text-decoration: underline;
cursor:pointer;
color:#1f7314;
}
.vendorlink
{
color:#da3626;
}
.venodr
{
display:none;

}
.download {
    background-color: #f0f8ff;
    border: none;
    color: #000;
    padding: 6px 12px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
    font-weight: 600;
        top: 11px;
    left: 10px;
    position: relative;
        margin-bottom: -12px !important;
    font-size: 14px !important; 
    font-weight: 600 !important;
    line-height: 1.0 !important;
}
</style>

  <title>Business Continuity Management</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <!-- <link href="img/favicon.png" rel="icon"> -->
  <!-- <link href="img/apple-touch-icon.png" rel="apple-touch-icon"> -->

  <!-- Google Fonts -->
  <link href="../img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="../libs/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

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
  <link href="../css/jquery.dataTables.min.css" rel="stylesheet">
  <link href="../css/buttons.dataTables.min.css" rel="stylesheet">
  <link href="../css/responsive.css" rel="stylesheet">
  <link href="../css/mouse-over.css" rel="stylesheet">
  <!-- Multiple Select box --> 
  <!--  <link href="css/bootstrap-multiselect.css" rel="stylesheet"> -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.5.4/bootstrap-select.min.css" rel="stylesheet">

<!-- jquery ui ccss -->
<link href="https://code.jquery.com/ui/1.9.1/themes/base/jquery-ui.css" rel="stylesheet">

<!--  <style>
    .ui-datepicker {font-size:60%; }
</style>
 -->


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
 <a href="/BCP/"><img src="../img/ge_haier_logo1.png" alt="" class="responsive center-block" /></a>
</div>
<div class="col-md-7">
 <h1 style="color: #003B71;font-weight: bold;"><span id="site_name_heading"></span></h1>
</div>
<div class="col-md-3"></div>
   <br><h3 style="color: #003B71;font-weight: bold;" class="title-res">Welcome : <span id="name" style="color:red;font-size:20px;"></span></h3>
</div>

<div class="row tab" style="background-color:#003b71de;">
<div class="col-md-2">
           <button class="btn download" onclick="bia_ta_file_format()">Download BIA_TA FIle Format</button>
 
</div>
<div class="col-md-6">
<h1 style="font-size: 24px;color: #fff;text-transform: uppercase;position: relative;left: 10%;">Critical And Vital Process</h1>
</div>
<div class="col-md-4">
<input type='text' name='searchbar' id='searchbar' class="search-bar">
<span><button type="button" class="btn btn-success btn-sm recomm-search" style="border-radius: 15px;" onclick='getserachdata()' data-toggle="modal" data-target="#myReport">Recommendation Search</button></span>
</div>

  <!-- <span style="position: relative;float: right;right:42px;"></span></h1> -->
 
</div> 	

<!-- <body data-spy="scroll" data-target="#navbar-example"> -->

  <div id="preloader"></div>

  <header>
    <!-- header-area start -->
    
    <!-- header-area end -->
  </header>
  <!-- header end -->

<!-- Start Slider Area -->
<div class="row">
<div style="margin-bottom:20px">
 <img src="../img/ap1.png" class="responsive" style="width:100%;"/>
</div>

<!-- <div class="col-md-4 col-sm-12 col-xs-12 ">
<!-- <div id="risk-level" style="min-width: 310px; max-width: 400px; height: 300px; margin: 0 auto"></div>  -->
<!-- <div id="chart-container">FusionCharts will render here</div> -->
<!--<div id="chart-container" class="chart">FusionCharts will render here</div>
</div> -->

</div>

<div class="row">

<div class="preloader1" style="display: none;background: rgba(255, 255, 255, 0.6);" class="overlay">
									<div class="status">&nbsp;</div>
								</div>
</div>
<div class="row res-scroll">

<form id="CVPDataTable" name="CVPDataTable"  method="POST">
<div class="col-md-offset-1 col-md-2"><button type="button" class="btn btn-primary add-new-res" onclick="openNav()" style="">Add New Process</button>
<!-- <button type="button" class="btn btn-danger" style="cursor:pointer;position: relative;top: 25px;left: 50px;" data-toggle="modal" data-target="#myReport">Report</button> -->


<div class="col-md-offset-1 col-md-2">
<button type="button" class="btn btn-warning inactive-res" style="" data-toggle="modal" onClick="getInActiveData()"data-target="#inactiveReport">Inactive Processes</button>
</div>
</div>
<div class="col-md-3 select-site-res">
 <div class="form-group"> 
      <label for="sel1">Site Name</label>
       <input type="text"  class="form-control" style="border: 2px solid #005BA6;" id="site_name" name="site_name" style="width:150px;" class="input cnt" readonly></input>
  </div>
</div>

<div class="col-md-3 select-line-res">
 <div class="form-group">
      <label for="sel1">Select Line</label>
      <select class="form-control" id="line_id" name="line_id" style="border: 2px solid #005BA6;" onchange="getCVPbyLine()">
      </select>
  </div>
</div>
</form>

<!-- <form id='uploadForm' action='upload' method="post" enctype="multipart/form-data">
<div class="col-md-2" style="position: relative;top: 33px;left: 2%;">
<input type="file"  id="datasheet" name="datasheet"/>
</div>
<div class="col-md-1" style="position: relative;top: 25px;">
<button type="button" class="btn btn-info" onclick='uploadfile()'>Submit</button>
</div>
</form> -->
<form  id='upload'>
<div class="col-md-2 file-upload-res">
<input type="file" id="file" name="file" required/>
</div>
<div class="col-md-1 submit-res">
<button type="button" class="btn btn-info" onClick="Data()">Submit</button>
</div>
</form> 
<!-- <div class="col-md-4">
<div class="upload-btn-wrapper" style="position: relative;top: 27px;">
  <button class="btn">Upload a file</button>
  <input type="file" name="myfile" />
</div>

</div> -->




<div class="col-md-12 scrollbar" align="center">
       <table id="example" class="display nowrap" style="width:100%;" >
     <thead>
             <tr>
               	<th  style="text-align: center;background-color: lightslategray;" align="center"></th>
                <th colspan='6' style="text-align: center;background-color: lightslategray;" align="center">Process & Sub-process List</th>
                <th colspan='2' style="text-align: center;background-color: darkseagreen;" align="center">IT Threats</th>
                <th colspan='2' style="text-align: center;background-color: burlywood;" align="center">Impact</th>
                <th colspan='2' style="text-align: center;background-color: lightblue;" align="center">Inventory Reserves</th>
                <th colspan='5' style="text-align: center;background-color: lightslategray;" align="center">Outsourcing Potential</th>
                <th colspan='5' style="text-align: center;background-color: darkseagreen;" align="center">Back-up Process</th>
                <th colspan='5' style="text-align: center;background-color: burlywood;" align="center">Replacement Timeline</th>
                <th colspan='4' style="text-align: center;background-color: lightblue;" align="center">IMPACT</th>
             </tr>
          <tr> 
        <!--  <th style="font-size: 12px;">Serial No.</th>  --> 
      		  <th style="font-size: 12px;">Serial No</th>
              <th style="font-size: 12px;">Site Name</th>
              <th style="font-size: 12px;">Line ID</th>
              <th style="font-size: 12px;">eAM Asset Number</th>
              <th style="font-size: 12px;">eAM Criticality as labeled in eAM </th>
              <th style="font-size: 12px;">eAM Serial no. or CAT tag from finance </th>
              <th style="font-size: 12px;">Process Name/ID No./eAM Asset Group</th>
              <th style="font-size: 12px;">Sub-process or operations/eAM Description </th>
              <th style="font-size: 12px;">Location in Plant</th>
              <th style="font-size: 12px;">3rd Party </th>
              <th style="font-size: 12px;">Failure Mode</th>
              <th style="font-size: 12px;">Customers or Plants Impacted</th>
              <th style="font-size: 12px;">Units of Production Impacted Per Day</th>
              <th style="font-size: 12px;">Minimum days worth of finished inventory is kept ON SITE? </th>
              <th style="font-size: 12px;">Minimum days worth of finished inventory is kept REMOTE from manufacturing location? </th>
              <th style="font-size: 12px;">Is there a back-up for this process? Yes - On-site, Yes - Off-site, None </th>
              <th style="font-size: 12px;">Is the back-up process a manual work around? </th>
              <th style="font-size: 12px;">Description Location of backup process.</th>
              <th style="font-size: 12px;">Days to Iniate Back Up</th>
              <th style="font-size: 12px;">Capacity Recovered </th>
              <th style="font-size: 12px;">No.of Days Alternate Source</th>
              <th style="font-size: 12px;">Outsourcing Supplier(s) </th>
              <th style="font-size: 12px;">Percent of Capacity that could be outsourced </th>
              <th style="font-size: 12px;">Number of days required to transition to alternate source</th>
              <th style="font-size: 12px;">Number of Days Alternate Source is Available </th>
              <th style="font-size: 12px;">Normal Leadtime in Production Days to Replace Equipment/Process/Sub-Process(Consider longest lead time)</th>
              <th style="font-size: 12px;">Number of Days to Replace Equipment on Expedited Basis </th>
              <th style="font-size: 12px;">Cost for Total Replacement</th>
              <th style="font-size: 12px;text-align:center;">Impact: (Vital, Critical, Important, Deferrable) </th>
              <th style="font-size: 12px;text-align:center;" align="center">If Vital or Critical, state reasoning</th>
          </tr>
     </thead>
   </table>

  <table id="example1" class="display nowrap" style="width:100%;">
   <thead>
             <tr>
             
               <th  style="text-align: center;background-color: lightslategray;" align="center"></th>
               <th colspan='7' style="text-align: center;background-color: lightslategray;" align="center">Process & Sub-process List</th>
                <th colspan='2' style="text-align: center;background-color: darkseagreen;" align="center">IT Threats</th>
                <th colspan='2' style="text-align: center;background-color: burlywood;" align="center">Impact</th>
                <th colspan='2' style="text-align: center;background-color: lightblue;" align="center">Inventory Reserves</th>
                <th colspan='5' style="text-align: center;background-color: lightslategray;" align="center">Outsourcing Potential</th>
                <th colspan='5' style="text-align: center;background-color: darkseagreen;" align="center">Back-up Process</th>
                <th colspan='4' style="text-align: center;background-color: burlywood;" align="center">Replacement Timeline</th>
                <th colspan='5' style="text-align: center;background-color: lightblue;" align="center">IMPACT</th>
             </tr>
          <tr>
              <th style="font-size: 12px;">eAM Asset Number</th>  
              <th style="font-size: 12px;">Site Name</th>
              <th style="font-size: 12px;">Line ID</th>
              <th style="font-size: 12px;">eAM Serial No.</th>
              <th style="font-size: 12px;display:none;">eAM Criticality as labeled in eAM </th>
              <th style="font-size: 12px;display:none;">eAM Serial no. or CAT tag from finance </th>
              <th style="font-size: 12px;display:none;">Process Name/ID No./eAM Asset Group</th>
              <th style="font-size: 12px;">Sub-process or operations/eAM Description </th>
              <th style="font-size: 12px;display:none;">Location in Plant</th>
              <th style="font-size: 12px;display:none;">3rd Party </th>
              <th style="font-size: 12px;display:none;">Failure Mode</th>
              <th style="font-size: 12px;display:none;">Customers or Plants Impacted</th>
              <th style="font-size: 12px;display:none;">Units of Production Impacted Per Day</th>
              <th style="font-size: 12px;display:none;">Minimum days worth of finished inventory is kept ON SITE? </th>
              <th style="font-size: 12px;display:none;">Minimum days worth of finished inventory is kept REMOTE from manufacturing location? </th>
              <th style="font-size: 12px;display:none;">Is there a back-up for this process? Yes - On-site, Yes - Off-site, None </th>
              <th style="font-size: 12px;display:none;">Is the back-up process a manual work around? </th>
              <th style="font-size: 12px;display:none;">Description Location of backup process.</th>
              <th style="font-size: 12px;display:none;">Days to Iniate Back Up</th>
              <th style="font-size: 12px;">Capacity Recovered </th>
              <th style="font-size: 12px;">No.of Days Alternate Source</th>
              <th style="font-size: 12px;display:none;">Outsourcing Supplier(s) </th>
              <th style="font-size: 12px;display:none;">Percent of Capacity that could be outsourced </th>
              <th style="font-size: 12px;display:none;">Number of days required to transition to alternate source</th>
              <th style="font-size: 12px;display:none;">Number of Days Alternate Source is Available </th>
              <th style="font-size: 12px;">Lead time for replacement</th>
              <th style="font-size: 12px;display:none;">Number of Days to Replace Equipment on Expedited Basis </th>
              <th style="font-size: 12px;">Cost for Total Replacement</th>
              <th style="font-size: 12px;">Impact: (Vital, Critical, Important, Deferrable) </th>
              <th style="font-size: 12px;" align="center">If Vital or Critical, state reasoning</th>
          </tr>
     </thead>
   </table>
  </div>

</div>
  
  
  
  <!-- new form -->

<!-- 	<form id='uploadForm' action='upload' method="post" enctype="multipart/form-data">
<input type="file" id="datasheet" name="datasheet"/>
<button type="submit"  class="btn btn-primary">Submit</button>onclick='submitfile()'
</form> -->

<!-- end --> 
  
  <div id="myModalsite" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content modal-width">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Business Continuity Planning</h4>
      </div>
      <div class="modal-body">
       
 <div class="row">
	
		<div class="col-md-12 ">
	
	 <div id="education_fields">
	 <input type="hidden" id='NDBusinessfunctionlength'>
          
        </div>
	 <div class="clear"></div>
	 </div>
	<input type="hidden" id="business_impact" name='business_impact' />

</div>
       
      </div>
      
       <div class="modal-footer">
        <button type="button" class="btn btn-success" onclick="site_line(localStorage.getItem('room'))">Submit</button>
      </div>
    </div>

  </div>
</div>
  
  
  <!-- overlay for questionary form -->
  
  <div class="col-md-12">
  
  <div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
  <div class="col-md-12 col-xs-12">

<form id="myForm" name="myForm" >
  <div class="row">
  	<div class="col-md-12">
	<div class="form-group">
	  <label class="Process">Site & Line </label>
	  <button type="button" class="btn btn-warning" id="Dynamic_add_Site_line_button" style="line-height: 1.0; margin-left: 65px;" data-toggle="modal" data-target="#myModalsite" onclick="site_line_adding()">Add Site & Line</button>
	 </div>
	</div>
   <div class="col-md-offset-2 col-md-8 col-md-offset-2">
		   <div class="form-group">
	        <label  for="sel1" >Site Name : <span class="man">*</span></label>
			<select name="site" id="site" class="form-control" onchange="getLinebySite_dyanamic()" ><option value="">-Select Site-</option></select>
	       </div>
	     </div>
	     <div class="col-md-offset-2 col-md-8 col-md-offset-2">
		   <div class="form-group">
	        <label for="sel1">Line Id : <span class="man">*</span></label>
			<select name="line" id="line" class="form-control"><option>-Select Line-</option>
			</select>
	       </div>
	     </div>
	     
	     
  
	<div class="col-md-12">
	<div class="form-group">
	  <label class="Process">Process & Sub-process List</label>
	</div>
	</div>
	<!-- <div class="col-md-2"></div> -->
	<div class="col-md-offset-2 col-md-8 col-md-offset-2">
		<div class="form-group">
	  <label for="usr">eAM Serial no. or CAT tag from finance: <span class="man">*</span></label>
	  <input type="text" class="form-control" onchange="getSerialNoData()" id="asset_number" name="asset_number">
	</div>
	 <div class="form-group">
      <label for="sel1">Select eAM Criticality as labeled in eAM: </label>
      <select class="form-control" id="eam_criticality" name="eam_criticality">
        <option value="Select">Select</option>
        <option value="High">High</option>
        <option value="Medium">Medium</option>
        <option value="Low">Low</option>
      </select>
	</div>
	<div class="form-group">
	  <label for="usr">eAM Asset Number: <span class="man">*</span></label>
	  <input type="text" class="form-control" id="tag_finance" name="tag_finance">
	</div>
	
	<div class="form-group">
	  <label for="usr">Process Name/ID No./eAM Asset Group :</label>
	  <input type="text" class="form-control" id="process_name" name="process_name">
	</div>	
	<div class="form-group">
	  <label for="usr">Sub-process or operations/eAM Description:</label>
	  <input type="text" class="form-control" id="sub_process" name="sub_process">
	</div>
		<div class="form-group">
	  <label for="usr">Location in Plant:</label>
	  <input type="text" class="form-control" id="location_plant" name="location_plant">
	</div>
	</div>
	</div>
	
	<div class="row">
	<div class="col-md-12">
	<div class="form-group">
	  <label class="Threats">IT Threats</label>
	</div>
	</div>
	<div class="col-md-offset-2 col-md-8 col-md-offset-2">

	<div class="form-group">
      <label for="sel1">Is there a 3rd Party IT Connectivity/ Managed by 3rd Party to this process (offsite or onsite vendor has access) and who is that 3rd party?:</label>
      <input type="text" class="form-control" id="third_party" name="third_party">   
	</div>
	
	<div class="form-group">
	  <label for="usr">Is the 3rd party vendor needed to support the machine? Do we have a contract for support? Is it monitored?:</label>
	  <input type="text" class="form-control" id="third_party_machine" name="third_party_machine">
	</div>
	<div class="form-group">
	  <label for="usr">Is there a 4G Router or 3rd party cloud device used for vendor connectivity?:</label>
	  <input type="text" class="form-control" id="third_party_router" name="third_party_router">
	</div>
	
	<div class="form-group">
	  <label for="usr">What is the failure mode? What are the safety concerns?:</label>
	  <input type="text" class="form-control" id="failure_mode" name="failure_mode">
	</div>
	
	
	
	</div>
	</div>
	<div class="row">
	<div class="col-md-12">
	<div class="form-group">
	  <label class="Impact">Impact</label>
	  
	</div>
	</div>
	<div class="col-md-offset-2 col-md-8 col-md-offset-2">
		
	<div class="form-group">
	  <label for="usr">Customers or Plants Impacted: <span class="man">*</span></label>
	  <input type="text" class="form-control" id="customers_plants" name="customers_plants">
	</div>
	<div class="form-group">
	  <label for="usr">Units of Production Impacted Per Day: <span class="man">*</span></label>
	  <input type="text" class="form-control" id="units_production" name="units_production">
	</div>
	</div>
	</div>
	<div class="row">
	<div class="col-md-12">
	<div class="form-group">
	  <label class="Inventory">Inventory Reserves</label>
	  
	</div>
	</div>
	<div class="col-md-offset-2 col-md-8 col-md-offset-2">
	<div class="form-group">
	  <label for="usr">Minimum days worth of finished inventory is kept ON SITE? : <span class="man">*</span></label>
	  <input type="text" class="form-control" id="minimumdays_inventory_onsite" name="minimumdays_inventory_onsite">
	</div>
	<div class="form-group">
	  <label for="usr">Minimum days worth of finished inventory is kept REMOTE from manufacturing location?: <span class="man">*</span></label>
	  <input type="text" class="form-control" id="minimumdays_inventory_remote" name="minimumdays_inventory_remote">
	</div>
	</div>
	</div>
	<div class="row">
	<div class="col-md-12">
	<div class="form-group">
	  <label class="Back-up">Back-up Process</label>
	  
	</div>
	</div>
	<div class="col-md-offset-2 col-md-8 col-md-offset-2">
	<div class="form-group">
      <label for="sel1">Is there a back-up for this process?: <span class="man">*</span></label>
      <select class="form-control" id="backup_process" name="backup_process">
        <option value="Select">Select</option>
        <option value="Yes-On-Site">Yes-On-Site</option>
        <option value="Yes-Off-Site">Yes-Off-Site</option>
        <option value="None">None</option>
      </select>
	</div>
	<div class="BackUp" style="display:none;">
	<div class="form-group">
      <label for="sel1">Is the back-up process a manual work around? :</label>
      <input type="text" class="form-control" id="backupprocess_manual" name="backupprocess_manual">
	</div>
	<div class="form-group">
	  <label for="usr">Description Location of backup process:</label>
	  <input type="text" class="form-control" id="desc_location" name="desc_location">
	</div>
	<div class="form-group">
      <label for="sel1">Days to Iniate Back Up :</label>
      <input type="text" class="form-control" id="days_init_backup" name="days_init_backup">
      
	</div>
	<div class="form-group">
      <label for="sel1">Capacity Recovered: <span style="color:red;">(add %)</span></label>
       <input type="text" class="form-control" id="capacity_recovered" name="capacity_recovered">
    <!--   <select class="form-control" id="capacity_recovered" name="capacity_recovered">
        <option value="">Select</option>
        <option value="0-25%">0-25%</option>
        <option value="26-50%">26-50%</option>
        <option value="51-75%">51-75%</option>
        <option value="76-100%">76-100%</option>
      </select> -->
	</div>
	<div class="form-group">
      <label for="sel1">Number of Days Alternate Source is Available:</label>
       <input type="text" class="form-control" id="alternative_source" name="alternative_source">
	</div>
	</div>
	</div>
	</div>
	
	<div class="row">
	<div class="col-md-12">
	<div class="form-group">
	  <label class="Outsourcing">Outsourcing Potential</label>
	</div>
	</div>
	<div class="col-md-offset-2 col-md-8 col-md-offset-2">
		<div class="form-group">
      <label for="sel1">Is the any Outsourcing Potential? :</label>
      <select class="form-control" id="outsource" name="outsource">
        <option value="">Select</option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
      </select>
	</div>
	<div class="outsource"  style="display:none;">
	
	<div class="form-group">
	  <label for="usr">Outsourcing Supplier(s):</label>
	  <input type="text" class="form-control" id="outsourcing_supplier" name="outsourcing_supplier">
	</div>
	
	<div class="form-group">
      <label for="sel1">Percent of Capacity that could be outsourced :</label>
      <input type=text class="form-control" id="percent_capacity" name="percent_capacity"></input> 
	</div>
		<div class="form-group">
	  <label for="usr">Number of days required to transition to alternate source:</label>
	  <input type="text" class="form-control" id="days_alternatesource" name="days_alternatesource">
	</div>
	<div class="form-group">
	  <label for="usr">Number of days Alternate Source is Available:</label>
	  <input type="text" class="form-control" id="days_alternate" name="days_alternate">
	</div>
	</div>
	</div>
	</div>
	
    <div class="row">
	<div class="col-md-12">
	<div class="form-group">
	  <label class="Replacement">Replacement Timeline</label>
	  
	</div>
	</div>
	<div class="col-md-offset-2 col-md-8 col-md-offset-2">
	<div class="form-group">
	  <label for="usr">Original Equipment Manufacturer(OEM) Vendor Name :</label>
	  <input type="text" class="form-control" id="oem_vendor" name="oem_vendor">
	</div>
		<div class="form-group">
	  <label for="usr">Normal Lead time in Production days to Replace Equipment/Process/Sub-Process  (Consider longest lead time component) :</label>
	  <input type="text" class="form-control" id="normal_leadtime" name="normal_leadtime">
	</div>
		<div class="form-group">
	  <label for="usr">Number of days to Replace Equipment on Expedited Basis:</label>
	  <input type="text" class="form-control" id="days_replace" name="days_replace">
	</div>
		<div class="form-group">
	  <label for="usr">Cost for Total Replacement:</label>
	  <input type="text" class="form-control" id="cost_replacement" name="cost_replacement">
	</div>
	</div>
	</div>
	<div class="row">
	<div class="col-md-12">
	<div class="form-group">
	  <label class="Impact">IMPACT</label>
	</div>
	</div>
	
	<div class="col-md-offset-2 col-md-8 col-md-offset-2">
	<div class="form-group">
      <label for="sel1">Impact:</label>
      <select class="form-control" id="impact" name="impact">
        <option value="">Select</option>
        <option value="Vital - loss of the process, sub-process, or component could interrupt assembly/production for two or more weeks">Vital - loss of the process, sub-process, or component could interrupt assembly/production for two or more weeks</option>
        <option value="Critical - loss will interrupt production for 2 days to 2 weeks">Critical - loss will interrupt production for 2 days to 2 weeks</option>
        <option value="Important - loss will significantly slow down, but not stop production">Important - loss will significantly slow down, but not stop production. </option>
        <option value="Deferrable - loss will not significantly impact production">Deferrable - loss will not significantly impact production. </option>
      </select>
	</div>

	<div class="form-group">
	  <label for="usr">If Vital or Critical, state reasoning:</label>
	  <input type="text" class="form-control" id="crictical_reasoning" name="crictical_reasoning">
	</div>
	</div>
	</div>
	
	 <div class="text-center">
	  <button type="button" class="btn btn-success" id="new_process" onclick="InsertBCPInputs1()">Submit</button>
	   <button type="button" class="btn btn-primary" onclick="add_vendor_data123()" id="Add_Vendor">Add Vendor</button>
	 </div> 
	
  </form>

     </div>
  </div>
 </div>
</div>
  
  
  <!-- ending -->
 

<div class="modal fade in" id="addModal" role="dialog" style="display: none;">
    <div class="modal-dialog modal-lg">
      <div class="modal-content" style="background: aliceblue">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" onclick="data_dismiss()">&times;</button>
          <h4 class="modal-title">Updated Form For <span id="site_update"></span> - <span id="line_update"></span></h4>
        </div>
        
      <div class="modal-body">
       <form id="AP1Edit" name="AP1Edit">   
		<div class="row">
		
		 <div class="col-md-12">
				<div class="form-group">
				  <label class="update-heading">Site & Line</label>
				</div>
	     </div>
		
		<div class="col-md-offset-2 col-md-10">
                <div class="col-md-6">
                <div class="form-group">
               <input type="text" class="form-control" id="site_name1" name="site" readonly>
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
                <input type="text" class="form-control" id="line_id1" name="line" readonly> </div>
               </div>
            </div>
		
		  <div class="col-md-12">
				<div class="form-group">
				  <label class="update-heading">Process & Sub-process List</label>
				</div>
	     </div>
	     <div class="col-md-offset-2 col-md-10">
	     <div class="form-group">
	     <label>eAM Serial no. or CAT tag from finance:</label>
	     <input type="text" class="form-control" id="asset_number1" name="asset_number" readonly>
	    </div>
	
	 <div class="form-group">
      <label for="sel1">Select eAM Criticality as labeled in eAM:</label>
      <select class="form-control" id="eam_criticality1" name="eam_criticality">
        <option value=''>Select</option>
        <option value='High'>High</option>
        <option value='Medium'>Medium</option>
        <option value='Low'>Low</option>
      </select>
	</div>
		
		<div class="form-group">
	  <label for="usr">eAM Asset Number:</label>
	  <input type="text" class="form-control" id="tag_finance1" name="tag_finance">
	</div>
	
	<div class="form-group">
	  <label for="usr">Process Name/ID No./eAM Asset Group :</label>
	  <input type="text" class="form-control" id="process_name1" name="process_name">
	</div>	
	<div class="form-group">
	  <label for="usr">Sub-process or operations/eAM Description:</label>
	  <input type="text" class="form-control" id="sub_process1" name="sub_process">
	</div>
		<div class="form-group">
	  <label for="usr">Location in Plant:</label>
	  <input type="text" class="form-control" id="location_plant1" name="location_plant">
	</div>
	</div>
		 
     <div class="col-md-12">
	<div class="form-group">
	  <label class="update-heading">IT Threats</label>
	  
	</div>
	</div>
	<div class="col-md-offset-2 col-md-10">
		<div class="form-group">
      <label for="sel1">Is there a 3rd Party IT Connectivity/ Managed by 3rd Party to this process (offsite or onsite vendor has access) and who is that 3rd party?:</label>
      <input type="text" class="form-control" id="third_party1" name="third_party">   
	</div>
	
	<div class="form-group">
	  <label for="usr">Is the 3rd party vendor needed to support the machine? Do we have a contract for support? Is it monitored?:</label>
	  <input type="text" class="form-control" id="third_party_machine1" name="third_party_machine">
	</div>
	<div class="form-group">
	  <label for="usr">Is there a 4G Router or 3rd party cloud device used for vendor connectivity?:</label>
	  <input type="text" class="form-control" id="third_party_router1" name="third_party_router">
	</div>
	
	<div class="form-group">
	  <label for="usr">What is the failure mode? What are the safety concerns?:</label>
	  <input type="text" class="form-control" id="failure_mode1" name="failure_mode">
	</div>
	</div>
	<div class="col-md-12">
	<div class="form-group">
	  <label class="update-heading">Impact</label>
	  
	</div>
	</div>
	<div class="col-md-offset-2 col-md-10">
		
	<div class="form-group">
	  <label for="usr">Customers or Plants Impacted:</label>
	  <input type="text" class="form-control" id="customers_plants1" name="customers_plants">
	</div>
	<div class="form-group">
	  <label for="usr">Units of Production Impacted Per Day:</label>
	  <input type="text" class="form-control" id="units_production1" name="units_production">
	</div>
	</div>
	<div class="col-md-12">
	<div class="form-group">
	  <label class="update-heading">Inventory Reserves</label>
	</div>
	</div>
	<div class="col-md-offset-2 col-md-10">
	<div class="form-group">
	  <label for="usr">Minimum days worth of finished inventory is kept ON SITE? :</label>
	  <input type="text" class="form-control" id="minimumdays_inventory_onsite1" name="minimumdays_inventory_onsite">
	</div>
	<div class="form-group">
	  <label for="usr">Minimum days worth of finished inventory is kept REMOTE from manufacturing location?:</label>
	  <input type="text" class="form-control" id="minimumdays_inventory_remote1" name="minimumdays_inventory_remote">
	</div>
	</div>
	<div class="col-md-12">
	<div class="form-group">
	  <label class="update-heading">Back-up Process</label>
	</div>
	</div>
	<div class="col-md-offset-2 col-md-10">
	
	<div class="form-group">
      <label for="sel1">Is there a back-up for this process?:</label>
      <select class="form-control" id="backup_process1" name="backup_process">
        <option value=''>Select</option>
        <option value='Yes-On-Site'>Yes-On-Site</option>
        <option value='Yes-Off-Site'>Yes-Off-Site</option>
        <option >None</option>
      </select>
	</div>
	<div class="BackUp1" style="display:none;">
	<div class="form-group">
      <label for="sel1">Is the back-up process a manual work around? :</label>
      <input type="text" class="form-control" id="backupprocess_manual1" name="backupprocess_manual"></input>
        
	</div>
	<div class="form-group">
	  <label for="usr">Description Location of backup process:</label>
	  <input type="text" class="form-control" id="desc_location1"  name="desc_location">
	</div>
	<div class="form-group">
      <label for="sel1">Days to Iniate Back Up :</label>
    <!--   <select class="form-control" id="days_init_backup1" name="days_init_backup">
        <option value=''>Select</option>
        <option value='Less than 2 days'>Less than 2 days</option>
        <option value='2-5 days'>2-5 days</option>
        <option value='1-2 weeks'>1-2 weeks</option>
        <option value='More than 2 weeks'>More than 2 weeks</option>
      </select> -->
      <input type="text" class="form-control" id="days_init_backup1" name="days_init_backup">
	</div>
	<div class="form-group">
      <label for="sel1">Capacity Recovered:</label>
       <input type="text" class="form-control" id="capacity_recovered1" name="capacity_recovered">
     <!--  <select class="form-control" id="capacity_recovered1" name="capacity_recovered">
        <option value=''>Select</option>
        <option value='0-25%'>0-25%</option>
        <option value='26-50%'>26-50%</option>
        <option value='51-75%'>51-75%</option>
        <option value='76-100%'>76-100%</option>
      </select> -->
	</div>
	<div class="form-group">
      <label for="sel1">Number of Days Alternate Source is Available:</label>
       <input type="text" class="form-control" id="alternative_source1" name="alternative_source">
	</div>
	
	</div>
	</div>

	
	<div class="outsoursingbox">
	 	<div class="col-md-12">
			<div class="form-group">
			  <label class="update-heading">Outsourcing Potential</label>
			  	  <button class="btn btn-success add-outsource" type="button" style="padding: 4px 8px;float: right;" onclick="add_outsource()" >Add Data</button> 
			  
			 </div>
	    </div>
	    <div class="outsourcing_supplier_update_data"></div>
	    	    <div class="block-outsource"></div>
	    
	</div>
	
	
	
	<div class="optionBox">
	<div class="col-md-12">
	<div class="form-group  ">
	  <label class="update-heading">Replacement Timeline</label>
	  <button class="btn btn-success add" type="button" style="padding: 4px 8px;float: right;"onclick="add()">Add Data</button> 
	</div>
	</div>
	
	<div class="oem_update_data"></div>
	
	

    <div class="block">
    </div>
</div>
	

	
	<div class="col-md-12">
	<div class="form-group">
	  <label class="update-heading">IMPACT</label>
	</div>
	</div>
	<div class="col-md-offset-2 col-md-10">
	
	 <div class="form-group">
      <label for="sel1">Impact:</label>
      <select class="form-control" id="impact1" name="impact">
        <option value=''>-Select-</option>
        <option value='Vital - loss of the process, sub-process, or component could interrupt assembly/production for two or more weeks'>Vital - loss of the process, sub-process, or component could interrupt assembly/production for two or more weeks</option>
        <option value='Critical - loss will interrupt production for 2 days to 2 weeks'>Critical - loss will interrupt production for 2 days to 2 weeks</option>
        <option value='Important - loss will significantly slow down, but not stop production.'>Important - loss will significantly slow down, but not stop production. </option>
        <option value='Deferrable - loss will not significantly impact production.'>Deferrable - loss will not significantly impact production. </option>
      </select>
	</div>

	<div class="form-group">
	  <label for="usr">If Vital or Critical, state reasoning:</label>
	  <input type="text" class="form-control" id="crictical_reasoning1" name="crictical_reasoning">
	</div>
	</div>
	
<div id="row" align="center">
 <div class="col-md-12" style="margin-bottom: 5px;">
   <button type="button" class="btn btn-success" onclick="UpdateCVPData()" id="update_critical_process">Update</button>
    <button type="button" class="btn btn-warning" onclick="InactiveCVPData()" id="inactive_critical_process">Make Inactive</button>
   <button type="button" class="btn btn-danger" onclick="DeleteCVPData()" id="delete_critical_process">Remove</button>
   
   <button type="button" class="btn btn-info" onclick="ProcessData()" id="process_pdf">Proceed to PDF</button>
 </div>
</div>
		
<div id="row" align="center">
<div class="col-md-offset-4 col-md-4" style="margin-bottom: 20px;">
   <button type="button" class="btn btn-primary" onclick="GetVendorDetails12()">Get Vendor details</button>
   
</div>
</div>
<div class="venodr col-md-12"  align="center" style="margin-bottom:20px">
<div class="col-md-3"><b><a href="#" onclick="GetVendorDetails1(localStorage.getItem('outsorcing_supplier'))" class="vendorlink">Outsourcing Vendors</a></b></div>
<div class="col-md-3"><b><a href="#" onclick="GetVendorDetails1(localStorage.getItem('oem_supplier'))" class="vendorlink">OEM Vendors</a></b></div>
<div class="col-md-3"><b><a href="#" onclick="GetVendorDetails1(localStorage.getItem('it_vendor'))" class="vendorlink">IT Vendors</a></b></div>
<div class="col-md-3"><b><a href="#" onclick="GetVendorDetails()" class="vendorlink">All Vendors</a></b></div>

</div>

	<div id="row">
 <div class="col-md-12 scrollbar">
  <table id="ShowVendorDataTable" class="display">
  <thead>
	    <tr id="HideVendorDataTable">
		<!-- <th style="font-size: 12px;" style="text-align: center;background-color: lightslategray;">Vendor ID</th> -->
		<th style="font-size: 12px;">Process</th>
		<th style="font-size: 12px;">Company</th>
		 <th style="font-size: 12px;">POC</th>
		<th style="font-size: 12px;">Office Phone</th>
		<th style="font-size: 12px;">Cell Phone</th>
		
		<th style="font-size: 12px;">Email ID</th>
		<th style="font-size: 12px;">Other</th>
		
		<th style="font-size: 12px;">Component</th>
		<th style="font-size: 12px;">Drawings</th>
		
		<th style="font-size: 12px;">Parts</th>
		<th style="font-size: 12px;">Services</th>
		
		<th style="font-size: 12px;">Price</th>
		<th style="font-size: 12px;">Ltme</th>
		<th style="font-size: 12px;">Notes</th>
		<th style="font-size: 12px;">Asset ID</th> 
		</tr>
        </thead>
        <tbody>
        
        </tbody>
        <tfoot>
        <tr>
        <td colspan='15'>
        <div id='vendordetails' align='center'>
        <button type="button" class="btn btn-primary" onclick="addVendor()" id="Add_Vendor">Add Vendor</button>
        </div> 
        </td>
        </tr>
        </tfoot>
     </table>
    <br>
    
    
    
</div>
</div>
	
    </div>
 </form>
 
 <div class="row">
 <div class="col-md-offset-2 col-md-8 col-md-offset-2">
 <div id="pdf_process" style="display:none;">
 <div id="pdf_data">

<h4>Process Details	</h4>
<table class="table table-bordered report">
<tr>
<td><strong>Site Name:</strong><span id="pdf_site_name"></span></td>
<td><strong>Line Name:</strong><span id="pdf_line_name"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Process & Sub-process List</strong><span></span></th>
</tr>
<tr>
<td><strong>eAM Asset Number:</strong><span id="pdf_eam_cat_tag"></span></td>
<td><strong>eAM Criticality :</strong><span id="pdf_eam_criticality"></span></td>
</tr>
<tr>
<td><strong>eAM CAT tag:</strong><span id="pdf_assest_number"></span></td>
<td><strong>Process Name :</strong><span id="pdf_process_name"></span></td>
</tr>
<tr>
<td><strong>operations/eAM Description:</strong><span id="pdf_eam_desc"></span></td>
<td><strong>Locations In Plant :</strong><span id="pdf_location"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>IT Threats</strong><span></span></th>
</tr>
<tr>
<td><strong>Is there a 3rd Party IT Connectivity:</strong><span id="pdf_3rd_party"></span></td>
<td><strong>Failure Mode:</strong><span id="pdf_failure_mode"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Impact</strong><span></span></th>
</tr>
<tr>
<td><strong>Plants Impacted:</strong><span id="pdf_plants_impacted"></span></td>
<td><strong>Units of Production:</strong><span id="pdf_units_production"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Inventory Reserves</strong><span></span></th>
</tr>
<tr>
<td><strong>Minimum days worth of finished inventory :</strong><span id="pdf_days_onsite"></span></td>
<td><strong>Finished inventory is kept REMOTE from manufacturing location:</strong><span id="pdf_days_manfactring"></span></td>
</tr>
<tr>
<td colspan="2"><strong>Is there a back-up for this process :</strong><span id="pdf_backup_process"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Outsourcing Potential</strong><span></span></th>
</tr>
<tr>
<td><strong>Outsourcing Supplier(s) :</strong><span id="pdf_outsourcing_supplier"></span></td>
<td><strong>Percent of Capacity :</strong><span id="pdf_percent_capacity"></span></td>
</tr>
<tr>
<td><strong>Number of days required to transition :</strong><span id="pdf_days_transition"></span></td>
<td><strong>Number of days Alternate Source :</strong><span id="pdf_days_alternative"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Replacement Timeline</strong><span></span></th>
</tr>
<tr>
<td><strong>Normal Lead time in Production :</strong><span id="pdf_lead_time"></span></td>
<td><strong>Number of days to Replace Equipment :</strong><span id="pdf_replacement_equipment"></span></td>
</tr>
<tr>
<td colspan="2"><strong>Cost for Total Replacement</strong><span id="pdf_cost_replacement"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Impact</strong><span></span></th>
</tr>
<tr>
<td><strong>Impact :</strong><span id="pdf_impact"></span></td>
<td><strong>If Vital or Critical, state reasoning:</strong><span id="pdf_vital_critical"></span></td>
</tr>



</table>



</div>
<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="printData('pdf_data')">Print</button>
 </div>
 </div>
 
 </div>
 
 
 
 
</div>

</div>
</div>
</div>

<div class="modal fade in" id="VendorModal" role="dialog" style="display: block;">
    <div class="modal-dialog modal-lg" style="width: 100%;">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close"	data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Update Vendor / Supplier data</h4>
        </div>
        <div class="modal-body">
<form id="VendorUpdate" name="VendorUpdate">
<table  class="table table-bordered table-responsive">
 <tbody>
	
<!--      <tr>
    <td> <label for="usr">Vendor ID</label></td>
    <td><input type="text" id="vendor_id2" name="vendor_id2" readonly/></td>
  </tr> -->
  <tr>
    <td>Process/Sub-Process</td>
    <td><input type="text" id="process2" name="process"/></td>
  </tr>
  <tr>
    <td>Company</td>
    <td><input type="text" id="company2" name="company"/></td>
  </tr>
  <tr>
    <td>POC Name</td>
    <td><input type="text" id="poc2" name="poc"/></td>
  </tr>
  <tr>
    <td>Office Phone</td>
    <td><input type="text" id="ophone2" name="ophone"/></td>
  </tr>
  <tr>
  <td>Cell Phone</td>
    <td><input type="text" id="cphone2" name="cphone"/></td>
  </tr>
  <tr>
    <td>eMail Address</td>
    <td><input type="text" id="email2" name="email"/></td>
  </tr>
  <tr>
    <td>Other</td>
    <td><input type="text" id="other2" name="other"/></td>
  </tr>
  <tr>
    <td>Component (if speciality)</td>
    <td><input type="text" id="component2" name="component"/></td>
  </tr>
  <tr>
    <td>Drawings on Hand Y/N</td>
    <td><input type="text" id="drawings2" name="drawings"/></td>
  </tr>
  <tr>
    <td>Parts on Hand Y/N</td>
    <td><input type="text" id="parts2" name="partsOnHand"/></td>
  </tr>
  <tr>
    <td>Services provided (Explain)</td>
    <td><input type="text" id="services2" name="servicesProvided"/></td>
  </tr>
  <tr>
    <td>Price Quote</td>
    <td><input type="text" id="price2" name="priceQuote"/></td>
  </tr>
  <tr>
    <td>Lead Time</td>
    <td><input type="text" id="Ltime2" name="leadTime"/></td>
  </tr>
  <tr>
    <td>Notes</td>
    <td><input type="text" id="notes2" name="notes"/></td>
  </tr> 
  <tr>
    <td>EAM Serial no</td>
    <td><input type="text" id="asset_number2" name="cvdata" readonly style="pointer-events: none;"/></td>
  </tr> 
     
     </tbody>
     </table>   
 </form>  
   <br>
        
         <div id="row" align="center">
 <div class="col-md-offset-4 col-md-4" style="margin-bottom: 5px;">
   <button type="button" class="btn btn-success" id="update_vendor" onclick="UpdateVendorDetails()">Update</button>
    <button type="button" class="btn btn-danger" onclick="DeleteVendor()" id="delete_vendor">Remove</button>
 </div>
</div>

        </div>
        </div>
 </div>
 </div>
   
<!-- <div id="myModal1" class="modal">
 <form id="VendorData1" name="VendorData">
 Modal content
<div class="modal-content">

 <span class="close" >&times;</span>
 <button type="button" class="close" data-dismiss="myModal">&times;</button>
    <h4 class="sub-heading">Vendor / Supplier Contact Info</h4>
    	
<div class="row">
 <table id="tableBody" class="table table-condensed table-bordered table-hover">
  
  <thead>
   <tr>
     <th>
        Process/Sub-Process
     </th>
     <th>
        Company
     </th>
     <th>
        POC Name
     </th>
     <th>
        Office Phone
     </th>
     <th>
        Cell Phone
     </th>
     <th>
        eMail Address
     </th>
     <th>
       Other
     </th>
     <th>
       Component (if speciality)
     </th>
     <th>
       Drawings on Hand Y/N
     </th>
     <th>
       Parts on Hand Y/N
     </th>
     <th>
       Services provided (Explain)
     </th>
        <th>
       Price Quote
     </th>
     <th>
       Lead Time
     </th>
     <th>
       Notes
     </th>
     <th>
       Asset ID
     </th>
   </tr>
 </thead>
 
 <tbody id="new-vendor">
 <tr class="first" row-number="1">
   <td><input type="text" id="process2"  name="process" class="form-control"/></td>
   <td><input type="text" id="company2" name="company" class="form-control"/></td>
   <td><input type="text" id="poc2"   name="poc"  class="form-control "/></td>
   <td><input type="text" id="ophone2" name="ophone"  class="form-control"/></td>
   <td><input type="text" id="cphone2" name="cphone" class="form-control"/></td>
   <td><input type="text" id="email2" name="email" class="form-control "/></td>
   <td><input type="text" id="other2" name="other" class="form-control"/></td>
   <td><input type="text" id="component2" name="component" class="form-control"/></td>
   <td><input type="text" id="drawings2" name="drawings" class="form-control"/></td>
   <td><input type="text" id="parts2" name="partsOnHand" class="form-control "/></td>
   <td><input type="text" id="services2" name="servicesProvided" class="form-control"/></td>
   <td><input type="text" id="price2" name="priceQuote" class="form-control"/></td>
   <td><input type="text" id="Ltime2" name="leadTime" class="form-control "/></td>
   <td><input type="text" id="notes2" name="notes" class="form-control"/> </td>
  
   <td><input type="text" id="asset_number1" name="asset_number1" value=""></td>
</tr>
</tbody>

</table>
</div>

<div class="row">
  <div class="col-md-offset-4 col-md-8" style="color: red;font-size: 20px;font-weight: bold;">
   <button type="button" class="btn btn-primary continue" onclick="closemodalVendors()" style="float:right;">Continue<span><img src="resources/img/continue1.png" style="width: 10px;"/></span></button>
   <button type="button" class="btn btn-success" onclick="createTable()" style="float:right;margin-right: 10px;">Add Vendor</button>
  </div>
</div>
	
    <p>Some text in the Modal..</p>

</div>
</form>
</div> -->
  <!-- End Slider Area -->



<div id="myModal" class="modal">
 <form id="VendorData" name="VendorData">
 <input type='hidden' id="mainstr" name='mainstr'>
 <!-- Modal content -->
<div class="modal-content">

 <!-- <span class="close" >&times;</span> -->
 <button type="button" class="close" onclick="CloseModalPopup()"  data-dismiss="myModal">&times;</button>
    <h4 class="sub-heading">Vendor / Supplier Contact Info</h4>
    	
<div class="row">
 <table id="tableBody" class="table table-condensed table-bordered table-hover">
  
  <thead>
   <tr>
     <th>
        Process/Sub-Process
     </th>
     <th>
        Company
     </th>
     <th>
        POC Name
     </th>
     <th>
        Office Phone
     </th>
     <th>
        Cell Phone
     </th>
     <th>
        eMail Address
     </th>
     <th>
       Other
     </th>
     <th>
       Component (if speciality)
     </th>
     <th>
       Drawings on Hand Y/N
     </th>
     <th>
       Parts on Hand Y/N
     </th>
     <th>
       Services provided (Explain)
     </th>
        <th>
       Price Quote
     </th>
     <th>
       Lead Time
     </th>
     <th>
       Notes
     </th>
     <!-- <th>
       Asset ID
     </th> -->
   </tr>
 </thead>
 
 <tbody id="new-vendor">
 <tr class="first" row-number="1">
   <td><input type="text" id="process1"  name="process" class="form-control"/></td>
   <td><input type="text" id="company1" name="company" class="form-control"/></td>
   <td><input type="text" id="poc1" name="poc" class="form-control "/></td>
   <td><input type="text" id="ophone1" name="ophone" class="form-control"/></td>
   <td><input type="text" id="cphone1"  name="cphone" class="form-control"/></td>
   <td><input type="text" id="email1" name="email" class="form-control "/></td>
   <td><input type="text" id="other1" name="other" class="form-control"/></td>
   <td><input type="text" id="component1" name="component" class="form-control"/></td>
   <td><input type="text" id="drawings1" name="drawings" class="form-control"/></td>
   <td><input type="text" id="parts1" name="partsOnHand" class="form-control "/></td>
   <td><input type="text" id="services1"  name="servicesProvided" class="form-control"/></td>
   <td><input type="text" id="price1" name="priceQuote" class="form-control"/></td>
   <td><input type="text" id="Ltime1" name="leadTime" class="form-control "/></td>
   <td><input type="text" id="notes1" name="notes" class="form-control"/> </td>
  
  <!--  <td><input type="text" id="asset_number1" name="asset_number1" value=""></td> -->
</tr>
</tbody>

</table>
</div>

<div class="row">
  <div class="col-md-offset-4 col-md-8" style="color: red;font-size: 20px;font-weight: bold;">
   <button type="button" class="btn btn-primary continue" onclick="closemodalVendors()" id="vendor_main_continue" style="float:right;">Continue<span><img src="img/continue1.png" style="width: 10px;"/></span></button>
   <button type="button" class="btn btn-success" onclick="createTable()" id="vendor_main_add" style="float:right;margin-right: 10px;">Add Vendor</button>
  </div>
</div>
	
   <!--  <p>Some text in the Modal..</p> -->

</div>
</form>
</div>
   

  <!-- End Slider Area -->




<!-- report Pdf -->

 <!-- add modal popup date:02/08/2019 -->

  <div class="modal fade" id="myReport" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
<!--           <h4 class="modal-title">Modal Header</h4>
				 
 -->           
 		<div class="scrollbar" align="center">


  <table id="search_result" class="display">
   <thead>
	             <!-- <tr>
	             
	               <th  style="text-align: center;background-color: lightslategray;" align="center"></th>
	               <th colspan='6' style="text-align: center;background-color: lightslategray;" align="center">Process & Sub-process List</th>
	                <th colspan='2' style="text-align: center;background-color: darkseagreen;" align="center">IT Threats</th>
	                <th colspan='2' style="text-align: center;background-color: burlywood;" align="center">Impact</th>
	                <th colspan='2' style="text-align: center;background-color: lightblue;" align="center">Inventory Reserves</th>
	                <th colspan='5' style="text-align: center;background-color: lightslategray;" align="center">Outsourcing Potential</th>
	                <th colspan='4' style="text-align: center;background-color: darkseagreen;" align="center">Back-up Process</th>
	                <th colspan='5' style="text-align: center;background-color: burlywood;" align="center">Replacement Timeline</th>
	                <th colspan='4' style="text-align: center;background-color: lightblue;" align="center">IMPACT</th>
	             </tr> -->
          <tr>
           <!--    <th style="font-size: 12px;">Serial No.</th>   -->
              <th style="font-size: 12px;">Site Name</th>
              <th style="font-size: 12px;">Line ID</th>
              <th style="font-size: 12px;">eAM Serial no.</th>
              <th style="font-size: 12px;display:none;">eAM Criticality as labeled in eAM </th>
              <th style="font-size: 12px;">eAM Asset Number</th>
              <th style="font-size: 12px;">Process Name</th>
              <th style="font-size: 12px;">Sub-process</th>
              <th style="font-size: 12px;display:none;">Location in Plant</th>
              <th style="font-size: 12px;display:none;">3rd Party </th>
              <th style="font-size: 12px;display:none;">Failure Mode</th>
              <th style="font-size: 12px;display:none;">Customers or Plants Impacted</th>
              <th style="font-size: 12px;display:none;">Units of Production Impacted Per Day</th>
              <th style="font-size: 12px;display:none;">Minimum days worth of finished inventory is kept ON SITE? </th>
              <th style="font-size: 12px;display:none;">Minimum days worth of finished inventory is kept REMOTE from manufacturing location? </th>
              <th style="font-size: 12px;display:none;">Is there a back-up for this process? Yes - On-site, Yes - Off-site, None </th>
              <th style="font-size: 12px;display:none;">Is the back-up process a manual work around? </th>
              <th style="font-size: 12px;display:none;">Description Location of backup process.</th>
              <th style="font-size: 12px;display:none;">Days to Iniate Back Up</th>
              <th style="font-size: 12px;display:none;">Capacity Recovered </th>
              <th style="font-size: 12px;display:none;">Outsourcing Supplier(s) </th>
              <th style="font-size: 12px;display:none;">Percent of Capacity that could be outsourced </th>
              <th style="font-size: 12px;display:none;">Number of days required to transition to alternate source</th>
              <th style="font-size: 12px;display:none;">Number of Days Alternate Source is Available </th>
              <th style="font-size: 12px;display:none;">Normal Leadtime in Production Days to Replace Equipment/Process/Sub-Process(Consider longest lead time)</th>
              <th style="font-size: 12px;display:none;">Number of Days to Replace Equipment on Expedited Basis </th>
              <th style="font-size: 12px;display:none;">Cost for Total Replacement</th>
              <th style="font-size: 12px;display:none;">Impact: (Vital, Critical, Important, Deferrable) </th>
              <th style="font-size: 12px;display:none;" align="center">If Vital or Critical, state reasoning</th>
          </tr>
     </thead>
   </table>
  </div>
 		
 		
 		<div id='printMe'>
 		<div id="printdata" style="display:none;">
 		<div class="row">
        <div class="col-md-3">
        <img src="img/logo2.png" alt="" style="position: relative;top: 10px;" class="responsive center-block">
        </div>
        <div class="col-md-9">
      <h4 style="float:right;position: relative;top: 30px;"> Business Continuity Planning</h4>
        </div>
        </div>
       
        <div class="modal-body">
        <div class="row">
        <table class="table-bordered report">
    <tbody>
      <tr>
        <td class="col-md-6"><strong>Process :</strong> <span id='process'></span></td>
        <td class="col-md-6" rowspan="4" colspan="2" valign="left"><strong>Impact Rating :</strong><span id='impact-rating'></span></td>
     
      </tr>
      <tr>
        <td class="col-md-6"><strong>Sub-Process :</strong> <span id='sub-process'></span></td>
      </tr> 
      <tr>
        <td class="col-md-6"><strong>eAM # : </strong><span id='eam'></span></td>  
      </tr>
       <tr>
        <td class="col-md-6"><strong>Location : </strong><span id="location"></span></td>  
      </tr>
       <tr>
        <td class="col-md-6"><strong>EAM Serial # : </strong><span id="eam_serial"></span></td>
        <td class="col-md-6" rowspan="4" colspan="2"><strong>EAM Criticality :</strong><span id="criticality"></span></td>
      </tr>
      <tr>
        <td class="col-md-6"><strong>Customers : </strong><span id="customers"></span></td>
      </tr> 
      <tr>
        <td class="col-md-6"><strong>Safety Stock Units : </strong><span id="si-units">(inventory)</span></td>  
      </tr>
       <tr>
        <td class="col-md-6"><strong>Failure Mode : </strong><span id="failure-mode"></span></td>  
      </tr>
       <tr>
        <td class="col-md-12" colspan="3" ><strong>Impact Rating Reasoning : </strong><span id="impact-reasoning"></span></td>  
      </tr>
      <tr style="background-color:#85b4c8c7;">
      <th  class="col-md-12" colspan="3"><h6 style="position:relative;top:8px;color:red;">1.Recommendation : <span id="recom1"></span></h6></th>
      </tr>
      <tr>
      <td class="col-md-6" rowspan="2"><strong>Location :</strong><span id="recom-location1"></span></td>
      <td><strong>Total Downtime :</strong> <span id="total-downtime1"></span></td>
      <td><strong>Units Impacted Per Day : </strong><span id="units-per-day1"></span></td>
      </tr>
      <tr>
       <td><strong>Capacity : </strong><span id="capacity1"></span></td>
      <td><strong>Total Downtime :</strong> <span id="total_time1"></span></td>
      </tr>
 	
      
  <!-- <tr style="background-color:#85b4c8c7;" class="capacity_recovery">
      <th  class="col-md-12" colspan="3"><h6 style="position:relative;top:8px;color:red;">2.Recommendation (Replacement- Original Equipment Manufacturer):  <span id="recom2"></span></h6></th>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Location :</strong><span id="recom-location2"></span></td>
      <td><strong>Normal Lead Time:</strong> <span id="total-downtime2"></span></td>
      <td><strong>Cost of Option: </strong> <span id="units-per-day2"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>POC :</strong> <span id="poc2"></span></td>
       <td rowspan="3"><strong>Lead Time Expedited:</strong> <span id="capacity2"></span></td>
      <td rowspan="3"><strong>Replacement Cost: </strong><span id="total-time2"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>POC : </strong><span id="poc3"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Phone :</strong> <span id="phone3"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Ext :</strong> <span id="ext3"></span></td>
      </tr> -->
     
       <tbody class="table-bordered report1 "></tbody>
      
       <tbody class="table-bordered report2 "></tbody>
      
     <!--  <tr style="background-color:#85b4c8c7;" class="capacity_recovery">
      
      <th  class="col-md-12" colspan="3"><h6 style="position:relative;top:8px;color:red;">3.Recommendation (Outsourcing- Supplier): <span id="recom3"></span></h6></th>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Location :</strong><span id="location3"></span></td>
      <td><strong>Total Downtime : </strong><span id="total-downtime3"></span></td>
      <td><strong>Units Impacted Per Day : </strong><span id="units-per-day3"></span></td>
      </tr>
       <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Location :</strong><span id="location3"></span></td>
      <td><strong>Number of Days Alternate Source is Available : </strong><span id="alternate-source3"></span></td>
      <td><strong>Cost of Option : </strong><span id="cost-per-day3"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>POC :</strong> <span id="poc4"></span></td>
       <td rowspan="3"><strong>Capacity Recovered : </strong><span id="capacity3"></span></td>
      <td rowspan="3"><strong>Replacement Cost : </strong><span id="total-time4"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>POC : </strong><span id="poc5"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Phone :</strong> <span id="phone4"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Ext :</strong> <span id="ext4"></span></td>
      </tr> -->
      
        <tr style="background-color:#85b4c8c7;" class="capacity_recovery">
      <th  class="col-md-12" colspan="3"><h6 style="position:relative;top:8px;color:red;">4.Recommendation : <span id="recom4"></span></h6></th>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Location :</strong><span id="location3"></span></td>
      <td><strong>Total Downtime : </strong><span id="total-downtime3"></span></td>
      <td><strong>Units Impacted Per Day : </strong><span id="units-per-day3"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>POC :</strong> <span id="poc4"></span></td>
       <td rowspan="3"><strong>Capacity : </strong><span id="capacity4"></span></td>
      <td rowspan="3"><strong>Total Downtime : </strong><span id="total-time4"></span></td>
      </tr>
  <!--     <tr class="capacity_recovery">
      <td class="col-md-6"><strong>POC : </strong><span id="poc5"></span></td>
      </tr> -->
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Phone :</strong> <span id="phone4"></span></td>
      </tr>
      <tr class="capacity_recovery">
      <td class="col-md-6"><strong>Ext :</strong> <span id="ext4"></span></td>
      </tr>

      <tr>
      <td class="col-md-12" colspan="3"><strong>Additional Mitigation Needed : </strong id="add-mitigation"><span id="additional_mitigation_needed"></span></td>
      </tr>
       <tr>
      <td class="col-md-12" colspan="3"><strong>Accept Risk at Current Level? :</strong> <span id="current-risk-level"></span></td>
      </tr>
       <tr>
      <td class="col-md-12" colspan="3"><strong>Date Last Review :</strong> <span id="date-last-review"></span></td>
      </tr>
       <tr>
      <td class="col-md-12" colspan="3"><strong>Required Review Date : </strong><span id="required-review-date"></span></td>
      
      
      </tr>
    </tbody>
  </table>
  
      </div>
      </div>
        </div>
        </div>	
        <div class="modal-footer report-footer" style="display:none;">
          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="printDiv('printMe')">Print</button>
           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  </div>
  <!-- end  -->
  
  <!--model popup for make active process  -->
  <div class="modal fade" id="makeActive" role="dialog">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Make Active Process</h4>
        </div>
        <div class="modal-body">
        <P>In EAM Master Data</P>
         <p><strong>Serial Number : </strong><span id="active_serial_num"></span></p>
         <p><strong>Active End Date : </strong><span id="active_end_date"></span></p>
        <P><strong>Note:</strong> You Want to Remove/Change the Active End Date Follow Instructions</P>
        <div id="active_date" style="display:none;">
        Select New Active End Date : <input type="text" id="txtdate" placeholder="mm/dd/yyyy" readonly/>
     
          <button type="button" class="btn btn-success" onclick="changeActive()" style="float:'right';"> Submit </button>
        </div>
        
        </div>
        
         <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="active_end">Change Active End Date</button>
            <button type="button" class="btn btn-danger" onclick="removeActive()">Remove</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- end model popup for make active process -->
<!-- inactive popup  -->

<div class="modal fade" id="inactiveReport" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
<!--           <h4 class="modal-title">Modal Header</h4>
				 
 -->           
 		<div class="scrollbar" align="center">


  <table id="inactive_result" class="display">
   <thead>
	           
          <tr>
         
              <th style="font-size: 12px;">Site Name</th>
              <th style="font-size: 12px;">Line ID</th>
              <th style="font-size: 12px;">eAM Serial no</th>
              <th style="font-size: 12px;display:none;">eAM Criticality as labeled in eAM </th>
              <th style="font-size: 12px;">eAM Asset Number</th>
              <th style="font-size: 12px;">Process Name</th>
              <th style="font-size: 12px;">Sub-process</th>
              <th style="font-size: 12px;display:none;">Location in Plant</th>
              <th style="font-size: 12px;display:none;">3rd Party </th>
              <th style="font-size: 12px;display:none;">Failure Mode</th>
              <th style="font-size: 12px;display:none;">Customers or Plants Impacted</th>
              <th style="font-size: 12px;display:none;">Units of Production Impacted Per Day</th>
              <th style="font-size: 12px;display:none;">Minimum days worth of finished inventory is kept ON SITE? </th>
              <th style="font-size: 12px;display:none;">Minimum days worth of finished inventory is kept REMOTE from manufacturing location? </th>
              <th style="font-size: 12px;display:none;">Is there a back-up for this process? Yes - On-site, Yes - Off-site, None </th>
              <th style="font-size: 12px;display:none;">Is the back-up process a manual work around? </th>
              <th style="font-size: 12px;display:none;">Description Location of backup process.</th>
              <th style="font-size: 12px;display:none;">Days to Iniate Back Up</th>
              <th style="font-size: 12px;display:none;">Capacity Recovered </th>
              <th style="font-size: 12px;display:none;">Outsourcing Supplier(s) </th>
              <th style="font-size: 12px;display:none;">Percent of Capacity that could be outsourced </th>
              <th style="font-size: 12px;display:none;">Number of days required to transition to alternate source</th>
              <th style="font-size: 12px;display:none;">Number of Days Alternate Source is Available </th>
              <th style="font-size: 12px;display:none;">Normal Leadtime in Production Days to Replace Equipment/Process/Sub-Process(Consider longest lead time)</th>
              <th style="font-size: 12px;display:none;">Number of Days to Replace Equipment on Expedited Basis </th>
              <th style="font-size: 12px;display:none;">Cost for Total Replacement</th>
              <th style="font-size: 12px;display:none;">Impact: (Vital, Critical, Important, Deferrable) </th>
              <th style="font-size: 12px;display:none;" align="center">If Vital or Critical, state reasoning</th>
          </tr>
     </thead>
   </table>
  </div>
 		
 		
 		<!-- click event details  table -->
 		
 		 
 <div class="row">
 <div class="col-md-offset-2 col-md-8 col-md-offset-2">
 <div id="pdf_process" style="display:none;">
 <div id="pdf_data">

<h4>Process Details	</h4>
<table class="table table-bordered report">
<tr>
<td><strong>Site Name:</strong><span id="pdf_site_name"></span></td>
<td><strong>Line Name:</strong><span id="pdf_line_name"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Process & Sub-process List</strong><span></span></th>

</tr>
<tr>
<td><strong>eAM Asset Number:</strong><span id="pdf_eam_cat_tag"></span></td>
<td><strong>eAM Criticality :</strong><span id="pdf_eam_criticality"></span></td>
</tr>
<tr>
<td><strong>eAM CAT tag:</strong><span id="pdf_assest_number"></span></td>
<td><strong>Process Name :</strong><span id="pdf_process_name"></span></td>
</tr>
<tr>
<td><strong>operations/eAM Description:</strong><span id="pdf_eam_desc"></span></td>
<td><strong>Locations In Plant :</strong><span id="pdf_location"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>IT Threats</strong><span></span></th>
</tr>
<tr>
<td><strong>Is there a 3rd Party IT Connectivity:</strong><span id="pdf_3rd_party"></span></td>
<td><strong>Failure Mode:</strong><span id="pdf_failure_mode"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Impact</strong><span></span></th>
</tr>
<tr>
<td><strong>Plants Impacted:</strong><span id="pdf_plants_impacted"></span></td>
<td><strong>Units of Production:</strong><span id="pdf_units_production"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Inventory Reserves</strong><span></span></th>
</tr>
<tr>
<td><strong>Minimum days worth of finished inventory :</strong><span id="pdf_days_onsite"></span></td>
<td><strong>Finished inventory is kept REMOTE from manufacturing location:</strong><span id="pdf_days_manfactring"></span></td>
</tr>
<tr>
<td colspan="2"><strong>Is there a back-up for this process :</strong><span id="pdf_backup_process"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Outsourcing Potential</strong><span></span></th>
</tr>
<tr>
<td><strong>Outsourcing Supplier(s) :</strong><span id="pdf_outsourcing_supplier"></span></td>
<td><strong>Percent of Capacity :</strong><span id="pdf_percent_capacity"></span></td>
</tr>
<tr>
<td><strong>Number of days required to transition :</strong><span id="pdf_days_transition"></span></td>
<td><strong>Number of days Alternate Source :</strong><span id="pdf_days_alternative"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Replacement Timeline</strong><span></span></th>
</tr>
<tr>
<td><strong>Normal Lead time in Production :</strong><span id="pdf_lead_time"></span></td>
<td><strong>Number of days to Replace Equipment :</strong><span id="pdf_replacement_equipment"></span></td>
</tr>
<tr>
<td colspan="2"><strong>Cost for Total Replacement</strong><span id="pdf_cost_replacement"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Impact</strong><span></span></th>
</tr>
<tr>
<td><strong>Impact :</strong><span id="pdf_impact"></span></td>
<td><strong>If Vital or Critical, state reasoning:</strong><span id="pdf_vital_critical"></span></td>
</tr>



</table>



</div>
<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="printData('pdf_data')">Print</button>
 </div>
 </div>
 
 </div>
 
 		
 		
 		<!-- end table  -->
 		
 		 
 <div class="row">
 <div class="col-md-12">
 <div id="pdf_inactive" style="display:none;">
 <div id="pdf_data">

<h4>In-Active Process Details</h4>
<table class="table table-bordered report">
<tr>
<td><strong>Site Name:</strong><span id="pdf_site_name1"></span></td>
<td><strong>Line Name:</strong><span id="pdf_line_name1"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Process & Sub-process List</strong><span></span></th>
</tr>
<tr>
<td><strong>eAM Asset Number:</strong><span id="pdf_eam_cat_tag1"></span></td>
<td><strong>eAM Criticality :</strong><span id="pdf_eam_criticality1"></span></td>
</tr>
<tr>
<td><strong>eAM CAT tag:</strong><span id="pdf_assest_number1"></span></td>
<td><strong>Process Name :</strong><span id="pdf_process_name1"></span></td>
</tr>
<tr>
<td><strong>operations/eAM Description:</strong><span id="pdf_eam_desc1"></span></td>
<td><strong>Locations In Plant :</strong><span id="pdf_location1"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>IT Threats</strong><span></span></th>
</tr>
<tr>
<td><strong>Is there a 3rd Party IT Connectivity:</strong><span id="pdf_3rd_party1"></span></td>
<td><strong>Failure Mode:</strong><span id="pdf_failure_mode1"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Impact</strong><span></span></th>
</tr>
<tr>
<td><strong>Plants Impacted:</strong><span id="pdf_plants_impacted1"></span></td>
<td><strong>Units of Production:</strong><span id="pdf_units_production1"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Inventory Reserves</strong><span></span></th>
</tr>
<tr>
<td><strong>Minimum days worth of finished inventory :</strong><span id="pdf_days_onsite1"></span></td>
<td><strong>Finished inventory is kept REMOTE from manufacturing location:</strong><span id="pdf_days_manfactring1"></span></td>
</tr>
<tr>
<td colspan="2"><strong>Is there a back-up for this process :</strong><span id="pdf_backup_process1"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Outsourcing Potential</strong><span></span></th>
</tr>
<tr>
<td><strong>Outsourcing Supplier(s) :</strong><span id="pdf_outsourcing_supplier1"></span></td>
<td><strong>Percent of Capacity :</strong><span id="pdf_percent_capacity1"></span></td>
</tr>
<tr>
<td><strong>Number of days required to transition :</strong><span id="pdf_days_transition1"></span></td>
<td><strong>Number of days Alternate Source :</strong><span id="pdf_days_alternative1"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Replacement Timeline</strong><span></span></th>
</tr>
<tr>
<td><strong>Normal Lead time in Production :</strong><span id="pdf_lead_time1"></span></td>
<td><strong>Number of days to Replace Equipment :</strong><span id="pdf_replacement_equipment1"></span></td>
</tr>
<tr>
<td colspan="2"><strong>Cost for Total Replacement</strong><span id="pdf_cost_replacement1"></span></td>
</tr>
<tr>
<th colspan="2" style="color:#C34628";><strong>Impact</strong><span></span></th>
</tr>
<tr>
<td><strong>Impact :</strong><span id="pdf_impact1"></span></td>
<td><strong>If Vital or Critical, state reasoning:</strong><span id="pdf_vital_critical1"></span></td>
</tr>



</table>



</div>
<div class="footter" style="float:right;">
<button type="button" class="btn btn-primary" data-dismiss="modal" onclick="printData('pdf_data')">Print</button>
<button type="button" class="btn btn-success" data-dismiss="modal" onclick="activeProcess()" id="active_button" data-toggle="modal" data-target="#makeActive">Make Active</button>
 </div>
 </div>
 </div>
 
 </div>
 
 
        
        </div>
      </div>
    </div>
  </div>
  </div>
  <!--  end inactive end date -->
 
  <!-- End Contact Area -->

  <!-- Start Footer bottom Area -->
  <!-- <footer>
    <div class="footer-area-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="copyright text-center">
              <p>
                &copy; Copyright <strong>Business Continuity Planning</strong>. All Rights Reserved
              </p>
            </div>
            <div class="credits">
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer> -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

<script src="../libs/jquery/jquery.min.js"></script>
  <script src="../libs/bootstrap/js/bootstrap.min.js"></script>
  <script src="../libs/owlcarousel/owl.carousel.min.js"></script>
  <script src="../libs/venobox/venobox.min.js"></script>
  <script src="../libs/knob/jquery.knob.js"></script>
  <script src="../libs/wow/wow.min.js"></script>
  <script src="../libs/parallax/parallax.js"></script>
  <script src="../libs/easing/easing.min.js"></script>
  <script src="../libs/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
  <script src="../libs/appear/jquery.appear.js"></script>
  <script src="../libs/isotope/isotope.pkgd.min.js"></script>

  <script src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
  <script src="https://cdn.fusioncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>
   <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script src="../js/main.js"></script>
  
  <!-- data table -->
  <script src="../js/jquery.dataTables.min.js"></script>
  <script src="../js/dataTables.buttons.min.js"></script>
  <script src="../js/jszip.min.js"></script>
  <script src="../js/vfs_fonts.js"></script>
<!--   <script src="js/pdfmake.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
  
  <script src="../js/buttons.html5.min.js"></script>
  <script src="../js/buttons.print.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"> </script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"> </script>

  

<script>
var counter = 1;

		var api = "https://bcp-web.al.ge.com/BCP/CriticalVital_Process/";
	  	//var api = "http://localhost:8085/BCP/CriticalVital_Process/";
	  	
	  	
		 var site_nam = window.location.pathname;
        var Site_original = decodeURI(site_nam.slice(27, 500));
        //alert(Site_original);
      document.getElementById("site_name").value=Site_original;
      document.getElementById("site_name_heading").innerHTML=Site_original;
	//overlay for add new process

function CloseModalPopup() {       
	//$("#myModal").modal('toggle');
	 $('#myModal').hide();
	//$("[data-dismiss=myModal]").trigger({ type: "click" });
    }



var site_data;
function openNav() {
 document.getElementById("myNav").style.width = "50%";
 
}

function closeNav() {
 document.getElementById("myNav").style.width = "0%";
}

//depandices for questinary form -->

$(function() {
 
      $('#backup_process').change(function(){
			if($(this).val()=='Yes-On-Site' || $(this).val()=='Yes-Off-Site') {
              $('.BackUp').show();
			}
			else{
			  $('.BackUp').hide();
			}
      });
      $('#backup_process1').change(function(){
    	  //alert('hi');
    	
			if($(this).val()=='Yes-On-Site' || $(this).val()=='Yes-Off-Site') {
				//alert('hi');
              $('.BackUp1').show();
			}
			else{
			  $('.BackUp1').hide();
			}
      });
		
		$('#backupprocess_manual').change(function(){
		//$('.backup_process').hide();
			if($(this).val()=='Yes-BackUp'){
             $('.back-up').show();
			}
			else{
			 $('.back-up').hide();
			}
      });
		
		
		$('#history').change(function(){
		//$('.backup_process').hide();
			if($(this).val()=='Yes'){
             $('#frequent-data').show();
             
             
             
			 $('.icon-data-back-yes').hide();
			}
			else{
			 $('#frequent-data').hide();
			 $('.icon-data-back-yes').show();
			}
      });
		
		$('#recovered-back-up').change(function(){
	
			if($(this).val()=='stored-backup'){
			
			 $('.icon-stored-back-yes').hide();
			}
			else{
	
			 $('.icon-stored-back-yes').show();
			 
			}
      });
	
			$('#current-backup').change(function(){
		
			if($(this).val()=='yes-current-backup'){
			
			 $('.current-backup').hide();
			}
			else{
			//alert('hi');
			 //$('#frequent-data').hide();
			 $('.current-backup').show();
			 
			}
      });
		
		// tested value 
		$('#beentested').change(function(){
		
			if($(this).val()=='tested-yes'){
			
			 $('.tested').hide();
			}
			else{
		
			 $('.tested').show();
			 
			}
      });
		
		
		 $('#outsource').change(function(){
		//$('.backup_process').hide();
			if($(this).val()=='Yes'){
          $('.outsource').show();
			}
			else{
			//alert('hi');
			 $('.outsource').hide();
			}
      });
		
		/* $('#third_party').change(function () {
		if($(this).val()=='Yes'){
		  $('#myModal').show();
		}else{
		  $('#myModal').hide();
		}
		
		});
		

		$('#third_party1').change(function () {
			if($(this).val()=='Yes'){
			  $('#myModal').show();
			}else{
			  $('#myModal').hide();
			}
			
			});
		 */
		
		
  });

//  ending	
// start the modal popup 

//Get the modal
var modal = document.getElementById('myModal');

//Get the button that opens the modal


//Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];
//When the user clicks the button, open the modal 


//When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

//When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
      modal.style.display = "none";
  }
}

window.createTable = function() {

	 var check=true;
/* 	 if ($('#vendor_id1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
 */		if ($('#process1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#company1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#poc1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#ophone1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#cphone1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#email1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#other1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#component1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#drawings1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#parts1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#services1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#price1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#Ltime1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
		if ($('#notes1').val() == '') {
			alert("Enter the all the required fields..!!");
			return false;
		  }
	else{

		var asset=document.getElementById("asset_number1").value;

		if(asset==null || asset == '')
			{
			var $form = $("#VendorData");
			var unindexed_array = $form.serializeArray();
		    var indexed_array = {};

		    $.map(unindexed_array, function(n, i){
		        indexed_array[n['name']] = n['value'];
		    });
			
		    var a1=JSON.stringify(indexed_array);

		$.ajax({
			url : api + "add_vendor",
			  type: 'POST',
			  data: a1,
			  contentType: 'application/json; charset=utf-8'
			}) 
							
			}
		else{
			 var $form = $("#VendorData");
				var unindexed_array = $form.serializeArray();
			    var indexed_array = {};

			    $.map(unindexed_array, function(n, i){
			        indexed_array[n['name']] = n['value'];
			    });
				
			    var a1=JSON.stringify(indexed_array);

			$.ajax({
				url : api + "add_vendor_by_update",
				  type: 'POST',
				  data: a1,
				  contentType: 'application/json; charset=utf-8'
				})
				 
				addVendorData2();
			}
	
		counter=counter+2;

	
	//var vendor_id = document.getElementById("vendor_id1").value;
	var process = document.getElementById("process1").value;
	var company = document.getElementById("company1").value;
	var poc = document.getElementById("poc1").value;
	var ophone = document.getElementById("ophone1").value;
	var cphone = document.getElementById("cphone1").value;
	var email = document.getElementById("email1").value;
	var other = document.getElementById("other1").value;
	var component = document.getElementById("component1").value;
	var drawings = document.getElementById("drawings1").value;
	var parts = document.getElementById("parts1").value;
	var services = document.getElementById("services1").value;
	var price = document.getElementById("price1").value;
	var leadtime = document.getElementById("Ltime1").value;
	var notes = document.getElementById("notes1").value;
	
	$('#totalRowCount').text(counter - 1);
	var htmlText = '';

	htmlText += '<tr class="first" row-number="' + counter +'">';
	
/* 	htmlText += '<td>';
	htmlText += '<input type="text" id="vendor_id' + counter
			+ '" class="form-control"  disabled value="'
      + vendor_id + '">';
	htmlText += '</td>'; */
	
	htmlText += '<td>';
	htmlText += '<input type="text" id="process'+ counter+'" class="form-control"  disabled value="'+ process + '">';
	htmlText += '</td>';
	
	htmlText += '<td>';
	htmlText += '<input type="text" id="company' + counter+ '" class="form-control"  disabled value="'+company + '">';
	htmlText += '</td>';

	htmlText += '<td>';
	htmlText += '<input type="text" id="poc' + counter
			+ '" class="form-control"  disabled value="'
		+ poc + '">';
	htmlText += '</td>';
	
	htmlText += '<td>';
	htmlText += '<input type="text" id="ophone' + counter
			+ '" class="form-control"  disabled value="'
	     + ophone + '">';
    htmlText += '</td>';
	
    htmlText += '<td>';
	htmlText += '<input type="text" id="cphone' + counter
			+ '" class="form-control"  disabled value="'
	   	+ cphone + '">';
	htmlText += '</td>';

	htmlText += '<td>';
	htmlText += '<input type="text" id="email' + counter
			+ '" class="form-control"  disabled value="'
	    + email + '">';
	htmlText += '</td>';				
	
	htmlText += '<td>';
	htmlText += '<input type="text" id="other' + counter
			+ '" class="form-control"  disabled value="'
		  + other + '">';
	htmlText += '</td>';

	htmlText += '<td>';
	htmlText += '<input type="text" id="component' + counter
			+ '" class="form-control"  disabled value="'
	    + component + '">';
	htmlText += '</td>';

	htmlText += '<td>';
	htmlText += '<input type="text" id="drawings'+ counter+'" class="form-control"  disabled value="'
		+ drawings + '">';
    htmlText += '</td>';
	
    htmlText += '<td>';
	htmlText += '<input type="text" id="parts' + counter
			+ '" class="form-control"  disabled value="'
		+ parts + '">';
	htmlText += '</td>';

	htmlText += '<td>';
	htmlText += '<input type="text" id="services' + counter
			+ '" class="form-control"  disabled value="'
		+ services + '">';
	htmlText += '</td>';

	htmlText += '<td>';
	htmlText += '<input type="text" id="price' + counter
			+ '" class="form-control"  disabled value="'
		+ price + '">';
	htmlText += '</td>';

	htmlText += '<td>';
	htmlText += '<input type="text" id="Ltime' + counter
	        + '" class="form-control"  disabled value="'
		+ leadtime + '">';
	htmlText += '</td>';

	htmlText += '<td>';
	htmlText += '<input type="text" id="notes' + counter
			+ '" class="form-control"  disabled value="'
		+ notes + '">';
		
	htmlText += '</td>';

	htmlText += '</tr>';
	htmlText += '</tbody>';
	htmlText += '</table>';

	$('#tableBody').append(htmlText);
	//$('#vendor_id1').val('');
	$('#process1').val('');
    $('#company1').val('');
    $('#poc1').val('');
    $('#ophone1').val('');
    $('#cphone1').val('');
    $('#email1').val('');
    $('#other1').val('');
    $('#component1').val('');
    $('#drawings1').val('');
    $('#parts1').val('');
    $('#services1').val('');
    $('#price1').val('');
    $('#Ltime1').val('');
    $('#notes1').val('');
    //alert("----------");
	} 
}

 function deleteRows() {
 document.getElementById("tablebody").deleteRow(0);
} 
 function closemodalVendors(){

		
		var asset = document.getElementById("asset_number").value;
		//alert(asset)
		if(asset==""){
			validate();
		}
		document.getElementById('myModal').style.display ='none';

		addVendorDataContinue();
		
	}


function addVendorDataContinue(){

	var asset1=document.getElementById("asset_number1").value;
	var asset = document.getElementById("asset_number").value;

	if(asset1==null || asset1 == '')
		{
		var $form = $("#VendorData");
		var unindexed_array = $form.serializeArray();
	    var indexed_array = {};

	    $.map(unindexed_array, function(n, i){
	        indexed_array[n['name']] = n['value'];
	    });
		
	    var a1=JSON.stringify(indexed_array);

	$.ajax({
		url : api + "add_vendor_by_update",
		  type: 'POST',
		  data: a1,
		  contentType: 'application/json; charset=utf-8'
		})
		 
		addVendorData2();
						
		}
	else{
		 var $form = $("#VendorData");
			var unindexed_array = $form.serializeArray();
		    var indexed_array = {};

		    $.map(unindexed_array, function(n, i){
		        indexed_array[n['name']] = n['value'];
		    });
			
		    var a1=JSON.stringify(indexed_array);

		$.ajax({
			url : api + "add_vendor_by_update",
			  type: 'POST',
			  data: a1,
			  contentType: 'application/json; charset=utf-8'
			})
			 
			addVendorData2();
		}


}
	
function addVendor(){
	$('#myModal').show();
	
}



function validate1() {
	var asset = document.getElementById("asset_number").value;
	if(asset==''){
		asset=document.getElementById("asset_number1").value;
	}
	
	//alert(asset);
document.getElementById('myModal').style.display ='none';
var valid = true;

/* if ($('#asset_number2').val() == '') {
		valid = false;
		alert(rei);
 }  */
  
 if( valid == false){
     alert("Please Enter All the Required Fields or else u might have forgotton to give Asset ID..!!");
     return false;
 }

}

	
$('#addModal').on('show.bs.modal', function () {
	  
	 var site_user = $("#site_name").val();
	// alert(site_user);
	 site_data = site_user;
	// console.log(site_data);
	 // do something…
	});
	

$(document).ready(function() {
	$("#addModal").hide();  
	$("#VendorModal").hide(); 
	$("#HideVendor").hide();
	$("#HideVendorDataTable").hide();
	$("#example").hide();
	 $("#example1").hide();
	 $("#example_wrapper").hide();
	 $("#example1_wrapper").hide();
	// $("#search_result").hide();
	
	/* localStorage.removeItem("kalisha");
	localStorage.removeItem("outsourcing");
	localStorage.removeItem("oem_size");
	localStorage.removeItem("outsourcing_size"); */

	
	 
	 var printCounter = 0;
  

       //If parent option is changed
       $("#site").change(function() {
       		var parent = $(this).val(); //get option value from parent 
       		
       		switch(parent){ //using switch compare selected option and populate child
       			  case 'AP1':
       			 	list(AP1);
       				break;
       			  case 'AP3':
       			 	list(AP3);
       				break;	
       			  case 'AP5':
       			 	list(AP5);
       				break;
       			  case 'RPO':
       			 	list(RPO);
       				break;
       			  case 'DPO':
       			 	list(DPO);
       				break;
       			  case 'CPO':
       			 	list(CPO);
       				break;
       			  case 'MZL':
       			 	list(MZL);
       				break;	
       			  case 'MRO':
       			 	list(MRO);
       				break;	
       			default: //default child option is blank
       				$("#line").html('');	 
       				break;
       		   }
       		Disable_newprocess(); 
       });

       //function to populate child select box
       function list(array_list)
       {
       	$("#line").html(""); //reset child options
       	$(array_list).each(function (i) { //populate child options 
       		$("#line").append("<option value=\""+array_list[i].value+"\">"+array_list[i].display+"</option>");
       	});
       }
  
     /*End of Dependent*/
     
     getLinebySite();
	 
	 $.ajax({
		method : "GET",
		url : api + "fetch_site",
		contentType : "application/json",
		dataType : "json",
		success : function(result) {
			console.log(result);
			$.each(result, function(key, value) {
				for (var i = 0; i < value.length; i++) {
					//var string = value.toString().split(",");	
					$('#site_name').append(
							$("<option></option>")
									.attr("value", status).text(
											value[i]));

				}
			});
	}
	});

	 $.ajax({
			method : "GET",
			url : api + "fetch_site__dynamic",
			contentType : "application/json",
			dataType : "json",
			success : function(result) {
				console.log(result);
				$.each(result, function(key, value) {
					for (var i = 0; i < value.length; i++) {
						//var string = value.toString().split(",");	
						$('#site').append(
								$("<option></option>")
										.attr("value", status).text(
												value[i]));

					}
				});
		}
		});

	var roleabc= localStorage.getItem('user-role');
	 
	 if(roleabc == 'Admin' || roleabc == 'Manager')
		 {
		 $("#Dynamic_add_Site_line_button").show();
		 }else{
			 $("#Dynamic_add_Site_line_button").hide();
			 }
	 
	document.getElementById("name").innerHTML = localStorage.getItem('user-name');
	
	
	
	$.ajax({
		method : "DELETE",
		url : api + "delete_vendor",
		data : {
			"asset_number":"GE-IDC"
					}
			});
			
	$.ajax({
		method : "POST",
		url : api + "process_compare_with_eam",
		data:{
			asset_number:"GEA"
		}
			});

	
	$("#txtdate").datepicker({
           minDate: 0
       });
	
	 
});

	 
function ProcessData() {
	
  	$('#pdf_process').show();
	  $("#pdf_site_name").text($("#site_name1").val());
      $("#pdf_line_name").text($("#line_id1").val());
      $("#pdf_assest_number").text( $("#asset_number1").val());
      $("#pdf_eam_criticality").text( $("#eam_criticality1").val());
      $("#pdf_eam_cat_tag").text($("#tag_finance1").val());
      $("#pdf_process_name").text($("#process_name1").val());
      $("#pdf_eam_desc").text($("#sub_process1").val());
      $("#pdf_location").text($("#location_plant1").val());
      $("#pdf_3rd_party").text($("#third_party1").val());
      $("#pdf_failure_mode").text($("#failure_mode1").val());
      $("#pdf_plants_impacted").text($("#customers_plants1").val());
      $("#pdf_units_production").text($("#units_production1").val());
      $("#pdf_days_onsite").text($("#minimumdays_inventory_onsite1").val());
      $("#pdf_days_manfactring").text($("#minimumdays_inventory_remote1").val());
      $("#pdf_backup_process").text($("#backup_process1").val());
      $("#pdf_outsourcing_supplier").text($("#outsourcing_supplier1").val());
      $("#pdf_percent_capacity").text($("#percent_capacity1").val());
      $("#pdf_days_transition").text($("#days_alternatesource1").val());
      $("#pdf_days_alternative").text($("#days_alternate1").val());
      $("#pdf_lead_time").text($("#normal_leadtime1").val());
      $("#pdf_replacement_equipment").text($("#days_replace1").val());
      $("#pdf_cost_replacement").text($("#cost_replacement1").val());
      $("#pdf_impact").text( $("#impact1").val());
      $("#pdf_vital_critical").text($("#crictical_reasoning1").val());
 }

function Inactive_hide(site_val1)
{
	 var site_val =  site_val1;
	 var user_role=localStorage.getItem('user-role');
	 var user_site=localStorage.getItem('user-site'); 
	 
	 if (site_val==user_site && user_role =='Manager') {
		 
		 $('#active_button').prop('disabled',false);
	  }
     else if(user_role =='Admin'){
    	 $('#active_button').prop('disabled',false);
     }   
     else {
    	  $('#active_button').prop('disabled',true);
     }
}

function Disable_button(){
	
	 var site_val =  $("#site_name1").val();
	 var btn = document.getElementById("update_critical_process");
	 var btn_inactive = document.getElementById("inactive_critical_process");
	 var btn_delete = document.getElementById("delete_critical_process");

	 var user_role=localStorage.getItem('user-role');
	 var user_site=localStorage.getItem('user-site'); 

	      if (site_val==user_site && user_role =='Manager') {
		      
         btn.disabled=false;
         btn_inactive.disabled=false;
         btn_delete.disablede=false;

         $('#vendor_main_add').prop('disabled',false);
         $('#vendor_main_continue').prop('disabled',false);
        
 
         }
          else if(user_role =='Admin'){
           btn.disabled=false;
           btn_inactive.disabled=false;
           btn_delete.disabled=false;

           $('#vendor_main_add').prop('disabled',false);
           $('#vendor_main_continue').prop('disabled',false);
           
         
         }   
         else {
             btn.disabled=true;
             btn_inactive.disabled=true;
             btn_delete.disabled=true;
             $('#vendor_main_add').prop('disabled',true);
             $('#vendor_main_continue').prop('disabled',true);
           
           
         }
	
} 

function Disable_vendor_button(){
	
	 var site_val =  $("#site_name1").val();

	 var vendor_btn = document.getElementById("update_vendor");
	 var vendor_delete_btn = document.getElementById("delete_vendor");
	 
	 var user_role=localStorage.getItem('user-role');
	 var user_site=localStorage.getItem('user-site'); 
	 
        if (site_val == user_site && user_role =='Manager') {
        	vendor_btn.disabled=false;
        	vendor_delete_btn.disabled=false;
        }
         else if(user_role =='Admin'){
        	 vendor_btn.disabled=false;
        	 vendor_delete_btn.disabled=false;
        }  
        else {
        	vendor_btn.disabled=true;
        	vendor_delete_btn.disabled=true;
        }
	
}
function Disable_newprocess(){
	
	 var btn1 = document.getElementById("new_process");
	 
	 var newprocess_site = $("#site").val();

	 var user_role=localStorage.getItem('user-role');
	 var user_site=localStorage.getItem('user-site'); 

	   if (newprocess_site==user_site && user_role=='Manager') {
           btn1.disabled=false;

           $('#vendor_main_add').prop('disabled',false);
           $('#vendor_main_continue').prop('disabled',false);
         }
          else if(user_role=='Admin'){
	       btn1.disabled=false;

	       $('#vendor_main_add').prop('disabled',false);
           $('#vendor_main_continue').prop('disabled',false);
	           
         }  
         else {
        	 alert('You are not authroised for this site');
             btn1.disabled=true;

             $('#vendor_main_add').prop('disabled',true);
             $('#vendor_main_continue').prop('disabled',true);
         }
	   
	   
} 

function GetVendorDetails() {
	  var asset_number1 = $("#asset_number1").val();

	  $.ajax({
	  		type : "POST",	
	  		url : api+"fetch_vendor",	
	  		data:{
	  			"asset_number":asset_number1	
	  		},
	  		dataType:"json",
	  		success : function(response) {
	  			
	  			console.log(response);
	    	 var totalrecords = response.length;
	    	 results = "";
	    	 resultsInside="";
	    
	    	 console.log(response);
	    	   $('#ShowVendorDataTable').DataTable( {
	    		        data: response, 
	    		      destroy: true, 
	    		        columns: [
	    		       //   { "data": "vendor_id" },
	    		          { "data": "process" },
	    		          { "data": "company" },
	    		          { "data": "poc" },
	    		          { "data": "ophone" },
	    		          { "data": "cphone" },
	    		          { "data": "email" },
	    		          { "data": "other" },
	    		          { "data": "component" },
	    		          { "data": "drawings" },
	    		          { "data": "partsOnHand" },
	    		          { "data": "servicesProvided" },
	    		          { "data": "priceQuote" },
	    		          { "data": "leadTime" },
	    		          { "data": "notes" },
	    		          { "data": "cvdata" }
	    		        ],
	    		      
	                  "rowCallback": function(row, data, index) {
	                  	$('td',row).click(function() {  
	                  		//alert('sdfsd'+data.asset_number);
	      		  		//	 $("#vendor_id2").val(data.vendor_id); 
	                  		 $("#process2").val(data.process);
	      		  			 $("#company2").val(data.company);
	      		  			 $("#poc2").val(data.poc);
	      		  			 $("#ophone2").val(data.ophone);
	      		  			 $("#cphone2").val(data.cphone);
	      		  			 $("#email2").val(data.email);
	      		  			 $("#other2").val(data.other);
	      		  			 $("#component2").val(data.component);
	      		  			 $("#drawings2").val(data.drawings);
	      		  			 $("#parts2").val(data.partsOnHand);
	      		  			 $("#services2").val(data.servicesProvided);
	      		  			 $("#price2").val(data.priceQuote);
	      		  			 $("#Ltime2").val(data.leadTime);
	      		  			 $("#notes2").val(data.notes);
	      		  			 $("#asset_number2").val(data.cvdata);
	      		  			 
	                  		 $('#VendorModal').modal('show');
	                  		 
	                  		 Disable_vendor_button();
	                  		 
	                  	});
	                   }  
	  	  	    });
	    		  $("#HideVendorDataTable").show();
	          },
	    });
	  	$('#vendordetails').show();
	 }
	 
/*  process pdf date:03/07/2019*/	 

/* end pdf */



/* print data */
function printDiv(divName){
			var printContents = document.getElementById(divName).innerHTML;
			var originalContents = document.body.innerHTML;
			document.body.innerHTML = printContents;
			window.print();
			document.body.innerHTML = originalContents;
			location. reload(true);
		}
		
function printData(divName){
	var printContents = document.getElementById(divName).innerHTML;
	var originalContents = document.body.innerHTML;
	document.body.innerHTML = printContents;
	window.print();
	document.body.innerHTML = originalContents;
	location. reload(true);
}


function getLinebySite() {

var x = $("#site_name").val();

$.ajax({
url : api + "fetch_line",
type : 'POST',
data : {
	"site" : x
},
success : function(response) {

	console.log(response);
	$('#line_id').empty();
	$('#line_id').append(
			$("<option></option>").attr("value", "-Select-").text(
					"-Select-"));
	$.each(response, function(key, value) {
		for (var i = 0; i < value.length; i++) {
			$('#line_id').append(
					$("<option></option>").attr("value", status).text(
							value[i]));

		}
	});
}
});

DisplayCVPTracker1();
$("#example").show();

}

function getLinebySite_dyanamic() {

	var x = $("#site option:selected").text();

	$.ajax({
	url : api + "fetch_line__dynamic",
	type : 'POST',
	data : {
		"site" : x
	},
	success : function(response) {

		console.log(response);
		$('#line_id').empty();
		$('#line_id').append(
				$("<option></option>").attr("value", "-Select-").text(
						"-Select-"));
		$.each(response, function(key, value) {
			for (var i = 0; i < value.length; i++) {
				$('#line').append(
						$("<option></option>").attr("value", status).text(
								value[i]));

			}
		});
	}
	});


	}

function getLinebySite1() {

var x = $("#site option:selected").text();
$.ajax({
url : api + "fetch_line",
type : 'POST',
data : {
	"site" : x
},
success : function(response) {
	$('#line').empty();
	$('#line').append(
			$("<option></option>").attr("value", "-Select-").text(
					"-Select-"));
	$.each(response, function(key, value) {
		for (var i = 0; i < value.length; i++) {
			$('#line').append(
					$("<option></option>").attr("value", status).text(
							value[i]));

		}
	});
}
});

}

function DisplayCVPTracker1() {
	var x = $("#site_name").val();

$(".preloader1").show();
$.ajax({
type : "POST",
url : api + "fetch_process_by_site",
data : {
	"site" : x
},
dataType : "json",
success : function(response) {
	
	 $(".preloader1").hide();

	 console.log(response);
	
	var result = response.AttendanceOverview;

	  $('#example1').DataTable({
		        data: response,
		      dom: 'Blfrtip',
		      destroy: true, 
		      buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ],
	        
	      "columnDefs": [
          {
              "targets": [ 4,5,6,8,9,10,11,12,13,14,15,16,17,18,21,22,23,24,26 ],
              "visible": false
          }
      ], 
      
	      columns: [
	    	
	    	  {"data":"serialNo" },
  	    	{ "data": "site" },
          { "data": "line" },
          { "data": "asset_number" },
          { "data": "eam_criticality" },
          { "data": "tag_finance" },
          { "data": "process_name" },
          { "data": "sub_process" },
          { "data": "location_plant" },
          { "data": "third_party" },
          { "data": "failure_mode" },
          { "data": "customers_plants" },
          { "data": "units_production" },
          { "data": "minimumdays_inventory_onsite" },
          { "data": "minimumdays_inventory_remote" },
          { "data": "backup_process" },
          { "data": "backupprocess_manual" },
          { "data": "desc_location" },
          { "data": "days_init_backup" },
          { "data": "capacity_recovered" }, 
          { "data": "alternative_source" },
          { "data": "outsourcing_supplier" },
          { "data": "percent_capacity" }, 
          { "data": "days_alternatesource" },
          { "data": "days_alternate" }, 
          { "data": "normal_leadtime" }, 
         { "data": "days_replace" },
        { "data": "cost_replacement" },
        { "data": "impact" }, 
        { "data": "crictical_reasoning" }
        ],
      "rowCallback": function(row, data, index) {
    	  $('td',row).click(function() {  

    		  $('.oem_update_data').html("");

    	if(data.oem_vendor == null)
        	{
				data.oem_vendor="";
        	}

    	if(data.outsourcing_supplier == null)
    	{
			data.oem_vendor="";
    	}
    	

    	localStorage.setItem("it_vendor",data.third_party);	  
      	localStorage.setItem("oem_size",data.oem_vendor.split(',').length);
    	localStorage.setItem("outsourcing_size",data.outsourcing_supplier.split(',').length);
    	localStorage.setItem('oem_supplier',data.oem_vendor);
    	localStorage.setItem('outsorcing_supplier',data.outsourcing_supplier);
		console.log(localStorage.getItem("outsourcing_size")+'-'+localStorage.getItem("oem_size"));
    	
    	
		var a=0; var b=0; var c=0; var d=1;
      	
      	for(var i=0;i<data.oem_vendor.split(',').length;i++){
      		
			$(".oem_update_data").append("<div class='col-md-offset-2 col-md-10'style='border: 2px solid #0d6cbd;padding: 23px;margin-bottom: 10px;'><div class='form-group'><label for='usr' style='color:#a606e8'>"+d+++".Original Equipment Manufacturer(OEM) Vendor Name :</label><input type='text' class='form-control' id='oem_vendor1"+i+"'  value='"+data.oem_vendor.split(',')[i]+"'></div> <div class='form-group'><label for='usr'>Normal Lead time in Production days to Replace Equipment/Process/Sub-Process  (Consider longest lead time component) :</label><input type='text' class='form-control' id='normal_leadtime1"+i+"' value='"+data.normal_leadtime.split(',')[a]+"'></div><div class='form-group'><label for='usr'>Number of days to Replace Equipment on Expedited Basis:</label><input type='text' class='form-control' id='days_replace1"+i+"'  value='"+data.days_replace.split(',')[b]+"'></div><div class='form-group'><label for='usr'>Cost for Total Replacement:</label><input type='text' class='form-control' id='cost_replacement1"+i+"'  value='"+data.cost_replacement.split(',')[c]+"'></div></div>");

			if(data.normal_leadtime.split(',').length == '1')
			{}
		else{a++;}
			if(data.days_replace.split(',').length == '1')
			{}
		else{b++;}
			if(data.cost_replacement.split(',').length == '1')
			{}
		else{c++;}
	
      	}

      	 $('.outsourcing_supplier_update_data').html("");

      	var p=0; var q=0; var r=0; var s=1;
for(var j=0;j<data.outsourcing_supplier.split(',').length;j++){
      		
			$(".outsourcing_supplier_update_data").append("<div class='col-md-offset-2 col-md-10' style='border: 2px solid #0d6cbd;padding: 23px;margin-bottom: 10px;'><div class='outsource'><div class='form-group'><label for='usr' style='color:#1307da'>"+s+++".Outsourcing Supplier(s):</label><input type='text' class='form-control' id='outsourcing_supplier1"+j+"' value='"+data.outsourcing_supplier.split(',')[j]+"'></div><div class='form-group'><label for='sel1'>Percent of Capacity that could be outsourced :</label><input type=text class='form-control' id='percent_capacity1"+j+"' value='"+data.percent_capacity.split(',')[p]+"'></input></div><div class='form-group'><label for='usr'>Number of days required to transition to alternate source:</label><input type='text' class='form-control' id='days_alternatesource1"+j+"' value='"+data.days_alternatesource.split(',')[q]+"'></div><div class='form-group'><label for='usr'>Number of days Alternate Source is Available:</label><input type='text' class='form-control' id='days_alternate1"+j+"' value='"+data.days_alternate.split(',')[r]+"'></div></div></div>");

			if(data.percent_capacity.split(',').length == '1')
			{}
		else{p++;}
			if(data.days_alternatesource.split(',').length == '1')
			{}
		else{q++;}
			if(data.days_alternate.split(',').length == '1')
			{}
		else{r++;}
	
      	}
			
      	
      	
      	$("#line_update").text(data.line);
      	$("#site_update").text(data.site);
      	
      		 $("#site_name1").val(data.site);
      		 $("#line_id1").val(data.line);
      		 $("#asset_number1").val(data.asset_number);
      		 $("#eam_criticality1").val(data.eam_criticality);
	  			 $("#tag_finance1").val(data.serialNo);
	  			 $("#process_name1").val(data.process_name);
	  			 $("#sub_process1").val(data.sub_process);
	  			 $("#location_plant1").val(data.location_plant);
		 
	  	
		  			$("#third_party1").val(data.third_party);
		  		
	  			 $("#failure_mode1").val(data.failure_mode);
	  			 $("#third_party_router1").val(data.third_party_router);
	  			$("#third_party_machine1").val(data.third_party_machine);
	  			 $("#customers_plants1").val(data.customers_plants);
	  			 $("#units_production1").val(data.units_production);
	  			 $("#minimumdays_inventory_onsite1").val(data.minimumdays_inventory_onsite);
	  			 $("#minimumdays_inventory_remote1").val(data.minimumdays_inventory_remote);
	  		
	  			if(data.backup_process.toUpperCase().replace(/[^a-zA-Z0-9 ]/g, "") == 'YESONSITE'){
	  				
	  			 $("#backup_process1").val("Yes-On-Site");
	  			}
	  			else if(data.backup_process.toUpperCase().replace(/[^a-zA-Z0-9 ]/g, "") == 'YESOFFSITE'){
	  				
	  			 $("#backup_process1").val("Yes-Off-Site");
	  			}
	  			else{
	  			$("#backup_process1").val('None');
	  			}
	  			
	  			 $("#backupprocess_manual1").val(data.backupprocess_manual);
	  			 $("#desc_location1").val(data.desc_location);
	  			 $("#days_init_backup1").val(data.days_init_backup);
	  			 $("#capacity_recovered1").val(data.capacity_recovered);
	  			 $("#outsourcing_supplier1").val(data.outsourcing_supplier);
	  			 $("#percent_capacity1").val(data.percent_capacity);
	  			 $("#days_alternatesource1").val(data.days_alternatesource);
	  			 $("#days_alternate1").val(data.days_alternate);
	  			 $("#normal_leadtime1").val(data.normal_leadtime);
	  			$("#oem_vendor1").val(data.oem_vendor);
	  			 $("#days_replace1").val(data.days_replace);
	  			 $("#cost_replacement1").val(data.cost_replacement);
	  			 $("#impact1").val(data.impact);
	  			 $("#crictical_reasoning1").val(data.crictical_reasoning);
	  			 $("#alternative_source1").val(data.alternative_source);



      		 $('#addModal').modal('show');
      		 $('#pdf_process').hide();
      		 
      		if($("#backup_process1").val() =='Yes-On-Site' || $("#backup_process1").val() =='Yes-Off-Site') {
				
              $('.BackUp1').show();
			}
			else{
			  $('.BackUp1').hide();
			}
      		Disable_button();
    		

      	});
       }
	     });
	 $("#example").hide();
	 $("#example_wrapper").hide();
	 $("#example1").show();
	 

	 
   },
});
}


function getCVPbyLine() {
	var x = $("#site_name").val();
var y = $("#line_id option:selected").text();

$(".preloader1").show();

$.ajax({
type : "POST",
url : api + "fetch_process_by_site_line",
data : {
	"site" : x,
	"line" : y

},
dataType : "json",
	success : function(response) {
		
		 $(".preloader1").hide();

		 console.log(response);
		
		var result = response.AttendanceOverview;

		  $('#example1').DataTable({
  		        data: response,
  		       dom: 'Blfrtip',
  		      destroy: true, 
  		      buttons: [
  	            'copy', 'csv', 'excel', 'pdf', 'print'
  	        ],
  	        
  	      "columnDefs": [
              {
                  "targets": [ 4,5,6,8,9,10,11,12,13,14,15,16,17,18,21,22,23,24,26 ],
                  "visible": false
              }
          ], 
          
  	      columns: [
  	    	
  	    	 {"data":"serialNo" },
	  	    	{ "data": "site" },
	          { "data": "line" },
	          { "data": "asset_number" },
	          { "data": "eam_criticality" },
	          { "data": "tag_finance" },
	          { "data": "process_name" },
	          { "data": "sub_process" },
	          { "data": "location_plant" },
	          { "data": "third_party" },
	          { "data": "failure_mode" },
	          { "data": "customers_plants" },
	          { "data": "units_production" },
	          { "data": "minimumdays_inventory_onsite" },
	          { "data": "minimumdays_inventory_remote" },
	          { "data": "backup_process" },
	          { "data": "backupprocess_manual" },
	          { "data": "desc_location" },
	          { "data": "days_init_backup" },
	          { "data": "capacity_recovered" }, 
	          { "data": "alternative_source" },
	          { "data": "outsourcing_supplier" },
	          { "data": "percent_capacity" }, 
	          { "data": "days_alternatesource" },
              { "data": "days_alternate" }, 
              { "data": "normal_leadtime" }, 
             { "data": "days_replace" },
            { "data": "cost_replacement" },
            { "data": "impact" }, 
            { "data": "crictical_reasoning" }
	        ],
          "rowCallback": function(row, data, index) {
          	$('td',row).click(function() {  
          	//	 alert('sdfsd'+data.asset_number);
          	
          	
          		 $('.oem_update_data').html("");

          		if(data.oem_vendor == null)
            	{
    				data.oem_vendor="";
            	}

        	if(data.outsourcing_supplier == null)
        	{
    			data.oem_vendor="";
        	}

        		localStorage.setItem("it_vendor",data.third_party);	  
                localStorage.setItem("oem_size",data.oem_vendor.split(',').length);
            	localStorage.setItem("outsourcing_size",data.outsourcing_supplier.split(',').length);
            	localStorage.setItem('oem_supplier',data.oem_vendor);
            	localStorage.setItem('outsorcing_supplier',data.outsourcing_supplier);
        		console.log(localStorage.getItem("outsourcing_size")+'-'+localStorage.getItem("oem_size"));
             	
         		var a=0; var b=0; var c=0; var d=1;
               	
               	for(var i=0;i<data.oem_vendor.split(',').length;i++){
               		
         			$(".oem_update_data").append("<div class='col-md-offset-2 col-md-10'style='border: 2px solid #0d6cbd;padding: 23px;margin-bottom: 10px;'><div class='form-group'><label for='usr' style='color:#a606e8'>"+d+++".Original Equipment Manufacturer(OEM) Vendor Name :</label><input type='text' class='form-control' id='oem_vendor1"+i+"'  value='"+data.oem_vendor.split(',')[i]+"'></div> <div class='form-group'><label for='usr'>Normal Lead time in Production days to Replace Equipment/Process/Sub-Process  (Consider longest lead time component) :</label><input type='text' class='form-control' id='normal_leadtime1"+i+"' value='"+data.normal_leadtime.split(',')[a]+"'></div><div class='form-group'><label for='usr'>Number of days to Replace Equipment on Expedited Basis:</label><input type='text' class='form-control' id='days_replace1"+i+"'  value='"+data.days_replace.split(',')[b]+"'></div><div class='form-group'><label for='usr'>Cost for Total Replacement:</label><input type='text' class='form-control' id='cost_replacement1"+i+"'  value='"+data.cost_replacement.split(',')[c]+"'></div></div>");

         			if(data.normal_leadtime.split(',').length == '1')
         			{}
         		else{a++;}
         			if(data.days_replace.split(',').length == '1')
         			{}
         		else{b++;}
         			if(data.cost_replacement.split(',').length == '1')
         			{}
         		else{c++;}
         	
               	}

               	 $('.outsourcing_supplier_update_data').html("");

               	var p=0; var q=0; var r=0; var s=1;
         for(var j=0;j<data.outsourcing_supplier.split(',').length;j++){
               		
         			$(".outsourcing_supplier_update_data").append("<div class='col-md-offset-2 col-md-10' style='border: 2px solid #0d6cbd;padding: 23px;margin-bottom: 10px;'><div class='outsource'><div class='form-group'><label for='usr' style='color:#1307da'>"+s+++".Outsourcing Supplier(s):</label><input type='text' class='form-control' id='outsourcing_supplier1"+j+"' value='"+data.outsourcing_supplier.split(',')[j]+"'></div><div class='form-group'><label for='sel1'>Percent of Capacity that could be outsourced :</label><input type=text class='form-control' id='percent_capacity1"+j+"' value='"+data.percent_capacity.split(',')[p]+"'></input></div><div class='form-group'><label for='usr'>Number of days required to transition to alternate source:</label><input type='text' class='form-control' id='days_alternatesource1"+j+"' value='"+data.days_alternatesource.split(',')[q]+"'></div><div class='form-group'><label for='usr'>Number of days Alternate Source is Available:</label><input type='text' class='form-control' id='days_alternate1"+j+"' value='"+data.days_alternate.split(',')[r]+"'></div></div></div>");

         			if(data.percent_capacity.split(',').length == '1')
         			{}
         		else{p++;}
         			if(data.days_alternatesource.split(',').length == '1')
         			{}
         		else{q++;}
         			if(data.days_alternate.split(',').length == '1')
         			{}
         		else{r++;}
         	
               	}
         			
          	
          	
          		$("#line_update").text(data.line);
          		$("#site_update").text(data.site);
              	
          		 $("#site_name1").val(data.site);
          		 $("#line_id1").val(data.line);
          		 $("#asset_number1").val(data.asset_number);
          		 $("#eam_criticality1").val(data.eam_criticality);
		  			 $("#tag_finance1").val(data.serialNo);
		  			 $("#process_name1").val(data.process_name);
		  			 $("#sub_process1").val(data.sub_process);
		  			 $("#location_plant1").val(data.location_plant);
		  			$("#third_party1").val(data.third_party);
		  			 $("#third_party_router1").val(data.third_party_router);
			  		 $("#third_party_machine1").val(data.third_party_machine);
		  			 $("#failure_mode1").val(data.failure_mode);
		  			 $("#customers_plants1").val(data.customers_plants);
		  			 $("#units_production1").val(data.units_production);
		  			 $("#minimumdays_inventory_onsite1").val(data.minimumdays_inventory_onsite);
		  			 $("#minimumdays_inventory_remote1").val(data.minimumdays_inventory_remote);
		  			 
		  			if(data.backup_process.toUpperCase().replace(/[^a-zA-Z0-9 ]/g, "") == 'YESONSITE'){
		  				
			  			 $("#backup_process1").val("Yes-On-Site");
			  			}
			  			else if(data.backup_process.toUpperCase().replace(/[^a-zA-Z0-9 ]/g, "") == 'YESOFFSITE'){
			  				
			  			 $("#backup_process1").val("Yes-Off-Site");
			  			}
			  			else{
			  			$("#backup_process1").val('None');
			  				
			  			}
		  			$("#oem_vendor1").val(data.oem_vendor);
		  			 $("#backupprocess_manual1").val(data.backupprocess_manual);
		  			 $("#desc_location1").val(data.desc_location);
		  			 $("#days_init_backup1").val(data.days_init_backup);
		  			 $("#capacity_recovered1").val(data.capacity_recovered);
		  			 $("#outsourcing_supplier1").val(data.outsourcing_supplier);
		  			 $("#percent_capacity1").val(data.percent_capacity);
		  			 $("#days_alternatesource1").val(data.days_alternatesource);
		  			 $("#days_alternate1").val(data.days_alternate);
		  			 $("#normal_leadtime1").val(data.normal_leadtime);
		  			 $("#days_replace1").val(data.days_replace);
		  			 $("#cost_replacement1").val(data.cost_replacement);
		  			 $("#impact1").val(data.impact);
		  			 $("#crictical_reasoning1").val(data.crictical_reasoning);
		  			 $("#alternative_source1").val(data.alternative_source);
		  			 
          		 $('#addModal').modal('show');
          		 $('#pdf_process').hide();
          		 
          		if($("#backup_process1").val() =='Yes-On-Site' || $("#backup_process1").val() =='Yes-Off-Site') {
    				
                  $('.BackUp1').show();
    			}
    			else{
    			  $('.BackUp1').hide();
    			}
          		  Disable_button();
          
          	});
           }
  	     });
		 $("#example").hide();
		 $("#example_wrapper").hide();
		 $("#example1").show();
		 

		 
	   },
	});
}

function GetVendorDetails12()
{
	$(".venodr").show();
}

function GetVendorDetails1(a) {

	//alert(a);
	
var asset_number1 = $("#asset_number1").val();
$.ajax({
		type : "POST",	
		url : api+"fetch_vendor_by_name",	
		data:{
			"asset_number":asset_number1,
			"vendor_name":a
		},
		dataType:"json",
		success : function(response) {
			
			console.log(response);
  	 var totalrecords = response.length;
  	 results = "";
  	 resultsInside="";
  
  	 console.log(response);
  	 
  	var table =  $('#ShowVendorDataTable').DataTable( {
  		        data: response, 
  		      destroy: true, 
  		      
  		        columns: [
  		       //   { "data": "vendor_id" },
  		          { "data": "process" },
  		          { "data": "company" },
  		          { "data": "poc" },
  		          { "data": "ophone" },
  		          { "data": "cphone" },
  		          { "data": "email" },
  		          { "data": "other" },
  		          { "data": "component" },
  		          { "data": "drawings" },
  		          { "data": "partsOnHand" },
  		          { "data": "servicesProvided" },
  		          { "data": "priceQuote" },
  		          { "data": "leadTime" },
  		          { "data": "notes" },
  		          { "data": "cvdata" }
  		        ],
  		      
                "rowCallback": function(row, data, index) {
                	$('td',row).click(function() {  
                		//alert('sdfsd'+data.asset_number);
    		  		//	 $("#vendor_id2").val(data.vendor_id); 
                		 $("#process2").val(data.process);
    		  			 $("#company2").val(data.company);
    		  			 $("#poc2").val(data.poc);
    		  			 $("#ophone2").val(data.ophone);
    		  			 $("#cphone2").val(data.cphone);
    		  			 $("#email2").val(data.email);
    		  			 $("#other2").val(data.other);
    		  			 $("#component2").val(data.component);
    		  			 $("#drawings2").val(data.drawings);
    		  			 $("#parts2").val(data.partsOnHand);
    		  			 $("#services2").val(data.servicesProvided);
    		  			 $("#price2").val(data.priceQuote);
    		  			 $("#Ltime2").val(data.leadTime);
    		  			 $("#notes2").val(data.notes);
    		  			 $("#asset_number2").val(data.cvdata);
    		  			 
                		 $('#VendorModal').modal('show');
                		 
                		 Disable_vendor_button();
                		 
                	});
                 }  
	  	    });

  	/*  var domain, domains = []
  	table.rows().every(function(rowIdx, tableLoop, rowLoop) {
  		domain = this.data().company;
  	  if (~domains.indexOf(domain)) {
  	    this.nodes().to$().attr('excluded', 'true')
  	  } else {
  	    domains.push(domain) 
  	  }
  	})

  	$.fn.dataTable.ext.search.push(function(settings, data, dataIndex) {
  	   return table.row(dataIndex).nodes().to$().attr('excluded') != 'true'
  	})

  	table.draw() */
	    
  		  $("#HideVendorDataTable").show();
        },
  });
	$('#vendordetails').show();
}




function DeleteVendor() {

var a=document.getElementById("asset_number2").value;
var b=document.getElementById("company2").value;
if (confirm("Are you sure you want to delete the vendor?")){
	 $.ajax({
  type: 'DELETE',  
  dataType:"json",
	  url : api+"delete_vendor_by_update",
	  data : {
		"asset_number":a,
		"company":b
	  },
	  success : function(response) {
	   var myJSON = JSON.stringify(response);
	 }
});
}
document.forms["VendorUpdate"].submit();
return false;
}


function DeleteCVPData(){

var a=document.getElementById("asset_number1").value;
var b=document.getElementById("site_name1").value;
var c=document.getElementById("line_id1").value;

// alert(a+"-"+"-"+b+"-"+c);

if (confirm("Are you sure?")){
$.ajax({
  type: 'DELETE',  
dataType: 'json',  
	  url :api+"delete_cv_data",
	  data : {
	  		  "site":b,
	  		  "line":c,
	  		  "asset_number":a
	  },
	  success : function(response) {
		
	}
});

alert("Deleted Successfully..!!");
window.location.reload();

}
}

function InactiveCVPData(){

  var a=document.getElementById("asset_number1").value;
  var b=document.getElementById("site_name1").value;
  var c=document.getElementById("line_id1").value;
  
 // alert(a+"-"+"-"+b+"-"+c);
  
  if (confirm("Do you Want to In-Active...?")){
  $.ajax({
	  type: 'PUT',  
 dataType: 'json',  
  	  url :api+"in_active_cv_data",
  	  data : {
		  		  "site":b,
		  		  "line":c,
		  		  "asset_number":a
  	  },
  	  success : function(response) {
  		  
  		
  	}
  });
  
  alert("In-Activated Successfully....");
	window.location.reload();
	
  }

	
}





function add_vendor_data123() {
	
	  $('#myModal').show();
	
	}
	





function InsertBCPInputs1() {
console.log($("#site option:selected").text());
console.log($("#line option:selected").text())

if($("#site option:selected").text() =='' || $("#site option:selected").text()==null)
{
	$('#site').css('border-color', 'red');
	alert('enter all mandatory fields');
$("#site").focus();

return true;		
}
else {
    $('#site').css('border-color', '');
}
	if($("#line option:selected").text()=='' || $("#line option:selected").text() == "Select")
	{
		$('#line').css('border-color', 'red');
		alert('enter all mandatory fields');
		$("#line").focus();
		
	return true;		
	}
	else {
	    $('#line').css('border-color', '');
	}

	if($("#asset_number").val()=='' || $("#asset_number").val()==null)
	{
		
		$('#asset_number').css('border-color', 'red');
		alert('enter all mandatory fields');
		$("#asset_number").focus();
		
	return true;		
	}
	else {
	    $('#asset_number').css('border-color', '');
	}

	if($("#tag_finance").val()=='' || $("#tag_finance").val()==null)
	{
		
		$('#tag_finance').css('border-color', 'red');
		alert('enter all mandatory fields');
		$("#tag_finance").focus();
	return true;		
	}
	else {
	    $('#tag_finance').css('border-color', '');
	}

	if($("#minimumdays_inventory_onsite").val()=='' || $("#minimumdays_inventory_onsite").val()==null)
	{
	
		$('#minimumdays_inventory_onsite').css('border-color', 'red');
		alert('enter all mandatory fields');
		$("#minimumdays_inventory_onsite").focus();
	return true;		
	}
	else {
	    $('#minimumdays_inventory_onsite').css('border-color', '');
	}
	if($("#minimumdays_inventory_remote").val()=='' || $("#minimumdays_inventory_remote").val()==null)
	{
	
		$('#minimumdays_inventory_remote').css('border-color', 'red');
		alert('enter all mandatory fields');
		$("#minimumdays_inventory_remote").focus();
	return true;		
	}
	else {
	    $('#minimumdays_inventory_remote').css('border-color', '');
	}
	if($("#backup_process").val()=='' || $("#backup_process").val()== "Select")
	{
	
		$('#backup_process').css('border-color', 'red');
		alert('enter all mandatory fields');
		$("#backup_process").focus();
	return true;		
	}
	else {
	    $('#backup_process').css('border-color', '');
	}

	if($("#customers_plants").val()=='' || $("#customers_plants").val()== "Select")
	{
	
		$('#customers_plants').css('border-color', 'red');
		alert('enter all mandatory fields');
		$("#customers_plants").focus();
	return true;		
	}
	else {
	    $('#customers_plants').css('border-color', '');
	}

	if($("#units_production").val()=='' || $("#units_production").val()== "Select")
	{
	
		$('#units_production').css('border-color', 'red');
		alert('enter all mandatory fields');
		$("#units_production").focus();
	return true;		
	}
	else {
	    $('#units_production').css('border-color', '');
	}

	if($("#impact").val()=="Vital - loss of the process, sub-process, or component could interrupt assembly/production for two or more weeks"   &&  $("#crictical_reasoning").val() ==''){

alert('please Provide the reason....');	
return true;
}

if($("#impact").val()=="Critical - loss will interrupt production for 2 days to 2 weeks" && $("#crictical_reasoning").val() =='')
{
alert('please Provide the reason....');	
return true;
}


validate();


var $form = $("#myForm");
var unindexed_array = $form.serializeArray();
var indexed_array = {};

$.map(unindexed_array, function(n, i){
indexed_array[n['name']] = n['value'];
});

//var a=JSON.stringify(indexed_array);
var a=indexed_array;
console.log(a);
a.site=$("#site option:selected").text();
a.line=$("#line option:selected").text();
var b=JSON.stringify(a);
console.log(b);
$(".preloader1").show();
$.ajax({
url : api + "add",
type: 'POST',
data: b,
contentType: 'application/json; charset=utf-8',
success : function(response) {
  
	alert("Process Added Successfully....");  
  $(".preloader1").hide();
 
	  window.location.reload();
	
 
  
}

})

}


function validate() {
var asset = document.getElementById("asset_number").value;
if(asset==''){
asset=document.getElementById("asset_number1").value;
}

//alert(asset);
document.getElementById('myModal').style.display ='none';
var valid = true;

/* if ($('#asset_number2').val() == '') {
valid = false;
alert(rei);
}  */

if( valid == false){
alert("Please Enter All the Required Fields or else u might have forgotton to give Asset ID..!!");
return false;
}

else{

}
var $form = $("#VendorData");
var unindexed_array = $form.serializeArray();
var indexed_array = {};

$.map(unindexed_array, function(n, i){
    indexed_array[n['name']] = n['value'];
});

var a1=JSON.stringify(indexed_array);
console.log(a1);

$.ajax({
url : api + "add_vendor",
  type: 'POST',
  data: a1,
  contentType: 'application/json; charset=utf-8'
})


// document.forms["VendorData"].submit();
alert("Vendor Details Added Successfully..!");
//window.location.reload();
}
function Data()
{


var singleFileUploadInput = document.querySelector('#file');
var files = singleFileUploadInput.files;

if(files.length === 0) {
 
 alert('please Select a File....!');
}
else{
uploadSingleFile(files[0]);
uploadSingleFile12(files[0]);
uploadSingleFile13(files[0]);

/* $("#preloader").show();*/
$(".preloader1").show();
}

}

function uploadSingleFile(file) { 
var formData = new FormData();
formData.append("file", file);

var xhr = new XMLHttpRequest();
xhr.open("POST", "/BCP/sheet_upload");

xhr.onreadystatechange = function() { 

	if (this.readyState == XMLHttpRequest.DONE && this.status == 200 || this.readyState == XMLHttpRequest.DONE && this.status == 504) {
    	 $(".preloader1").hide();
    	alert('Data Addedd...!');
       
        window.location.reload();
       
    }

    if (this.status == 504) {
   	 $(".preloader1").hide();
   		alert('Data Addedd...!');
      
       window.location.reload();  
   		}
 
  if(this.readyState == XMLHttpRequest.DONE && this.status == 500)
	  {
	  
        	alert('Error Occured..!, Please Check File Once');
        	$(".preloader1").hide();
      
	  }
    }
xhr.send(formData);
} 

function uploadSingleFile12(file) { 
	var formData = new FormData();
	formData.append("file", file);

	var xhr = new XMLHttpRequest();
	xhr.open("POST", "/BCP/sheet_upload_vendor");

	xhr.onreadystatechange = function() { 

		if (this.readyState == XMLHttpRequest.DONE && this.status == 200 || this.readyState == XMLHttpRequest.DONE && this.status == 504) {
	    	alert('Vendor Data Addedd...!');
 	    }
	 
	  if(this.readyState == XMLHttpRequest.DONE && this.status == 500)
		  {
		        alert('Error Occured in Suppliers Sheet..!, Please Check File Once');
	      }
	    }
	xhr.send(formData);
	} 

function uploadSingleFile13(file) { 
	var formData = new FormData();
	formData.append("file", file);

	var xhr = new XMLHttpRequest();
	xhr.open("POST", "/BCP/sheet_upload_for_compares");

	xhr.onreadystatechange = function() { 
	    }
	xhr.send(formData);
	} 

function getserachdata(){
var searchbar = $("#searchbar").val();

$.ajax({
		type : "POST",	
		data : {
  		"asset_number": searchbar
  		},
		url : api+"search",			
		dataType:"json",
		success : function(response) {
			
			console.log(response);
			var totalrecords = response.length;
			
			  	 results = "";
			  	 resultsInside="";
			  
			//  	 console.log(response);
			  	 
				  $('#search_result').DataTable({
		  		        data: response,

		  		        destroy: true, 
		  	  
		  	      columns: [
		  	    	
	  		          { "data": "site" },
	  		          { "data": "line" },
	  		          { "data": "asset_number" },
	  		          { "data": "process_name" },
	  		          { "data": "sub_process" }
	  		          
	  		        ],
	  		     "rowCallback": function(row, data, index) {
	              	$('td',row).click(function() {  
	              	//	 alert('sdfsd'+data.asset_number);
	              		 $("#site_name1").val(data.site);
	              		 $("#line_id1").val(data.line);
	              		 $("#asset_number1").val(data.asset_number);
	              		 $("#eam_criticality1").val(data.eam_criticality);
	  		  			 $("#tag_finance1").val(data.searialNo);
	  		  			 $("#process_name1").val(data.process_name);
	  		  			 $("#sub_process1").val(data.sub_process);
	  		  			 $("#location_plant1").val(data.location_plant);
	  		  			 $("#third_party1").val(data.third_party);
	  		  			 $("#failure_mode1").val(data.failure_mode);
	  		  			 $("#customers_plants1").val(data.customers_plants);
	  		  			 $("#units_production1").val(data.units_production);
	  		  			 $("#minimumdays_inventory_onsite1").val(data.minimumdays_inventory_onsite);
	  		  			 $("#minimumdays_inventory_remote1").val(data.minimumdays_inventory_remote);
	  		  			 $("#backup_process1").val(data.backup_process);
	  		  			 $("#backupprocess_manual1").val(data.backupprocess_manual);
	  		  			 $("#desc_location1").val(data.desc_location);
	  		  			 $("#days_init_backup1").val(data.days_init_backup);
	  		  			 $("#capacity_recovered1").val(data.capacity_recovered);
	  		  			 $("#outsourcing_supplier1").val(data.outsourcing_supplier);
	  		  			 $("#percent_capacity1").val(data.percent_capacity);
	  		  			 $("#days_alternatesource1").val(data.days_alternatesource);
	  		  			 $("#days_alternate1").val(data.days_alternate);
	  		  			 $("#normal_leadtime1").val(data.normal_leadtime);
	  		  			//$("#oem_vendor1").val(data.oem_vendor);
	  		  			 $("#days_replace1").val(data.days_replace);
	  		  			 $("#cost_replacement1").val(data.cost_replacement);
	  		  			 $("#impact1").val(data.impact);
	  		  			 $("#crictical_reasoning1").val(data.crictical_reasoning);
	  		  			 //$("#site_name1").val(data.site_name);
	  		  			 
  	              	 $('#printdata').show();
  	              	 $(".report-footer").show();
  	              	 $("#process").text(data.process_name);
	              	    // $("#impact-rating").text(data.impact);
	                     $("#sub-process").text(data.sub_process);

	                     
                   var capasicty = parseInt(data.capacity_recovered);     
              		var a=data.days_init_backup;
	                     if(data.backup_process.toUpperCase().replace(/[^a-zA-Z0-9 ]/g, "") == 'YESONSITE' && capasicty >= 80 && a=="Less than 2 days") {
		                    
	              		 $("#impact-rating").text('Deferrable');	
							$("#additional_mitigation_needed").text('No');	
		                     }

	                     
	                     
	                     else{
		 
	                    	 $("#impact-rating").text('Non-Deferrable');
	                    		$("#additional_mitigation_needed").text('Yes');	
		                     }

	                    if(capasicty == 100){
							$('.capacity_recovery').hide();
	                    }
	                    else{
	                           $('.capacity_recovery').show();
		                    }
	                     
	                     $("#capacity1").text(data.capacity_recovered);
	                     $("#recom-location1").text(data.desc_location);
	                     $("#recom1").text(data.desc_location);
	                     
	                     
	                     
	                     $("#eam").text(data.serialNo);
  	              	     $("#location").text(data.location_plant);
	              	     $("#eam_serial").text(data.asset_number);
	                     $("#criticality").text(data.eam_criticality);
	                     $("#customers").text(data.customers_plants);
	                    $("#total-downtime1").text(data.days_init_backup);
	                     var x = parseFloat(data.minimumdays_inventory_remote);
	                     var y = parseFloat(data.minimumdays_inventory_onsite);
	                     var z = x+y;
  	              	     $("#si-units").text(z + " " +'Days');
	              	     $("#failure-mode").text(data.failure_mode);
	                     $("#impact-reasoning").text(data.impact);

	               		$("#units-per-day1").text(data.units_production);

$(function(){

 	var abc=0; var a=0; var b=0; var c=0; var d=0; var kal=0;
	//alert(data.oem_vendor.split(',').length);
	for(var j=0;j<data.oem_vendor.split(',').length;j++)
	{ 
		var eam_serial_no= data.asset_number;
		var company=data.oem_vendor.split(',')[j];
		
		
		$.ajax({
			type : "POST",	
			data : {
	  		"asset_number": eam_serial_no,
	  		"company": company
	  		},
			url : api+"search_vendor_poc_details",			
			dataType:"json",
			success : function(response) {
				console.log(response);
				//console.log(cde++);
		$( '.report1' ).append("<tr style='background-color:#85b4c8c7;' class='capacity_recovery'><th  class='col-md-12' colspan='3'><h6 style='position:relative;top:8px;color:red;'>2."+kal+++".Recommendation (Replacement- OEM or new vendor):  <span>"+data.oem_vendor.split(',')[abc++]+"</span></h6></th></tr><tr class='capacity_recovery'><td class='col-md-6'><strong>Location :</strong><span>"+response[0].notes+"</span></td> <td><strong>Normal Lead Time:</strong> <span>"+data.normal_leadtime.split(',')[a]+"</span></td><td><strong>Cost of Option: </strong> <span>"+data.cost_replacement.split(',')[b]+"</span></td></tr><tr class='capacity_recovery'><td class='col-md-6'><strong>POC :</strong> <span>"+response[0].poc+"</span></td><td rowspan='3'><strong>Lead Time Expedited:</strong> <span>"+data.days_replace.split(',')[c]+"</span></td><td rowspan='3'><strong>Replacement Cost: </strong><span >"+data.cost_replacement.split(',')[d]+"</span></td></tr><tr class='capacity_recovery'><td class='col-md-6'><strong>Phone :</strong> <span>"+response[0].cphone+' '+response[0].ophone+"</span></td></tr><tr class='capacity_recovery'><td class='col-md-6'><strong>Email :</strong> <span>"+response[0].email+"</span></td></tr>");

		if(data.normal_leadtime.split(',').length == '1')
			{}
		else{a++;}
			if(data.cost_replacement.split(',').length == '1')
			{}
		else{b++;}
			if(data.days_replace.split(',').length == '1')
			{}
		else{c++;}
			if(data.cost_replacement.split(',').length == '1')
			{}
		else{d++;}
		
			}
		});
	
		
	
	}
	
});

	               		$("#recom2").text(data.oem_vendor);
	               		
	               		$("#total-downtime2").text(data.normal_leadtime);
	               		$("#units-per-day2").text(data.cost_replacement);
	               		$("#capacity2").text(data.days_replace);
	               		$("#total-time2").text(data.cost_replacement);



	               		$(function(){

		               		var p=0;var q=0;var r=0;var s=0; var t=0;
		               		
	               			for(var i=0;i<data.outsourcing_supplier.split(',').length;i++)
	               			{ 
	               				var eam_serial_no= data.asset_number;
	               				var company=data.outsourcing_supplier.split(',')[i];
	               				//alert(eam_serial_no+'----'+company);
	               				
	               				$.ajax({
	               					type : "POST",	
	               					data : {
	               			  		"asset_number": eam_serial_no,
	               			  		"company": company
	               			  		},
	               					url : api+"search_vendor_poc_details",			
	               					dataType:"json",
	               					success : function(response) {

	               						//alert(data.days_alternatesource.split(',').length);
	               						
	               						$( '.report2' ).append("<tr style='background-color:#85b4c8c7;' class='capacity_recovery'><th  class='col-md-12' colspan='3'><h6 style='position:relative;top:8px;color:red;'>3."+p+++".Recommendation (Outsourcing- Supplier):  <span>"+data.outsourcing_supplier.split(',')[r++]+"</span></h6></th></tr><tr class='capacity_recovery'><td class='col-md-6'><strong>Location :</strong><span> "+response[0].notes+"</span></td> <td><strong>Percent of Capacity that can be Outsourced : </strong><span>"+data.percent_capacity.split(',')[t]+"</span></td><td><strong>Units Impacted Per Day : </strong><span>"+data.units_production+"</span></td></tr> <tr class='capacity_recovery'><td class='col-md-6'><strong>POC :</strong><span> "+response[0].poc+"</span></td><td><strong>Number of Days to Transition to Alternate Source : </strong><span>"+data.days_alternatesource.split(',')[q]+"</span></td><td><strong>Cost of Option : </strong><span id='cost-per-day3'></span></td></tr><tr class='capacity_recovery'><td class='col-md-6'><strong>Phone :</strong> <span> "+response[0].cphone+' '+response[0].ophone+"</span></td><td rowspan='3'><strong>Number of Days Alternate Source is Available : </strong><span>"+data.days_alternate.split(',')[s]+"</span></td><td rowspan='3'><strong>Replacement Cost: </strong><span ></span></td></tr><tr class='capacity_recovery'></tr><tr class='capacity_recovery'><td class='col-md-6'><strong>Email :</strong> <span>"+response[0].email+"</span></td></tr>");

	               						if(data.days_alternatesource.split(',').length == '1')
	               						{}
               						else{q++;}
	               						if(data.days_alternate.split(',').length == '1')
	               						{}
               						else{s++;}
	               						if(data.percent_capacity.split(',').length == '1')
	               						{}
               						else{t++;}
	               					
	               						
	               					}
	               				});
	               			
	               				
	               			
	               			}
	               			
	               		});
	               		

	               		$("#recom3").text(data.outsourcing_supplier);
	               		$("#capacity3").text(data.percent_capacity);
	               		$("#total-downtime3").text(data.days_alternate);
	               		$("#alternate-source3").text(data.days_alternatesource);
	               		//$("#total-time2").text(data.cost_replacement);
	                  
	              	});
	              	
	               }
				  });
		}    


  		
});


$("#myReport").on("hidden.bs.modal", function(){
		window.location.reload(true);   
});

}




function getInActiveData()
{
$.ajax({
		type : "POST",	
		url : api+"in_avtive_processes",			
		dataType:"json",
		data:{ "site": Site_original},
		success : function(response) {
			
			console.log(response);
			
			 
		  $('#inactive_result').DataTable({
  		        data: response,

  		        destroy: true, 
  	  
  	      columns: [
  	    	
		          { "data": "site" },
		          { "data": "line" },
		          { "data": "asset_number" },
		          { "data": "process_name" },
		          { "data": "sub_process" },
		          { "data": "serialNo" }
		        ],
		      "rowCallback": function(row, data, index) {
	              	$('td',row).click(function() {  
	             
	              	 $("#pdf_site_name1").text(data.site);
	              	
	               $("#pdf_line_name1").text(data.line);
	               $("#pdf_assest_number1").text(data.asset_number);
	               $("#pdf_eam_criticality1").text(data.eam_criticality);
	               $("#pdf_eam_cat_tag1").text(data.serialNo);
	               $("#pdf_process_name1").text(data.process_name);
	               $("#pdf_eam_desc1").text(data.desc_location);
	               $("#pdf_location1").text(data.location_plant);
	               $("#pdf_3rd_party1").text(data.third_party);
	               $("#pdf_failure_mode1").text(data.failure_mode);
	              // $("#pdf_plants_impacted1").text(data.site);
	               $("#pdf_units_production1").text(data.units_production);
	               $("#pdf_days_onsite1").text(data.minimumdays_inventory_onsite);
	               $("#pdf_days_manfactring1").text(data.minimumdays_inventory_remote);
	               $("#pdf_backup_process1").text(data.backup_process);
	               $("#pdf_outsourcing_supplier1").text(data.outsourcing_supplier);
	               $("#pdf_percent_capacity1").text(data.percent_capacity);
	               $("#pdf_days_transition1").text(data.days_alternatesource);
	               $("#pdf_days_alternative1").text(data.days_alternate);
	               $("#pdf_lead_time1").text(data.normal_leadtime);
	              // $("#pdf_replacement_equipment1").text(data.site);
	               $("#pdf_cost_replacement1").text(data.cost_replacement);
	               $("#pdf_impact1").text(data.impact);
	               //$("#pdf_vital_critical1").text(data.site);
  	              	 $('#pdf_inactive').show();
  	              	// $(".report-footer").show();

  	              	var site_name_select=data.site;
   	              	Inactive_hide(site_name_select);
	                  
	              	});
	              	
	               }
			
		  });
			
		}
})
}






function activeProcess()
{
var eamserialno = document.getElementById("pdf_assest_number1").innerText;
//alert(eamserialno);
$.ajax({
url : api + "get_process_end_date",
  type: 'POST',
  data:{
	  		"asset_number":eamserialno
  },
  			
  success : function(data4) {
	  console.log(data4);
	 // alert(data4);
	  $("#active_serial_num").text(eamserialno);
	  $("#active_end_date").text(data4);
	  
		
	}				
  			
})	

}


function removeActive() {

var eamserialno = document.getElementById("pdf_assest_number1").innerText;
 if (confirm("Are you sure?")) {
	 
	 $.ajax({
			method : "POST",
			url : api + "process_activate_with_eam",
			data:{
				asset_number:eamserialno
			}
				});
	 
	 alert('Eam-Active-end-Date has Removed Successfully.............');
	 alert('Process Activated Successfully...');
	window.location.reload();
    }
    return false;
}


$("#active_end").click(function(){
  $("#active_date").show();
});


function changeActive() {

 var a = document.getElementById('txtdate').value;

 var eamserialno = document.getElementById("pdf_assest_number1").innerText;

 $.ajax({
		method : "POST",
		url : api + "active_end_date_update_eam",
		data:{
			asset_number:eamserialno,
			date:a
		}
			});
 
 alert('Eam-Active-end-Date has Updated Successfully...');
 alert('Process Activated Successfully...');
window.location.reload();
 
}




function addVendorData2()
{
var asset=document.getElementById("asset_number1").value;
console.log("Assert Number is: "+asset);
alert( "press Submit/Update to Continue");
$.ajax({
url : api + "add_vendor_by_update_data",
type: 'POST',
data:{
  		"asset_number":asset
			},
})	
}

function UpdateVendorDetails(){

	
	
var $form = $("#VendorUpdate");
var unindexed_array = $form.serializeArray();
var indexed_array = {};

$.map(unindexed_array, function(n, i){
    indexed_array[n['name']] = n['value'];
});

var a2=JSON.stringify(indexed_array);

console.log(a2);

$.ajax({
url : api + "update_vendor_by_ready",
  type: 'POST',
  data: a2,
  contentType: 'application/json; charset=utf-8'
})


document.forms["VendorUpdate"].submit();
alert("Vendor Details updated Successfully..!!");
}


function UpdateCVPData(){

	if(localStorage.getItem("kalisha") == null)  
		{
		
		var str=localStorage.getItem("oem_size");
		var oem_ven=""; var oem_normal_lead=""; var oem_cost=""; var oem_days="";
		
		for(var i=0;i<str;i++)
			{
			if(!$("#oem_vendor1"+i).val())
			{}else{
		var a=$("#oem_vendor1"+i).val()+',';
		oem_ven+=a; }
		if(!$("#normal_leadtime1"+i).val())
			{}else{
		 var b=$("#normal_leadtime1"+i).val()+',';
		 oem_normal_lead+=b; }
		 if(!$("#cost_replacement1"+i).val())
			 {}else{
		 var c=$("#cost_replacement1"+i).val()+',';
		 oem_cost+=c; }
		 if(!$("#days_replace1"+i).val())
			 {}else{
		 var d=$("#days_replace1"+i).val()+',';
		 oem_days+=d; }
			}

		
	var $form = $("#AP1Edit");
	var unindexed_array = $form.serializeArray();
	var indexed_array = {};

	$.map(unindexed_array, function(n, i){
	indexed_array[n['name']] = n['value'];
	});

	var b=indexed_array;

	b.oem_vendor=oem_ven.substring(0, oem_ven.length - 1);
	b.normal_leadtime=oem_normal_lead.substring(0, oem_normal_lead.length - 1);
	b.cost_replacement=oem_cost.substring(0, oem_cost.length - 1);
	b.days_replace=oem_days.substring(0, oem_days.length - 1);

	
	//var a=JSON.stringify(indexed_array);
	//console.log(a);

		}
	else
		{
		
		var str=localStorage.getItem("kalisha");  
		var oem_ven=""; var oem_normal_lead=""; var oem_cost=""; var oem_days="";
		
		for(var i=0;i<str;i++)
			{
			if(!$("#oem_vendor1"+i).val())
				{}else{
			var a=$("#oem_vendor1"+i).val()+',';
			oem_ven+=a; }
			if(!$("#normal_leadtime1"+i).val())
				{}else{
			 var b=$("#normal_leadtime1"+i).val()+',';
			 oem_normal_lead+=b; }
			 if(!$("#cost_replacement1"+i).val())
				 {}else{
			 var c=$("#cost_replacement1"+i).val()+',';
			 oem_cost+=c; }
			 if(!$("#days_replace1"+i).val())
				 {}else{
			 var d=$("#days_replace1"+i).val()+',';
			 oem_days+=d; }
			}
	
	var $form = $("#AP1Edit");
	var unindexed_array = $form.serializeArray();
	var indexed_array = {};

	$.map(unindexed_array, function(n, i){
	indexed_array[n['name']] = n['value'];
	});

	var b=indexed_array;

	b.oem_vendor=oem_ven.substring(0, oem_ven.length - 1);
	b.normal_leadtime=oem_normal_lead.substring(0, oem_normal_lead.length - 1);
	b.cost_replacement=oem_cost.substring(0, oem_cost.length - 1);
	b.days_replace=oem_days.substring(0, oem_days.length - 1);

	//var a=JSON.stringify(indexed_array);
	//console.log(a);

		}

	if(localStorage.getItem("outsourcing") == null)
		{
		var str_out=localStorage.getItem("outsourcing_size"); 
		
		var out_ven=""; var out_cap=""; var out_days_altsour=""; var out_altdays="";
		
		for(var j=0;j<str_out;j++)
			{
			
			if(!$("#outsourcing_supplier1"+j).val())
			{}else{var a=$("#outsourcing_supplier1"+j).val()+',';
			out_ven+=a;}
		if(!$("#percent_capacity1"+j).val())
			{}else{var b=$("#percent_capacity1"+j).val()+',';
			 out_cap+=b;}
		if(!$("#days_alternatesource1"+j).val())
		{}else{var c=$("#days_alternatesource1"+j).val()+',';
		 out_days_altsour+=c;}
		 if(!$("#days_alternate1"+j).val())
		 {}else{var d=$("#days_alternate1"+j).val()+',';
		 out_altdays+=d;}
			}
		var b=indexed_array;

		b.outsourcing_supplier=out_ven.substring(0, out_ven.length - 1);
		b.percent_capacity=out_cap.substring(0, out_cap.length - 1);
		b.days_alternatesource=out_days_altsour.substring(0, out_days_altsour.length - 1);
		b.days_alternate=out_altdays.substring(0, out_altdays.length - 1);
		
		var a=JSON.stringify(indexed_array);
		}
	else
		{

		var str_out=localStorage.getItem("outsourcing"); 
		var out_ven=""; var out_cap=""; var out_days_altsour=""; var out_altdays="";
		
		for(var j=0;j<str_out;j++)
			{
			if(!$("#outsourcing_supplier1"+j).val())
				{}else{var a=$("#outsourcing_supplier1"+j).val()+',';
				out_ven+=a;}
			if(!$("#percent_capacity1"+j).val())
				{}else{var b=$("#percent_capacity1"+j).val()+',';
				 out_cap+=b;}
			if(!$("#days_alternatesource1"+j).val())
			{}else{var c=$("#days_alternatesource1"+j).val()+',';
			 out_days_altsour+=c;}
			 if(!$("#days_alternate1"+j).val())
			 {}else{var d=$("#days_alternate1"+j).val()+',';
			 out_altdays+=d;}
			 
			}
		var b=indexed_array;

		b.outsourcing_supplier=out_ven.substring(0, out_ven.length - 1);
		b.percent_capacity=out_cap.substring(0, out_cap.length - 1);
		b.days_alternatesource=out_days_altsour.substring(0, out_days_altsour.length - 1);
		b.days_alternate=out_altdays.substring(0, out_altdays.length - 1);
		
		var a=JSON.stringify(indexed_array);
		}

	
	
	console.log(a);

	
	
 $.ajax({
url : api + "update_process",
type: 'POST',
data: a,
contentType: 'application/json; charset=utf-8'
})

	localStorage.removeItem("kalisha");
	localStorage.removeItem("outsourcing");
	localStorage.removeItem("oem_size");
	localStorage.removeItem("outsourcing_size");
	
alert("Updated Successfully..!!");
 window.location.reload(true);
 location.reload(true);
 //document.location = "CriticalVital_Process";

}

function kalesha() {
//alert('1111111111');
var $form = $("#LaborData");
var unindexed_array = $form.serializeArray();
var indexed_array = {};

$.map(unindexed_array, function(n, i){
indexed_array[n['name']] = n['value'];
});

var a=JSON.stringify(indexed_array);
console.log(a);


document.forms["LaborData"].submit();
}
/*  */


function getSerialNoData(){

	var asset=$("#asset_number").val();

	$.ajax({
		url : api + "get_serial_no_data",
		  type: 'POST',
		  data:{
			  		"asset_number":asset
		  },
		  			
		  success : function(data4) {

			  if(asset==data4)	{

				  alert("already existed");
				  $("#asset_number").val('');
				 
				  }
			  
			}	

	});			
	
}

function education_fields() {

    room++;
	console.log('hi'+''+room);
    var objTo = document.getElementById('education_fields')
    var divtest = document.createElement("div");
	divtest.setAttribute("class", "form-group removeclass"+room);
	var rdiv = 'removeclass'+room;
	//alert(rdiv);
    divtest.innerHTML = '<div class="col-sm-6 nopadding"><div class="form-group"> <input type="text" class="form-control" id="critical_business'+room+'"  value="" placeholder="Please enter Site"></div></div><div class="col-sm-6 nopadding"><div class="form-group"> <div class="input-group"> <input type="text" class="form-control" id="financial_impacts'+room+'"  value="" placeholder="Please enter Line"><div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_education_fields('+ room +');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button></div></div></div></div><div class="clear"></div>';
   
    objTo.appendChild(divtest)
}
   function remove_education_fields(rid) {
	   $("#NDBusinessfunctionlength").val(room+1);
	   $('.removeclass'+rid).remove();
   }

   function site_line_adding()
   {
		 var test ='';
			var roughObjSize = 1;
			 if(roughObjSize>=0){
			room =1;
			 console.log("business-Functions"+room);
			 $("#NDBusinessfunctionlength").val(room);
			 localStorage.setItem('room', room);
			test += '<button style="width:100px;position: relative;float:right" class="btn  btn-primary" type="button"  onclick="education_fields();"> Add</button></div><br>';
			test +='<div class="col-md-6"><div class="form-group"><label for="usr">Site:</label></div></div>';
			test +='<div class="col-md-6"><div class="form-group"><label for="usr">Line:</label></div></div>';
			 for(i=0;i<room;i++){
			
		   test += '<div class="form-group removeclass'+i+'">';
		   test += '<div class="col-sm-6 nopadding">';
		   test +='<div class="form-group">';
		   test += '<input type="text" class="form-control critical_business" id="critical_business'+i+'"  name="critical_business" value="" placeholder="Please enter Site">';
		   test += '</div>';
		   test += '</div>';
		  test += '<div class="col-sm-6 nopadding">';
		  test += '<div class="form-group">';
		    test += '<div class="input-group">';
		      test += '<input type="text" class="form-control financial_impacts" id="financial_impacts'+i+'"  name="financial_impacts" value="" placeholder="Please enter Line">';
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
			 
	}

	function site_line(counter)
	{

		var str="";
		var a1=$("#critical_business0").val();
		 var b1=$("#financial_impacts0").val();

		 if(a1=='' || b1=='')
			 {
				alert('Please Provide Site and Line...!');
				return true;
			 }

		 if(counter == 1)
			 {
			 $('#business_impact').val(a1+"/"+b1);
			 }
		 else{
			for(i=2;i<counter+1;i++){

				var a=$("#critical_business"+i).val();
				 var b=$("#financial_impacts"+i).val();
				 if(typeof $("#critical_business"+i).val() !='undefined'){

					 if(a=='' || b=='')
					 {
						alert('Please Provide Site and Line...!');
						return true;
					 }
						 str+=a+"/"+b+"@"; 
						
						$('#business_impact').val(a1+"/"+b1+"@"+str);
				 }
			}
			
		 }

		 var final_site_line=$("#business_impact").val();
			$.ajax({
				url : api + "add_site_line_dynamic",
				  type: 'POST',
				  data:{
					  		"site_line":final_site_line
				  },		
				  success : function(data4) {

					alert(data4);
					window.location.reload();
					}	

			});			
			
		     
	}

 
	
	function add() {
		var i=localStorage.getItem("oem_size");
		 var s=localStorage.getItem("oem_size");
		 var q=localStorage.getItem("oem_size");
		 var w=localStorage.getItem("oem_size");
		 
			var d=localStorage.getItem("oem_size");
			var m=parseInt(d)+1;
		
	    $('.block:last').before("<div class='col-md-offset-2 col-md-10'style='border: 2px solid #0d6cbd;padding: 23px;margin-bottom: 10px;'><div class='form-group'><label for='usr' style='color:#a606e8'>"+m+".Original Equipment Manufacturer(OEM) Vendor Name :</label><input type='text' class='form-control' id='oem_vendor1"+i+++"'></div> <div class='form-group'><label for='usr'>Normal Lead time in Production days to Replace Equipment/Process/Sub-Process  (Consider longest lead time component) :</label><input type='text' class='form-control' id='normal_leadtime1"+s+++"'></div><div class='form-group'><label for='usr'>Number of days to Replace Equipment on Expedited Basis:</label><input type='text' class='form-control' id='days_replace1"+q+++"'></div><div class='form-group'><label for='usr'>Cost for Total Replacement:</label><input type='text' class='form-control' id='cost_replacement1"+w+++"'></div></div>");

	    localStorage.setItem("kalisha",m);
	};
	


	
	function add_outsource(){
		var a=localStorage.getItem("outsourcing_size");
		 var b=localStorage.getItem("outsourcing_size");
		 var c=localStorage.getItem("outsourcing_size");
		 var f=localStorage.getItem("outsourcing_size");
		 
			var e=localStorage.getItem("outsourcing_size");
			
			 var v=parseInt(e)+1;
			
		    $('.block-outsource:last').before("<div class='col-md-offset-2 col-md-10' style='border: 2px solid #0d6cbd;padding: 23px;margin-bottom: 10px;'><div class='outsource'><div class='form-group'><label for='usr' style='color:#1307da'>"+v+".Outsourcing Supplier(s):</label><input type='text' class='form-control' id='outsourcing_supplier1"+a+++"'></div><div class='form-group'><label for='sel1'>Percent of Capacity that could be outsourced :</label><input type=text class='form-control' id='percent_capacity1"+b+++"'></input></div><div class='form-group'><label for='usr'>Number of days required to transition to alternate source:</label><input type='text' class='form-control' id='days_alternatesource1"+c+++"'></div><div class='form-group'><label for='usr'>Number of days Alternate Source is Available:</label><input type='text' class='form-control' id='days_alternate1"+f+++"'></div></div></div>");

		    localStorage.setItem("outsourcing",v);
		};

		function data_dismiss()
		{
			window.location.reload();
		}

		function bia_ta_file_format()
		{
		
		    window.location = "https://bcp-web.al.ge.com/BCP/crisis_roster_download_file/bia_ta_file";
				
		}
</script>
</body>
</html>
