<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <meta charset="utf-8">
   <meta http-equiv="refresh" content="300">
  <title>Business Continuity Management</title>
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

  <!-- Responsive Stylesheet File -->
  <link href="css/responsive.css" rel="stylesheet">

<style>

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  right: 0;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.dropdownmenu a
{
padding:15px 20px !important;
}
.dropdown-content a:hover {background-color: #f1f1f1;}
.dropdown:hover .dropdown-content {display: block;}
.dropdown:hover .dropbtn {background-color: #3e8e41;}
@media only screen and (min-width:320px) and (max-width:1024px)
{
.arrow-mobile
{
display:none;
}
}
.style-fa
{
font-size: 40px;
    color: red;

 

    vertical-align: center;
   
    margin-top: -12px;
}

 

.modal.right .modal-dialog {
        position: fixed;
        margin: auto;
        width: 600px;
        height: 100%;
        -webkit-transform: translate3d(0%, 0, 0);
            -ms-transform: translate3d(0%, 0, 0);
             -o-transform: translate3d(0%, 0, 0);
                transform: translate3d(0%, 0, 0);
    }

 

    
    .modal.right .modal-content {
        height: 100%;
        overflow-y: auto;
    }
    
    
    .modal.right .modal-body {
        padding: 15px 15px 80px;
    }

 


        
/*Right*/
    .modal.right.fade .modal-dialog {
        right: -320px;
        -webkit-transition: opacity 0.3s linear, right 0.3s ease-out;
           -moz-transition: opacity 0.3s linear, right 0.3s ease-out;
             -o-transition: opacity 0.3s linear, right 0.3s ease-out;
                transition: opacity 0.3s linear, right 0.3s ease-out;
    }
    
    .modal.right.fade.in .modal-dialog {
        right: 0;
    }

 

/* ----- MODAL STYLE ----- */
    .modal-content {
        border-radius: 0;
        border: none;
    }

 

    .modal-header {
        border-bottom-color: #EEEEEE;
        background-color: #FAFAFA;
    }

 

/* ----- v CAN BE DELETED v ----- */

 

#accordion .panel-heading { padding: 0;}
#accordion .panel-title > a {
    display: block;
    padding: 0.4em 0.6em;
    outline: none;
    font-weight:bold;
    text-decoration: none;
}

 

#accordion .panel-title > a.accordion-toggle::before, #accordion a[data-toggle="collapse"]::before  {
    content:"\e113";
    float: left;
    font-family: 'Glyphicons Halflings';
    margin-right :1em;
}
#accordion .panel-title > a.accordion-toggle.collapsed::before, #accordion a.collapsed[data-toggle="collapse"]::before  {
    content:"\e114";
}
.panel-default>.panel-heading {
border: 1px solid #2286e2 !important;
}
.panel-default>.panel-heading+.panel-collapse>.panel-body
{
background-color: #edeeef;
}
</style>

  <!-- =======================================================
    Theme Name: eBusiness
    Theme URL: https://bootstrapmade.com/ebusiness-bootstrap-corporate-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body onLoad="noBack();" oncontextmenu="return false" onpageshow="if (event.persisted) noBack();" onUnload="">

<div class="row">
<div class="col-md-2">
<a href="/BCP/"><img src="img/ge_haier_logo1.png" alt="" class="responsive center-block" /></a>
</div>
<div class="col-md-7">
<h1 style="color: #003B71;font-weight: bold;">Business Continuity Management</h1>
</div>
<div class="col-md-3 dropdown">
   <br><h3 style="color: #003B71;font-weight: bold;">Welcome : <span id="name" style="color:red;font-size:20px;">kalesha</span></h3>
<div class="dropdown-content">
    <a onclick='A()'>Log Out</a>
   </div>
</div>
</div>

  <div class="row">

  <nav id="menu">
  <label for="tm" id="toggle-menu">Menu<span class="drop-icon">▾</span></label>
  <input type="checkbox" id="tm">
  <ul class="main-menu clearfix">
   
   <!--  <li><a href="#">Emergency Response</a>
       </li> -->
       
       <li><a href="#">Select Site
        <span class="drop-icon">▾</span>
        <label title="Toggle Drop-down" class="drop-icon" for="sm1">▾</label>
      </a>
      <input type="checkbox" id="sm1">
      <ul class="sub-menu dropdownmenu">
      
       <li><a href="#">USA
	            <i class="fa fa-long-arrow-right arrow-mobile"></i>
	             <label title="Toggle Drop-down" class="drop-icon" for="sm2">▾</label>
	         </a>
	          <input type="checkbox" id="sm2">
	          <ul class="sub-menu">
	          <li><a href="#">Appliance Park, KY
	           <i class="fa fa-long-arrow-right arrow-mobile"></i>
	            <label title="Toggle Drop-down" class="drop-icon" for="sm3">▾</label>
	            </a>
	          <input type="checkbox" id="sm3">
	          <ul class="sub-menu">
	           <li><a href="/BCP/AP1">Ap1</a></li>
	          <li><a href="/BCP/AP2">Ap2</a></li>
	          <li><a href="/BCP/AP3">Ap3</a></li>
	          <li><a href="/BCP/AP4">Ap4</a></li>
	          <li><a href="/BCP/AP5">Ap5</a></li>
	          </ul>
	        </li>
	        <li><a href="/BCP/Evansville">Evansville, IN</a></li>
	        <li><a href="/BCP/Forum-Louisville">Forum, Louisville</a></li>
	        <li><a href="/BCP/Louisville-KY">Louisville, KY</a></li>
	        <li><a href="#">Selemer-MRO
	              <i class="fa fa-long-arrow-right arrow-mobile"></i>
	             <label title="Toggle Drop-down" class="drop-icon" for="sm4">▾</label>
	            </a>
	          <input type="checkbox" id="sm4">
	          <ul class="sub-menu">
	            <li><a href="/BCP/Selmer-TN-MRO-Refrigeration-Building-1">Selmer-TN-MRO-Refrigeration-Building-1</a></li>
	            <li><a href="/BCP/Selmer-TN-MRO-Building-2">Selmer-TN-MRO-Building-2</a></li>
	            <li><a href="/BCP/Selmer-TN-MRO-WHSE">Selmer-TN-MRO-WHSE</a></li>
	          </ul>
	        </li>
	         <li><a href="/BCP/Decatur-AL-DPO">Decatur, AL - DPO</a></li>
	         <li><a href="/BCP/Camden-SC">Camden, SC      </a></li>
	         <li><a href="/BCP/Lafayette-GA-Roper-RPO">Lafayette,GA - Roper RPO</a></li>
	         <li><a href="/BCP/Rapid City-SD-ASI">Rapid City, SD - ASI</a></li>
	         <li><a href="/BCP/Memphis-TN-ASI">Memphis, TN - ASI</a></li>
	         <li><a href="/BCP/Atlanta-GA-FS">Atlanta, GA - FS</a></li>
	         <li><a href="/BCP/Phoenix-AZ-FS">Phoenix, AZ - FS  </a></li>
	         <li><a href="/BCP/Carolina-PR-DWF">Carolina, PR - DWF</a></li>
	          </ul>
          </li>
          <li><a href="#">China
	             <i class="fa fa-long-arrow-right arrow-mobile"></i>
	             <label title="Toggle Drop-down" class="drop-icon" for="sm5">▾</label>
               </a>
		         <input type="checkbox" id="sm5">
			          <ul class="sub-menu">
			            <li><a href="/BCP/Shanghai">Shanghai</a></li>
			            <li><a href="/BCP/Guangzhou">Guangzhou</a></li>
			          </ul>
           </li>
           <li><a href="/BCP/Korea">Korea</a></li>
           <li><a href="#">India
	         <i class="fa fa-long-arrow-right arrow-mobile"></i>
	             <label title="Toggle Drop-down" class="drop-icon" for="sm6">▾</label>
	         </a>
	          <input type="checkbox" id="sm6">
	          <ul class="sub-menu">
	            <li><a href="/BCP/Hyderabad">Hyderabad</a></li>
	            <li><a href="/BCP/Bangalore">Bangalore</a></li>
	          </ul>
          </li>
      </ul>
    </li>

   <ul> <li><a href="/BCP/eam_page" target="_blank">Eam Master</a></li></ul>
    <ul class="nav navbar-nav navbar-right"> <li><a href="#" data-toggle="modal" data-target="#helpModal" style="border:none"><i class="fa fa-question style-fa"></i></a></li></ul>
       

  </ul>
</nav>

  <!-- <div class="col-md-2"></div> -->
  
  </div>     

<!-- <body data-spy="scroll" data-target="#navbar-example"> -->

  <div id="preloader"></div>
  <!-- <helpmodal> -->
  
<div class="modal right fade"id="helpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">

 

                <div class="modal-header" style="background-color:#0f2941">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="opacity:1"><span aria-hidden="true" style="color:red">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel2" style="color:#fff">Help</h4>
                </div>

 

                <div class="modal-body">
                     <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                      Collapsible Group Item #2
                    </a>
                  </h4>
                </div>
                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                  <div class="panel-body">
                    Anim pariatur cliche reprehenderit, enim eiusmod highersonyou probably haven't heard of them accusamus labore sustainable VHS.
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                      Collapsible Group Item #3
                    </a>
                  </h4>
                </div>
                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="panel-body">
                                      Anim pariatur cliche reprehenderit, enim eiusmod highersonyou probably haven't heard of them accusamus labore sustainable VHS.
                  
                  </div>
                </div>
              </div>
            </div>
                </div>

 

            </div><!-- modal-content -->
        </div><!-- modal-dialog -->
    </div>
    
<!-- close -->

  <header>
    <!-- header-area start -->    
    <!-- header-area end -->
  </header>
  <!-- header end -->
  <!-- Start Slider Area -->
  <div id="home" class="slider-area">
    <div class="bend niceties preview-2">
      <div id="ensign-nivoslider" class="slides">
      <!--   <img src="img/slider/slider3.jpg" alt="" title="#slider-direction-1" /> -->
       <!--  <img src="img/slider/slider2.jpg" alt="" title="#slider-direction-2" /> -->
        <img src="img/slider/slider5.png" alt="" title="#slider-direction-3" />
              <!--  <img src="img/slider/slider4.png" alt="" title="#slider-direction-3" /> -->
      </div>

      <!-- direction 1 -->
      <div id="slider-direction-1" class="slider-direction slider-one">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="slider-content">
                <!-- layer 1 -->
                <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
                  <h2 class="title1">GE Appliances</h2>
                </div>
                <!-- layer 2 -->
                <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                  <h1 class="title2">Business  Continuity Planning</h1>
                </div>
           
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- direction 3 -->
      <div id="slider-direction-3" class="slider-direction slider-two">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="slider-content">
                <!-- layer 1 -->
                <div class="layer-1-1 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                  <h2 class="title1">GE Appliances</h2>
                </div>
                <!-- layer 2 -->
                <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                  <h1 class="title2">Business  Continuity Planning</h1>
                </div>
              
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div></div>

  
  
  <!-- End Slider Area -->


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

  <!-- JavaScript Libraries -->
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


  <script src="js/main.js"></script>
  
  <script>

  document.onkeydown = function(e) {
      if (e.ctrlKey && 
          (e.keyCode === 67 || 
           e.keyCode === 86 || 
           e.keyCode === 85 ||
           e.keyCode === 123|| 
           e.keyCode === 117)) {
          alert('not allowed');
          return false;
      } else {
          return true;
      }
};

$(document).keydown(function (event) {
	event.preventDefault();
	event.stopPropagation();
	
    if (event.keyCode == 123) { // Prevent F12
    	 alert('not allowed');
        return false;
    } else if (event.ctrlKey && event.shiftKey && event.keyCode == 73) { // Prevent Ctrl+Shift+I  
    	 alert('not allowed');      
        return false;
    }
});

$(document).ready(function() {
                           $.ajax({
                                  method : "GET",
                                  url : "https://bcp-web.al.ge.com/BCP/login",
                                  dataType : "json",
                                  success : function(result) {
                                                console.log(result);
                                                
                                                localStorage.setItem('user-name', result.userName);
                                                localStorage.setItem('user-role', result.role);
                                                localStorage.setItem('user-site', result.site);
                                                localStorage.setItem('user-id', result.userId);

                                                document.getElementById("name").innerHTML = result.userName;
                                         
                                  }
                                         });

                     
                     
                     });

      //localStorage.setItem('user-name', "Kalesha Shaik");
    //  localStorage.setItem('user-role', "Admin");
   //   localStorage.setItem('user-site', "Lafayette-GA-Roper-RPO");
     //localStorage.setItem('user-id', "515118476");
       
  document.getElementById("name").innerHTML = localStorage.getItem('user-name'); 

  
 
  function A() {

       if (confirm('Are You Sure....!') == true) {

              var x = document.cookie;
              alert(x);
              
                 window.location.href='https://bcp-web.al.ge.com/BCP/';
                  return true;
                } else {
                  return false;
                }

  }

function noBack()
{
       
     window.history.forward();
}

  </script>
</body>

</html>

