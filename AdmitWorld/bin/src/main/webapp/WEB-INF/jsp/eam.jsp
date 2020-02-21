<!doctype html>
<html lang="en">
<head>
<style>
/*  prograssbar styles */
  
#Progress_Status { 
  width: 100%; 
  background-color: #ddd; 
   position: relative;
    
} 
  
#myprogressBar { 
  width: 0%; 
  height: 35px; 
  background-color: #4CAF50; 
  text-align: center; 
  line-height: 32px; 
  color: black; 
} 
  
#example thead tr th{
text-align:center;
}
.btn-file {
    position: relative;
    overflow: hidden;
}
.btn-file input[type=file] {
    position: absolute;
    top: 0;
    right: 0;
    min-width: 100%;
    min-height: 100%;
    font-size: 100px;
    text-align: right;
    filter: alpha(opacity=0);
    opacity: 0;
    outline: none;   
    cursor: inherit;
    display: block;
}
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
.pdf_padding_table
{
padding:16px !important;
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
.pad-left-pdf-table
{
padding-left:10%;
}
/* end  */
/*prashanthi changes*/
.btn-toolbar-res
{
float: right;margin-top: -16px;
    margin-bottom: 10px
}
.btn-toolbar
{
float:right;
}


@media only screen and (max-width:1024px)
{
.title-res
{
padding-left:25px;
}
.btn-toolbar-res
{
float: right;margin-top: 6px;
  
}
.file-upload-res
{
left:5%;
margin-bottom:5%;
}
.compare-res
{
left:5%;
}
.btn-toolbar
{
float:left;
margin-bottom:5%;
}
.row
{
margin-left:0px !important;
margin-right:0px !important;
}
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
  <meta charset="utf-8">
  <title>EAM MASTER Data</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <!-- <link href="img/favicon.png" rel="icon"> -->
  <!-- <link href="img/apple-touch-icon.png" rel="apple-touch-icon"> -->

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,700|Raleway:300,400,400i,500,500i,700,800,900" rel="stylesheet">

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
  <link href="css/menu.css" rel="stylesheet">
<link href="https://cdn.datatables.net/r/dt/jq-2.1.4,jszip-2.5.0,pdfmake-0.1.18,dt-1.10.9,af-2.0.0,b-1.0.3,b-colvis-1.0.3,b-html5-1.0.3,b-print-1.0.3,se-1.0.1/datatables.min.css"/>
  <!-- Responsive Stylesheet File -->
  <link href="css/responsive.css" rel="stylesheet">
  <link href="css/mouse-over.css" rel="stylesheet">
  <!-- data tble css -->
  <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
  <link href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css" rel="stylesheet">
  

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
<a href="/BCP/"><img src="img/ge_haier_logo1.png" alt="" class="responsive center-block" /></a>
</div>
<div class="col-md-7">
 <h1 style="color: #003B71;font-weight: bold;">eAM Master</h1>
</div>
<div class="col-md-3"></div>
   <br><h3 style="color: #003B71;font-weight: bold;" class="title-res">Welcome : <span id="name" style="color:red;font-size:20px;"></span></h3>
</div>


<div class="row tab">
		<nav id="menu" style="height:56px;">
			<label for="tm" id="toggle-menu">Menu<span class="drop-icon">▾</span></label>
			<input type="checkbox" id="tm">
			<ul class="main-menu clearfix">
				<li style="border:none"><button class="btn download" onclick="eam_file_format()">Download EAM_Master FIle Format</button></li>
				<li></li>
				<li></li>
				<li style="border:none"> <marquee width="100%" direction="right" style="color:red;margin-top:16px;margin-left: 150px;">
Maximum File Upload time is 30 minutes
</marquee></li>
			</ul>
		</nav>
	</div>


<div class="row">

 <div class="preloader" style="display: none;background: rgba(255, 255, 255, 0.6);" class="overlay">
									<div class="status">&nbsp;</div>
								</div> 
</div>


 
  <div class="row" style="/* margin-left: 10px;margin-right: 10px; */margin-top:10px;display:none;" id="eam_data"></div>
  <hr>
   
<div class="row">
<div id="Progress_Status"> 
<div id="myprogressBar"><span id="progress_percenage"></span></div> 
</div> 
</div>

   <div class="row"  id="progress_id">
   <p style="position:absolute;left: 5px;">No.of Rows uploaded : <p style="position:absolute;left: 150px;font-size: 150%; color: red;"id="data_size">0</p></p>
   </div>
       
  <form style="margin-top: 5px;">

  <div class="col-md-12" style="margin-bottom: 10px; margin-top: 10px;">
  </div> 

    
    <div class="btn-toolbar btn-toolbar-res" role="toolbar" aria-label="Toolbar with button groups" style="">
    
   <div class="btn-group file_upload file-upload-res" role="group" aria-label="First group" style="display:none;">
   <span class="btn btn-warning"><input type="file" name="file" id="singleFileUploadInput">
</span>
  </div>
 
  
   <div class="btn-group compare-res" role="group" aria-label="Second group">
    <button type="button" class="btn btn-primary compare" onClick="compare()">Compare</button>
  </div>
  </div>
  </div>
  <div class="col-md-12" style="margin-bottom:10px;">
 <div class="col-md-2"><button id="btn-export" class="btn btn-primary"  style="padding: 6px 30px;">Export</button></div>
 <div class="col-md-10">
  <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
   
   
  <div class="btn-group added" role="group" aria-label="First group" style="display:none;">
    <button type="button" class="btn btn-success" onClick="add_data()">Added</button>
  </div>
 
  <div class="btn-group modified" role="group" aria-label="Third group" style="display:none;">
    <button type="button" class="btn btn-info" onClick="modify_data()">Modified</button>
  </div>
  
  <div class="btn-group deleted" role="group" aria-label="Fourth group" style="display:none;">
    <button type="button" class="btn btn-danger" onClick="delete_data()">Inactive Data</button>
  </div>
 
</div>
</div>
  </div>

 </form>
  <table id="example" class="display nowrap" style="width:100%;">
        <thead>
            <tr>
                <th style="background-color:lightslategray;">Organization Code</th>
                <th style="background-color:darkseagreen;">Asset Area</th>
                <th style="background-color:burlywood;">Asset Number</th>
                <th style="background-color:lightblue;">Asset Name</th>
                <th style="background-color:lightslategray;">Parent Asset Number</th>
                <th style="background-color:darkseagreen;">Asset Description</th>
                <th style="background-color:lightslategray;">Asset Group</th>
                <th style="background-color:darkseagreen;">Department Name</th>
                <th style="background-color:burlywood;">Serial Number</th>
                <th style="background-color:lightblue;">Asset Criticality</th>
                <th style="background-color:lightslategray;">Maintainable Flag</th>
                <th style="background-color:darkseagreen;">Year Of Purchase</th>
                <th style="background-color:lightslategray;">Year Of Manufacture</th>
                <th style="background-color:darkseagreen;">Warranty Expiry</th>
                <th style="background-color:burlywood;">Asset Route</th>
                <th style="background-color:lightblue;">Model</th>
                <th style="background-color:lightslategray;">Manufacturer Serial Number</th>
                <th style="background-color:darkseagreen;">Make</th>
                <th style="background-color:lightslategray;">Loto Procedure</th>
                <th style="background-color:darkseagreen;">Legacy Asset Number</th>
                <th style="background-color:burlywood;">Capacity</th>
                <th style="background-color:lightblue;">Active Start Date</th>
                <th style="background-color:lightslategray;">Active End Date</th>
                <th style="background-color:darkseagreen;">Wip Accounting Class Code</th>
                 <th style="background-color:burlywood;">BIA_TA</th>
            </tr>
        </thead>
        
         <tfoot>
            <tr>
                <th style="background-color:lightslategray;">Organization Code</th>
                <th style="background-color:darkseagreen;">Asset Area</th>
                <th style="background-color:burlywood;">Asset Number</th>
                <th style="background-color:lightblue;">Asset Name</th>
                <th style="background-color:lightslategray;">Parent Asset Number</th>
                <th style="background-color:darkseagreen;">Asset Description</th>
                <th style="background-color:lightslategray;">Asset Group</th>
                <th style="background-color:darkseagreen;">Department Name</th>
                <th style="background-color:burlywood;">Serial Number</th>
                <th style="background-color:lightblue;">Asset Criticality</th>
                <th style="background-color:lightslategray;">Maintainable Flag</th>
                <th style="background-color:darkseagreen;">Year Of Purchase</th>
                <th style="background-color:lightslategray;">Year Of Manufacture</th>
                <th style="background-color:darkseagreen;">Warranty Expiry</th>
                <th style="background-color:burlywood;">Asset Route</th>
                <th style="background-color:lightblue;">Model</th>
                <th style="background-color:lightslategray;">Manufacturer Serial Number</th>
                <th style="background-color:darkseagreen;">Make</th>
                <th style="background-color:lightslategray;">Loto Procedure</th>
                <th style="background-color:darkseagreen;">Legacy Asset Number</th>
                <th style="background-color:burlywood;">Capacity</th>
                <th style="background-color:lightblue;">Active Start Date</th>
                <th style="background-color:lightslategray;">Active End Date</th>
                <th style="background-color:darkseagreen;">Wip Accounting Class Code</th>
                 <th style="background-color:burlywood;">BIA_TA</th>
            </tr>
        </tfoot>


    </table>

  <!-- End Slider Area -->


<div class="modal fade in" id="myModal" role="dialog" style="display: none;">
    <div class="modal-dialog modal-lg" style="width: 70%;">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" onclick="closeModel()" style="float:right;">&times;</button>
          
          <div class="row">
        <div class="col-md-3">
        <img src="img/logo2.png" alt="" style="position: relative;top: 10px;" class="responsive center-block">
        </div>
        <div class="col-md-9">
      <h4 style="float:right;position: relative;top: 30px;"></h4>
        </div>
        </div>
          
          <h4 class="modal-title">Update EAM Data<span id="site_update"></span> - <span id="line_update"></span></h4>
        </div>
        
      <div class="modal-body">
       <form id="EamEdit" name="EamEdit">   
		<div class="row">

			 <div class="col-md-6">
                <div class="form-group">
                <label>Serial Number</label>
               <input type="text" class="form-control" id="serial_number1" name="serial_number" readonly></div>
              </div>
              
              <div class="col-md-6">
             <div class="form-group">
             <label>BIA_TA</label>
                <input type="text" class="form-control" id="bcp1" name="bcp" readonly> </div>
               </div>
               
            <div class="col-md-6">
             <div class="form-group">
             <label>Organization Code</label>
                <input type="text" class="form-control" id="organization_code1" name="organization_code" > </div>
               </div>
                  <div class="col-md-6">
                <div class="form-group">
                <label>Asset Area</label>
               <input type="text" class="form-control" id="asset_area1" name="asset_area" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Asset Number</label>
                <input type="text" class="form-control" id="asset_number1" name="asset_number" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Asset Name</label>
               <input type="text" class="form-control" id="asset_name1" name="asset_name" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Parent Asset Number</label>
                <input type="text" class="form-control" id="parent_asset_number1" name="parent_asset_number" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Asset Description</label>
               <input type="text" class="form-control" id="asset_description1" name="asset_description" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Asset Group</label>
                <input type="text" class="form-control" id="asset_group1" name="asset_group" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Department Name</label>
               <input type="text" class="form-control" id="department_name1" name="department_name" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Asset Criticality</label>
                <input type="text" class="form-control" id="asset_criticality1" name="asset_criticality" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Maintainable Flag</label>
               <input type="text" class="form-control" id="maintable_flag1" name="maintable_flag" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Year Of Purchase</label>
                <input type="text" class="form-control" id="year_purchase1" name="year_purchase" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Year Of Manufacture</label>
               <input type="text" class="form-control" id="year_manfacture1" name="year_manfacture" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Warranty Expiry</label>
                <input type="text" class="form-control" id="warrenty_expiry1" name="warrenty_expiry" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Asset Route</label>
               <input type="text" class="form-control" id="asset_route1" name="asset_route" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Model</label>
                <input type="text" class="form-control" id="model1" name="model" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Manufacturer Serial Number</label>
               <input type="text" class="form-control" id="manfacture_serial_no1" name="manfacture_serial_no" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Make</label>
                <input type="text" class="form-control" id="make1" name="make" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Loto Procedure</label>
               <input type="text" class="form-control" id="loto_procedure1" name="loto_procedure" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Legacy Asset Number</label>
                <input type="text" class="form-control" id="legacy_asset_number1" name="legacy_asset_number" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Capacity</label>
               <input type="text" class="form-control" id="capacity1" name="capacity" >
               </div>
              </div>
            <div class="col-md-6">
             <div class="form-group">
             <label>Active Start Date</label>
                <input type="Date" class="form-control" id="active_start_date1" name="active_start_date" > </div>
               </div>
               
                  <div class="col-md-6">
                <div class="form-group">
                <label>Active End Date</label>
               <input type="Date" class="form-control" id="active_end_date1" name="active_end_date" >
               </div>
              </div>
     
                 <div class="col-md-6">
                <div class="form-group">
                <label>Wip Accounting Class Code</label>
               <input type="text" class="form-control" id="wip_accounting_class_code1" name="wip_accounting_class_code" >
               </div>
              </div>
            
             <div class="col-md-6">   
               <div id="row" align="center">
 			<div class="col-md-12" style="margin-top: 26px;margin-bottom: 5px;">
  			 <button type="button" class="btn btn-success" onclick="EamUpdate()" id="update_critical_process">Update</button>
   			<button type="button" class="btn btn-danger" onclick="DeleteEamData()" id="delete_critical_process">Remove</button>
   			<button type="button" class="btn btn-info" onclick="ProcessData()" id="process_pdf">Proceed to PDF</button>
 				</div>
			</div>
               
              </div>
               
   
 </div>
		</form>
		</div>
		
		
		
 <div class="row">
 <div class="col-md-12">
 <div id="pdf_process" style="display:none;">
 <div id="pdf_data">
<div class="row">
        <div class="col-md-3">
        <img src="img/logo2.png" alt="" style="position: relative;top: -10px;" class="responsive center-block">
        </div>
        <div class="col-md-9">
      <h4 style="float:right;position: relative;top: 10px;"> Eam Master Data</h4>
        </div>
        </div>
<table class="table table-bordered report">
<tr >
<td class="pdf_padding_table"><strong>Serial Number:</strong><span id="pdf_serial_num" style="padding-left:20%"></span></td>
<td class="pdf_padding_table"><strong>BIA_TA:</strong><span id="pdf_bia_ta" class="pad-left-pdf-table"></span></td>
</tr>

<tr>
<td class="pdf_padding_table"><strong>Organization Code:</strong><span id="pdf_org_code" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Asset Area:</strong><span id="pdf_ass_area" class="pad-left-pdf-table"></span></td>
</tr>
<tr>
<td class="pdf_padding_table"><strong>Asset Number:</strong><span id="pdf_assest_number" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Asset Name:</strong><span id="pdf_assest_name" class="pad-left-pdf-table"></span></td>
</tr>
<tr>
<td class="pdf_padding_table"><strong>Parent Asset Number:</strong><span id="pdf_parent_ass_num" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Asset Description:</strong><span id="pdf_ass_des" class="pad-left-pdf-table"></span></td>
</tr>

<tr>
<td class="pdf_padding_table"><strong>Asset Group:</strong><span id="pdf_ass_grp" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Department Name:</strong><span id="pdf_dep_name" class="pad-left-pdf-table"> </span></td>
</tr>

<tr>
<td class="pdf_padding_table"><strong>Asset Criticality:</strong><span id="pdf_ass_critic" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Maintainable Flag:</strong><span id="pdf_main_flag" class="pad-left-pdf-table"></span></td>
</tr>

<tr>
<td class="pdf_padding_table"><strong>Year Of Purchase:</strong><span id="pdf_year_purchase" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Year Of Manufacture:</strong><span id="pdf_year_manu" class="pad-left-pdf-table"></span></td>
</tr>
<tr>
<td class="pdf_padding_table"><strong>Warranty Expiry :</strong><span id="pdf_war_expiry" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Asset Route:</strong><span id="pdf_ass-route" class="pad-left-pdf-table"></span></td>
</tr>
<tr>
<td class="pdf_padding_table"><strong>Model:</strong><span id="pdf_model" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Manufacturer Serial Number:</strong><span id="pdf_man_ser_num" class="pad-left-pdf-table"></span></td>
</tr>

<tr>
<td class="pdf_padding_table"><strong>Make:</strong><span id="pdf_make" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Loto Procedure:</strong><span id="pdf_loto_pro" class="pad-left-pdf-table"></span></td>
</tr>

<tr>
<td class="pdf_padding_table"><strong>Legacy Asset Number:</strong><span id="pdf_leg_ass_num" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Capacity:</strong><span id="pdf_capcity" class="pad-left-pdf-table"></span></td>
</tr>
<tr>
<td class="pdf_padding_table"><strong>Active Start Date:</strong><span id="pdf_active_start_date" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong>Active End Date:</strong><span id="pdf_active_end_date" class="pad-left-pdf-table"></span></td>
</tr>
<tr>
<td class="pdf_padding_table"><strong>Wip Accounting Class Code:</strong><span id="pdf_wip_code" class="pad-left-pdf-table"></span></td>
<td class="pdf_padding_table"><strong></strong><span id=""></span></td>
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
  <!-- End Contact Area -->


  <!-- Start Footer bottom Area -->
  <footer>
    
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
  </footer>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

 <script src="libs/jquery/jquery.min.js"></script>
  <script src="libs/bootstrap/js/bootstrap.min.js"></script>
  <script src="libs/owlcarousel/owl.carousel.min.js"></script>
  <script src="libs/venobox/venobox.min.js"></script>
  <script src="libs/knob/jquery.knob.js"></script>
  <script src="libs/wow/wow.min.js"></script>
  <script src="libs/parallax/parallax.js"></script>
  <script src="libs/easing/easing.min.js"></script>
  <script src="libs/nivo-slider/js/jquery.nivo.slider.js" type="text/javascript"></script>
  <script src="libs/appear/jquery.appear.js"></script>
  <script src="libs/isotope/isotope.pkgd.min.js"></script>

   <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script src="js/main.js"></script>
  
  <!-- data table -->
  <script src="js/jquery.dataTables.min.js"></script>
  <script src="js/dataTables.buttons.min.js"></script>
  <script src="js/jszip.min.js"></script>
  <script src="js/vfs_fonts.js"></script>
<!--   <script src="js/pdfmake.min.js"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
  <script src="js/buttons.html5.min.js"></script>
  <script src="js/buttons.print.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"> </script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"> </script>
      <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
       <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xls/0.7.4-a/xls.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/xlsx.full.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.13.5/jszip.js"></script>

<script src="https://cdn.jsdelivr.net/alasql/0.3/alasql.min.js"></script>
  

  <script src="js/main.js"></script>
  <script>
  
  	var api = "https://bcp-web.al.ge.com/BCP/eam_page/";
  	//var api = "http://localhost:8085/BCP/eam_page/";
  
  document.getElementById("name").innerHTML = localStorage.getItem('user-name'); 
  
  $(document).ready(function() {
		$('#example').DataTable().clear().draw();
	  
	  $('.deleted').show();
	  $('.file_upload').show();
	  $('.preloader').show();
	  $('.added').show();
		$('.modified').show();
		$("#myModal").hide();
		$("#Progress_Status").hide();
		$("#progress_id").hide();
		
		    
	 
	  $('#example tfoot th').each(function() {
					    var title = $(this).text();
					    $(this).html('<input type="text" placeholder="Search ' + title + '" />');
					  });
	  
		$.ajax({
			type : "GET",
			url : api + "fetch_data_by_compare",
			dataType : "json",
			success : function(response){
				console.log(response);

				$('#btn-export').on('click', function(){
	                   var rowstyles = [];
                       
                       var options = {
                                   headers: true,
                                   column: {
                                               style: {
                                                           Font: {
                                                                       Bold: "1"
                                                           }
                                               }
                                   },
                                   rows: rowstyles,
                                   columns: [
                                       {
                                               columnid: 'organization_code',
                                               title: 'organization_code'
                                  		 },
                                    	{
                                               columnid: 'asset_area',
                                               title: 'asset_area'
                                   		},
                                   		{
                                       			columnid: 'asset_number',
                                       			title: 'asset_number'
                           				},
                           				{
                                   			columnid: 'asset_name',
                                   			title: 'asset_name'
                       					},
                       					{
                                   			columnid: 'parent_asset_number',
                                   			title: 'parent_asset_number'
                       					},
                       					{
                                   			columnid: 'asset_description',
                                   			title: 'asset_description'
                       					},
                       					{
                                   			columnid: 'department_name',
                                   			title: 'department_name'
                       					},
                       					{
                                   			columnid: 'serial_number',
                                   			title: 'serial_number'
                       					},
                       					{
                                   			columnid: 'asset_criticality',
                                   			title: 'asset_criticality'
                       					},
                       					{
                                   			columnid: 'maintable_flag',
                                   			title: 'maintable_flag'
                       					},
                       					{
                                   			columnid: 'year_purchase',
                                   			title: 'year_purchase'
                       					},
                       					{
                                   			columnid: 'year_manfacture',
                                   			title: 'year_manfacture'
                       					},
                       					{
                                   			columnid: 'warrenty_expiry',
                                   			title: 'warrenty_expiry'
                       					},
                       					{
                                   			columnid: 'asset_route',
                                   			title: 'asset_route'
                       					},
                       					{
                                   			columnid: 'model',
                                   			title: 'model'
                       					},
                       					{
                                   			columnid: 'manfacture_serial_no',
                                   			title: 'manfacture_serial_no'
                       					},
                       					{
                                   			columnid: 'make',
                                   			title: 'make'
                       					},
                       					{
                                   			columnid: 'loto_procedure',
                                   			title: 'loto_procedure'
                       					},
                       					{
                                   			columnid: 'legacy_asset_number',
                                   			title: 'legacy_asset_number'
                       					},
                       					{
                                   			columnid: 'capacity',
                                   			title: 'capacity'
                       					},
                       					{
                                   			columnid: 'active_start_date',
                                   			title: 'active_start_date'
                       					},
                       					{
                                   			columnid: 'active_end_date',
                                   			title: 'active_end_date'
                       					},

                       					{
                                   			columnid: 'wip_accounting_class_code',
                                   			title: 'wip_accounting_class_code'
                       					},
                       					{
                                   			columnid: 'bcp',
                                   			title: 'bcp'
                       					}
                                   ]
                       };
                       alasql('SELECT * INTO XLSXML("EAM_AssetMaster.xls",?) FROM ?', [options,response]);

				  });   
				
				var result = response.AttendanceOverview;
				
				   var table = $('#example').DataTable({
		  		        data: response,
		  		        //dom: 'Blfrtip',
		  		      "sScrollXInner": "110%",
		  		       "scrollX": "100%",
		  		      destroy: true, 
		  		      buttons: [
		  	            'copy', 'csv', 'excel', 'pdf', 'print'
		  	        ],
		  	      columns: [
			  	    	
		  	    	  {"data":"organization_code" },
			  	    	{ "data": "asset_area" },
			          { "data": "asset_number" },
			          { "data": "asset_name" },
			          { "data": "parent_asset_number" },
			          { "data": "asset_description" },
			          { "data": "asset_group" },
			          { "data": "department_name" },
			          { "data": "serial_number" },
			          { "data": "asset_criticality" },
			          { "data": "maintable_flag" },
			          { "data": "year_purchase" },
			          { "data": "year_manfacture" },
			          { "data": "warrenty_expiry" },
			          { "data": "asset_route" },
			          { "data": "model" },
			          { "data": "manfacture_serial_no" },
			          { "data": "make" },
			          { "data": "loto_procedure" },
			          { "data": "legacy_asset_number" }, 
			          { "data": "capacity" },
			          { "data": "active_start_date" }, 
			          { "data": "active_end_date" },
		              { "data": "wip_accounting_class_code" }, 
		              { "data": "bcp" }	             
			        ],
			        "rowCallback": function(row, data, index) {
	                	$('td',row).dblclick(function() {  
	                		 $("#organization_code1").val(data.organization_code);
	        	  			 $("#asset_area1").val(data.asset_area);
	        	  			 $("#asset_number1").val(data.asset_number);
	        	  			 $("#asset_name1").val(data.asset_name);
	        	  			 $("#parent_asset_number1").val(data.parent_asset_number);
	        	  			 $("#asset_description1").val(data.asset_description);
	        	  			 $("#asset_group1").val(data.asset_group);
	        	  			 $("#department_name1").val(data.department_name);
	        	  			 $("#serial_number1").val(data.serial_number);
	        	  			 
	        	  			 $("#asset_criticality1").val(data.asset_criticality);
	        	  			 $("#maintable_flag1").val(data.maintable_flag);
	        	  			 $("#year_purchase1").val(data.year_purchase);
	        	  			 $("#year_manfacture1").val(data.year_manfacture);
	        	  			 $("#warrenty_expiry1").val(data.warrenty_expiry);
	        	  			 $("#asset_route1").val(data.asset_route);
	        	  			 
	        	  			 $("#model1").val(data.model);
	        	  			 $("#manfacture_serial_no1").val(data.manfacture_serial_no);
	        	  			 $("#make1").val(data.make);
	        	  			 $("#loto_procedure1").val(data.loto_procedure);
	        	  			 $("#legacy_asset_number1").val(data.legacy_asset_number);
	        	  			 $("#capacity1").val(data.capacity);
	        	  			var date_active_start = new Date(data.active_start_date);
	        	  			var date_format_start = new Date(date_active_start).toDateString("yyyy-MM-dd");
	        	  			function formatDate(date) {
	        	  			    var d = new Date(date),
	        	  			        month = '' + (d.getMonth() + 1),
	        	  			        day = '' + d.getDate(),
	        	  			        year = d.getFullYear();
	        	  			    if (month.length < 2) month = '0' + month;
	        	  			    if (day.length < 2) day = '0' + day;
	        	  			    return [year, month, day].join('-');
	        	  			}
	        	  			//alert(formatDate(date_format));
	        	  			
	        	  			 $("#active_start_date1").val(formatDate(date_format_start));
	        	  			var date_active_end = new Date(data.active_end_date);
	        	  			var date_format_end = new Date(date_active_end).toDateString("yyyy-MM-dd");
	        	  			 
	        	  			 $("#active_end_date1").val(formatDate(date_format_end));
	        	  			 
	        	  			 $("#wip_accounting_class_code1").val(data.wip_accounting_class_code);
	        	  			 $("#bcp1").val(data.bcp);
	        	  			
	        	  			 var user_role=localStorage.getItem('user-role');
	        				 if(user_role=="Admin")
	        					 {
	        					 $("#myModal").show();
	        					 }
	        				 else{
	        					 $("#myModal").hide();
	        					 }			
							
	                	});
			        },
			        
			            initComplete: function() {
			              var api = this.api();
console.log(api);
			              // Apply the search
			              api.columns().every(function() {
			                var that = this;
console.log(that);
			                $('input', this.footer()).on('keyup change', function() {
			                  if (that.search() !== this.value) {
			                    that
			                      .search(this.value)
			                      .draw();
			                  }
			                });
			              });
			            }
					 });
				 $('#eam_data').show();
				 $(".preloader").hide();
						
			}
	});


		
	 $('#get_data').click(function () {
        $('#eam_data').show();
    });
	 $.ajax({
			url : api + "make_bcp_change",
			  type: 'POST',
			  data: {
					bcp : "Yes"
				  },
			})
	
});
  function _(el){
		return document.getElementById(el);
	}

	
  function compare()
  { 	
	 //$('.preloader').show();
	  var singleFileUploadInput = document.querySelector('#singleFileUploadInput');
	 		    var files = singleFileUploadInput.files;
	     // Get The File From The Input
	     var oFile = files[0];
	     var sFilename = oFile.name;
	     // Create A File Reader HTML5
	     var reader = new FileReader();
	     // Ready The Event For When A File Gets Selected
	     reader.onload = function(e) {
	         var data = e.target.result;
	         var workbook = XLSX.read(data, {type: "binary" });
	         // Loop Over Each Sheet
	         var first_sheet_name = workbook.SheetNames[0];
	             /* Get worksheet */
	             var worksheet = workbook.Sheets[first_sheet_name];
	             var x=XLSX.utils.sheet_to_json(worksheet, {
	                 raw: true
	             });
	
	            	var d2 = { active_end_date: "", active_start_date: "", asset_area: "" };
	            	var a=Object.keys(x[0]);
	            	var b=Object.keys(d2);
	            	console.log(a);
	            	console.log(b);
	            	if(a.includes(b[0]) || a.includes(b[1]) || a.includes(b[2]))
	            	{
	             console.log(x);
	             $("#Progress_Status").show();
	     		$("#progress_id").show();
	             localStorage.setItem('size1', x.length);
	             var y=Math.round(x.length/2);
	             var first = x.slice(0, y);
	             var second = x.slice(y);
	             console.log("first"+first.length+"---- second"+second.length);
	             apifunction(first);
	             apifunction2(second);
         	    }
            	    else
                	    {
								alert("Error Occured... check file columns headers");
                	    }	
	  
	            	function apifunction(a)
	            	{
		            	 var data =a;
	            		var test=$.ajax({
	            			type : "POST",
	            			url : api+"upload_data",
	            			  contentType: "application/json;",
	            			  dataType: 'json',
	            		    data:JSON.stringify(data),
	            		    success: function(response) {
	            		    	
	            		    	
	            		    }
	            		});
	            	}
	            		
	            	function apifunction2(b)
	            	{ 
	            		var data1=b;
	            		$.ajax({
	            			type : "POST",
	            			url : api+"upload_data_another_process",
	            			  contentType: "application/json;",
	            			  dataType: 'json',
	            		    data:JSON.stringify(data1),
	            		    success: function(response) {
								 //alert(response.message);
								 //$('.preloader').hide();
								 //window.location.reload();
	            		    }
            		    
	            		  
	            		});
	            		 
	                       
	            	}
	            	 var listener = function () {
		            	 
	            		$.get(api+"fetch_no_of_records", {}, function(data) {
		            		
	            			localStorage.setItem('data_size1', data);
	            			document.getElementById("data_size").innerHTML = localStorage.getItem('data_size1'); 
	            			var size=localStorage.getItem('data_size1');
	            			var size2=localStorage.getItem('size1');
							var main_size= (size/size2)*100;
	            			var main_size1 = Math.round(main_size);
	            			$("#progress_percenage").text(main_size1+'%');
	            			
		            		if(main_size1 == 100)
			            		{
		            				$.ajax({
			            					type : "GET",
			            					url : api + "table_data_exchange",
			            					dataType : "json",
			            					success : function(response){
			            						console.log(response);
			            					}
			            				});
		            							
			            				window.location.reload();
			            		}
		            		else
			            		{
										$("#myprogressBar").css('width', main_size1+'%');
						  		}
	            		  
	            		});
	            		};
	            		var interval = setInterval(listener, 5000);
	            		
	     };
	     // Tell JS To Start Reading The File.. You could delay this if desired
	     reader.readAsBinaryString(oFile);
	   
  }
  
function add_data()
{
	$('#example').DataTable().clear().draw();
	
	 $(".preloader").show();
	$.ajax({
		type : "GET",
		url : api + "fetch_data_by_add",
		dataType : "json",
		success : function(response){
			console.log(response);
			
			var result = response.AttendanceOverview;
			
			 $('#example').DataTable({
	  		        data: response,
	  		        dom: 'Blfrtip',
	  		      "sScrollXInner": "110%",
	  		       "scrollX": "100%",
	  		      destroy: true, 
	  		      buttons: [
	  	            'copy', 'csv', 'excel', 'pdf', 'print'
	  	        ],
	  	      columns: [
		  	    	
	  	    	  {"data":"organization_code" },
		  	    	{ "data": "asset_area" },
		          { "data": "asset_number" },
		          { "data": "asset_name" },
		          { "data": "parent_asset_number" },
		          { "data": "asset_description" },
		          { "data": "asset_group" },
		          { "data": "department_name" },
		          { "data": "serial_number" },
		          { "data": "asset_criticality" },
		          { "data": "maintable_flag" },
		          { "data": "year_purchase" },
		          { "data": "year_manfacture" },
		          { "data": "warrenty_expiry" },
		          { "data": "asset_route" },
		          { "data": "model" },
		          { "data": "manfacture_serial_no" },
		          { "data": "make" },
		          { "data": "loto_procedure" },
		          { "data": "legacy_asset_number" }, 
		          { "data": "capacity" },
		          { "data": "active_start_date" }, 
		          { "data": "active_end_date" },
	              { "data": "wip_accounting_class_code" }, 
	              { "data": "bcp" }	             
		        ],
		        "rowCallback": function(row, data, index) {
                	$('td',row).dblclick(function() {  
                		 $("#organization_code1").val(data.organization_code);
        	  			 $("#asset_area1").val(data.asset_area);
        	  			 $("#asset_number1").val(data.asset_number);
        	  			 $("#asset_name1").val(data.asset_name);
        	  			 $("#parent_asset_number1").val(data.parent_asset_number);
        	  			 $("#asset_description1").val(data.asset_description);
        	  			 $("#asset_group1").val(data.asset_group);
        	  			 $("#department_name1").val(data.department_name);
        	  			 $("#serial_number1").val(data.serial_number);
        	  			 
        	  			 $("#asset_criticality1").val(data.asset_criticality);
        	  			 $("#maintable_flag1").val(data.maintable_flag);
        	  			 $("#year_purchase1").val(data.year_purchase);
        	  			 $("#year_manfacture1").val(data.year_manfacture);
        	  			 $("#warrenty_expiry1").val(data.warrenty_expiry);
        	  			 $("#asset_route1").val(data.asset_route);
        	  			 
        	  			 $("#model1").val(data.model);
        	  			 $("#manfacture_serial_no1").val(data.manfacture_serial_no);
        	  			 $("#make1").val(data.make);
        	  			 $("#loto_procedure1").val(data.loto_procedure);
        	  			 $("#legacy_asset_number1").val(data.legacy_asset_number);
        	  			 $("#capacity1").val(data.capacity);
        	  			 
        		  			var date_active_start = new Date(data.active_start_date);
	        	  			var date_format_start = new Date(date_active_start).toDateString("yyyy-MM-dd");
	        	  			function formatDate(date) {
	        	  			    var d = new Date(date),
	        	  			        month = '' + (d.getMonth() + 1),
	        	  			        day = '' + d.getDate(),
	        	  			        year = d.getFullYear();
	        	  			    if (month.length < 2) month = '0' + month;
	        	  			    if (day.length < 2) day = '0' + day;
	        	  			    return [year, month, day].join('-');
	        	  			}
	        	  			//alert(formatDate(date_format));
	        	  			
	        	  			 $("#active_start_date1").val(formatDate(date_format_start));
	        	  			var date_active_end = new Date(data.active_end_date);
	        	  			var date_format_end = new Date(date_active_end).toDateString("yyyy-MM-dd");
	        	  			 
	        	  			 $("#active_end_date1").val(formatDate(date_format_end));
        	  			 $("#wip_accounting_class_code1").val(data.wip_accounting_class_code);
        	  			 $("#bcp1").val(data.bcp);
        	  			
	                	
        	  			 var user_role=localStorage.getItem('user-role');
        				 if(user_role=="Admin")
        					 {
        					 $("#myModal").show();
        					 }
        				 else{
        					 $("#myModal").hide();
        					 }			
                	});
		        },
		        
	            initComplete: function() {
	              var api = this.api();
console.log(api);
	              // Apply the search
	              api.columns().every(function() {
	                var that = this;
console.log(that);
	                $('input', this.footer()).on('keyup change', function() {
	                  if (that.search() !== this.value) {
	                    that
	                      .search(this.value)
	                      .draw();
	                  }
	                });
	              });
	            }
			 });
			 $('#eam_data').show();
			 $(".preloader").hide();
			 
		}
});
}
function modify_data()
{
	$('#example').DataTable().clear().draw();
	
	 $(".preloader").show();
	$.ajax({
		type : "GET",
		url : api + "fetch_data_by_modify",
		dataType : "json",
		success : function(response){
			console.log(response);
			
			var result = response.AttendanceOverview;
			
			 $('#example').DataTable({
	  		        data: response,
	  		        dom: 'Blfrtip',
	  		      "sScrollXInner": "110%",
	  		       "scrollX": "100%",
	  		      destroy: true, 
	  		      buttons: [
	  	            'copy', 'csv', 'excel', 'pdf', 'print'
	  	        ],
	  	      columns: [
		  	    	
	  	    	  {"data":"organization_code" },
		  	    	{ "data": "asset_area" },
		          { "data": "asset_number" },
		          { "data": "asset_name" },
		          { "data": "parent_asset_number" },
		          { "data": "asset_description" },
		          { "data": "asset_group" },
		          { "data": "department_name" },
		          { "data": "serial_number" },
		          { "data": "asset_criticality" },
		          { "data": "maintable_flag" },
		          { "data": "year_purchase" },
		          { "data": "year_manfacture" },
		          { "data": "warrenty_expiry" },
		          { "data": "asset_route" },
		          { "data": "model" },
		          { "data": "manfacture_serial_no" },
		          { "data": "make" },
		          { "data": "loto_procedure" },
		          { "data": "legacy_asset_number" }, 
		          { "data": "capacity" },
		          { "data": "active_start_date" }, 
		          { "data": "active_end_date" },
	              { "data": "wip_accounting_class_code" }, 
	              { "data": "bcp" }	             
		        ],
		        "rowCallback": function(row, data, index) {
                	$('td',row).dblclick(function() {  
                		 $("#organization_code1").val(data.organization_code);
        	  			 $("#asset_area1").val(data.asset_area);
        	  			 $("#asset_number1").val(data.asset_number);
        	  			 $("#asset_name1").val(data.asset_name);
        	  			 $("#parent_asset_number1").val(data.parent_asset_number);
        	  			 $("#asset_description1").val(data.asset_description);
        	  			 $("#asset_group1").val(data.asset_group);
        	  			 $("#department_name1").val(data.department_name);
        	  			 $("#serial_number1").val(data.serial_number);
        	  			 
        	  			 $("#asset_criticality1").val(data.asset_criticality);
        	  			 $("#maintable_flag1").val(data.maintable_flag);
        	  			 $("#year_purchase1").val(data.year_purchase);
        	  			 $("#year_manfacture1").val(data.year_manfacture);
        	  			 $("#warrenty_expiry1").val(data.warrenty_expiry);
        	  			 $("#asset_route1").val(data.asset_route);
        	  			 
        	  			 $("#model1").val(data.model);
        	  			 $("#manfacture_serial_no1").val(data.manfacture_serial_no);
        	  			 $("#make1").val(data.make);
        	  			 $("#loto_procedure1").val(data.loto_procedure);
        	  			 $("#legacy_asset_number1").val(data.legacy_asset_number);
        	  			 $("#capacity1").val(data.capacity);
        		  			var date_active_start = new Date(data.active_start_date);
	        	  			var date_format_start = new Date(date_active_start).toDateString("yyyy-MM-dd");
	        	  			function formatDate(date) {
	        	  			    var d = new Date(date),
	        	  			        month = '' + (d.getMonth() + 1),
	        	  			        day = '' + d.getDate(),
	        	  			        year = d.getFullYear();
	        	  			    if (month.length < 2) month = '0' + month;
	        	  			    if (day.length < 2) day = '0' + day;
	        	  			    return [year, month, day].join('-');
	        	  			}
	        	  			//alert(formatDate(date_format));
	        	  			
	        	  			 $("#active_start_date1").val(formatDate(date_format_start));
	        	  			var date_active_end = new Date(data.active_end_date);
	        	  			var date_format_end = new Date(date_active_end).toDateString("yyyy-MM-dd");
	        	  			 
	        	  			 $("#active_end_date1").val(formatDate(date_format_end));
         	  			
        	  			 $("#wip_accounting_class_code1").val(data.wip_accounting_class_code);
        	  			 $("#bcp1").val(data.bcp);
        	  			
	                	
        	  			 var user_role=localStorage.getItem('user-role');
        				 if(user_role=="Admin")
        					 {
        					 $("#myModal").show();
        					 }
        				 else{
        					 $("#myModal").hide();
        					 }			
                	});
		        },
		        
	            initComplete: function() {
	              var api = this.api();
console.log(api);
	              // Apply the search
	              api.columns().every(function() {
	                var that = this;
console.log(that);
	                $('input', this.footer()).on('keyup change', function() {
	                  if (that.search() !== this.value) {
	                    that
	                      .search(this.value)
	                      .draw();
	                  }
	                });
	              });
	            }
			 });
			 $('#eam_data').show();
			 $(".preloader").hide();
		}
});
}
function delete_data()
{
	$('#example').DataTable().clear().draw();
	
	 $(".preloader").show();
	$.ajax({
		type : "GET",
		url : api + "fetch_data_by_delete",
		dataType : "json",
		success : function(response){
			console.log(response);
			
			var result = response.AttendanceOverview;
			
			 $('#example').DataTable({
	  		        data: response,
	  		        dom: 'Blfrtip',
	  		      "sScrollXInner": "110%",
	  		       "scrollX": "100%",
	  		      destroy: true, 
	  		      buttons: [
	  	            'copy', 'csv', 'excel', 'pdf', 'print'
	  	        ],
	  	      columns: [
		  	    	
	  	    	  {"data":"organization_code" },
		  	    	{ "data": "asset_area" },
		          { "data": "asset_number" },
		          { "data": "asset_name" },
		          { "data": "parent_asset_number" },
		          { "data": "asset_description" },
		          { "data": "asset_group" },
		          { "data": "department_name" },
		          { "data": "serial_number" },
		          { "data": "asset_criticality" },
		          { "data": "maintable_flag" },
		          { "data": "year_purchase" },
		          { "data": "year_manfacture" },
		          { "data": "warrenty_expiry" },
		          { "data": "asset_route" },
		          { "data": "model" },
		          { "data": "manfacture_serial_no" },
		          { "data": "make" },
		          { "data": "loto_procedure" },
		          { "data": "legacy_asset_number" }, 
		          { "data": "capacity" },
		          { "data": "active_start_date" }, 
		          { "data": "active_end_date" },
	              { "data": "wip_accounting_class_code" }, 
	              { "data": "bcp" }	             
		        ],
		        "rowCallback": function(row, data, index) {
                	$('td',row).dblclick(function() {  
                		 $("#organization_code1").val(data.organization_code);
        	  			 $("#asset_area1").val(data.asset_area);
        	  			 $("#asset_number1").val(data.asset_number);
        	  			 $("#asset_name1").val(data.asset_name);
        	  			 $("#parent_asset_number1").val(data.parent_asset_number);
        	  			 $("#asset_description1").val(data.asset_description);
        	  			 $("#asset_group1").val(data.asset_group);
        	  			 $("#department_name1").val(data.department_name);
        	  			 $("#serial_number1").val(data.serial_number);
        	  			 
        	  			 $("#asset_criticality1").val(data.asset_criticality);
        	  			 $("#maintable_flag1").val(data.maintable_flag);
        	  			 $("#year_purchase1").val(data.year_purchase);
        	  			 $("#year_manfacture1").val(data.year_manfacture);
        	  			 $("#warrenty_expiry1").val(data.warrenty_expiry);
        	  			 $("#asset_route1").val(data.asset_route);
        	  			 
        	  			 $("#model1").val(data.model);
        	  			 $("#manfacture_serial_no1").val(data.manfacture_serial_no);
        	  			 $("#make1").val(data.make);
        	  			 $("#loto_procedure1").val(data.loto_procedure);
        	  			 $("#legacy_asset_number1").val(data.legacy_asset_number);
        	  			 $("#capacity1").val(data.capacity);
        		  			var date_active_start = new Date(data.active_start_date);
	        	  			var date_format_start = new Date(date_active_start).toDateString("yyyy-MM-dd");
	        	  			function formatDate(date) {
	        	  			    var d = new Date(date),
	        	  			        month = '' + (d.getMonth() + 1),
	        	  			        day = '' + d.getDate(),
	        	  			        year = d.getFullYear();
	        	  			    if (month.length < 2) month = '0' + month;
	        	  			    if (day.length < 2) day = '0' + day;
	        	  			    return [year, month, day].join('-');
	        	  			}
	        	  			//alert(formatDate(date_format));
	        	  			
	        	  			 $("#active_start_date1").val(formatDate(date_format_start));
	        	  			var date_active_end = new Date(data.active_end_date);
	        	  			var date_format_end = new Date(date_active_end).toDateString("yyyy-MM-dd");
	        	  			 
	        	  			 $("#active_end_date1").val(formatDate(date_format_end));
        	  			 
        	  			 $("#wip_accounting_class_code1").val(data.wip_accounting_class_code);
        	  			 $("#bcp1").val(data.bcp);
        	  			
	                	
        	  			 var user_role=localStorage.getItem('user-role');
        				 if(user_role=="Admin")
        					 {
        					 $("#myModal").show();
        					 }
        				 else{
        					 $("#myModal").hide();
        					 }			
                	});
		        },
		     
		        
	            initComplete: function() {
	              var api = this.api();
console.log(api);
	              // Apply the search
	              api.columns().every(function() {
	                var that = this;
console.log(that);
	                $('input', this.footer()).on('keyup change', function() {
	                  if (that.search() !== this.value) {
	                    that
	                      .search(this.value)
	                      .draw();
	                  }
	                });
	              });
	            }
		        	
			 });
			 $('#eam_data').show();
			 $(".preloader").hide();
		}
});
}
/* prograssbar for loading data */
 function EamUpdate(){
	 
 console.log("kalesha");
 
 var $form = $("#EamEdit");
var unindexed_array = $form.serializeArray();
var indexed_array = {};
$.map(unindexed_array, function(n, i){
indexed_array[n['name']] = n['value'];
});
var a=JSON.stringify(indexed_array);
console.log(a);
$.ajax({
	type : "POST",
	url : api+"update_eam_data",
	  contentType: "application/json;",
	  dataType: 'json',
    data: a,
    success: function(response) {
		 
    }
});
alert("Data Updated Successfully....!");
window.location.reload();
}
function closeModel()
{
	 $("#myModal").hide();
}
function DeleteEamData()
{
	var serail_number=$("#serial_number1").val();
	 if (confirm("Are You Sure? you want to delete "+serail_number)){
	
	 $.ajax({
		  type: 'DELETE',  
		  dataType:"json",
			url : api+"delete_eam_data",	 
	    data:{
				"serail_number":serail_number
		    },
	    success: function(response) {
			 alert(response);
			 
	    }
	});
	alert("Data Deleted Successfully....");
	 window.location.reload();
}
}
function Disable_vendor_button(){
	
	
	 var vendor_btn = document.getElementById("update_critical_process");
	 var  btn= document.getElementById("name").innerText;
	 var  btn1= document.getElementById("user_name").innerText;
	 alert(btn+"-----"+btn1);
	 
       if (btn =='Kalesha' || btn1=="Manager" || btn1=="Kalesha" || btn=="Manager") {
       	vendor_btn.disabled=true;
       } 
       else {
       	vendor_btn.disabled=false;
       }
	
}
function ProcessData() {
	
  	$('#pdf_process').show();
  	Pdf_process();
}
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
/*PROCESS TO PDF TABLE VALUES APPEND*/
function Pdf_process()
{
$("#pdf_serial_num").text($("#serial_number1").val());
$("#pdf_bia_ta").text($("#bcp1").val());
$("#pdf_org_code").text($("#organization_code1").val());
$("#pdf_ass_area").text($("#asset_area1").val());
$("#pdf_assest_number").text($("#asset_number1").val());
$("#pdf_assest_name").text($("#asset_name1").val());
$("#pdf_parent_ass_num").text($("#parent_asset_number1").val());
$("#pdf_ass_des").text($("#asset_description1").val());
$("#pdf_ass_grp").text($("#asset_group1").val());
$("#pdf_dep_name").text($("#department_name1").val());
$("#pdf_ass_critic").text($("#asset_criticality1").val());
$("#pdf_main_flag").text($("#maintable_flag1").val());
$("#pdf_year_purchase").text($("#year_purchase1").val());
$("#year_manfacture1").text($("#pdf_year_manu").val());
$("#pdf_war_expiry").text($("#warrenty_expiry1").val());
$("#pdf_ass-route").text($("#asset_route1").val());
$("#pdf_model").text($("#model1").val());
$("#pdf_man_ser_num").text($("#manfacture_serial_no1").val());
$("#pdf_loto_pro").text($("#loto_procedure1").val());
$("#pdf_leg_ass_num").text($("#legacy_asset_number1").val());
$("#pdf_make").text($("#make1").val());
$("#pdf_capcity").text($("#capacity1 ").val());
$("#pdf_active_start_date").text($("#active_start_date1").val());
$("#pdf_active_end_date").text($("#active_end_date1").val());
$("#pdf_wip_code").text($("#wip_accounting_class_code1").val());
}

function eam_file_format()
{

    window.location = "https://bcp-web.al.ge.com/BCP/crisis_roster_download_file/eam_master_file";		
}

  </script>
</body>

</html>