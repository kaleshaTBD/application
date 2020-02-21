var counter = 1;
		//var api = "https://bcp-web.al.ge.com/BCP/CriticalVital_Process/";
	  	var api = "http://localhost:8085/BCP/CriticalVital_Process/";

$(document).ready(
		  
		
		function() {
			$.ajax({
				method : "GET",
				url : api + "fetch_site",
				contentType : "application/json",
				dataType : "json",
				success : function(result) {
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
		
			
			/* $("#txtdate").datepicker({
	               minDate: 0
	           });*/
			
			
		});
	

	

	
	

function getLinebySite() {

	var x = $("#site_name option:selected").text();

	$.ajax({
		url : api + "fetch_line",
		type : 'POST',
		data : {
			"site" : x
		},
		success : function(response) {

			//console.log(response);
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
	var x = $("#site_name option:selected").text();

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
			
			var result = response.AttendanceOverview;

			  $('#example1').DataTable({
	  		        data: response,
	  		        dom: 'Bfrtip',
	  		      destroy: true, 
	  		      buttons: [
	  	            'copy', 'csv', 'excel', 'pdf', 'print'
	  	        ],
	  	        
	  	      "columnDefs": [
	              {
	                  "targets": [ 4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,21,22,23,25 ],
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
              	$('td',row).dblclick(function() {  
              	//	 alert('sdfsd'+data.asset_number);
              	
              		 $("#site_name1").val(data.site);
              		 $("#line_id1").val(data.line);
              		 $("#asset_number1").val(data.asset_number);
              		 $("#eam_criticality1").val(data.eam_criticality);
  		  			 $("#tag_finance1").val(data.serialNo);
  		  			 $("#process_name1").val(data.process_name);
  		  			 $("#sub_process1").val(data.sub_process);
  		  			 $("#location_plant1").val(data.location_plant);
  			 
  		  			if(data.third_party == 'yes' || data.third_party == 'Yes'){
  		  				
 	  		  			 $("#third_party1").val(data.third_party.replace("yes", "Yes"));
 	  		  			}
 	  		  			else if(data.third_party == 'no' || data.third_party == 'No'){
 	  		  				
 	  		  			 $("#third_party1").val(data.third_party.replace("no", "No"));
 	  		  			}
 	  		  			else{
 	  		  			$("#third_party1").val(data.third_party);
 	  		  				
 	  		  			}
  		  			 
  		  		
  		  		
  		  			 $("#failure_mode1").val(data.failure_mode);
  		  			 $("#customers_plants1").val(data.customers_plants);
  		  			 $("#units_production1").val(data.units_production);
  		  			 $("#minimumdays_inventory_onsite1").val(data.minimumdays_inventory_onsite);
  		  			 $("#minimumdays_inventory_remote1").val(data.minimumdays_inventory_remote);
  		  			 
  		  			 alert('hii');
  		  			 alert( data.backup_process.[A-Z ]+);
  		  			var test = $("data.backup_process").val().replace(/^[A-Za-z]*$/g, "");
  		  			alert(test);
  		  			if(data.backup_process == 'yes-on-site' || data.backup_process == 'Yes-On-site' || data.backup_process == 'yes-On-Site' || data.backup_process == 'Yes-On-Site' || data.backup_process == 'yes-On-Site'){
  		  				
  		  			 $("#backup_process1").val("Yes-On-Site");
  		  			}
  		  			else if(data.backup_process == 'yes-off-site' || data.backup_process == 'Yes-Off-site' || data.backup_process == 'yes-Off-Site' || data.backup_process == 'Yes-Off-Site'|| data.backup_process == 'yes-Off-Site'){
  		  				
  		  			 $("#backup_process1").val("Yes-Off-Site");
  		  			}
  		  			else{
  		  			$("#backup_process1").val(data.backup_process);
  		  				
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
  		  			 $("#days_replace1").val(data.days_replace);
  		  			 $("#cost_replacement1").val(data.cost_replacement);
  		  			 $("#impact1").val(data.impact);
  		  			 $("#crictical_reasoning1").val(data.crictical_reasoning);
  		  			 
              		 $('#addModal').modal('show');
              		 $('#pdf_process').hide();
              		 
              		if($("#backup_process1").val() =='Yes-On-Site' || $("#backup_process1").val() =='Yes-Off-Site') {
        				
                      $('.BackUp1').show();
        			}
        			else{
        			  $('.BackUp1').hide();
        			}
              		//  Disable_button();
              		

       			 if($('#third_party1').val()=='yes' || $('#third_party1').val()=='Yes'){
       							 document.getElementById('Add_Vendor').disabled=false; 
       						 }else
       						 {
       							 
       							 document.getElementById('Add_Vendor').disabled=true; 
       						 }
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
	var x = $("#site_name option:selected").text();
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
				
				var result = response.AttendanceOverview;

				  $('#example1').DataTable({
		  		        data: response,
		  		        dom: 'Bfrtip',
		  		      destroy: true, 
		  		      buttons: [
		  	            'copy', 'csv', 'excel', 'pdf', 'print'
		  	        ],
		  	        
		  	      "columnDefs": [
		              {
		                  "targets": [ 4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,20,21,22,23,25 ],
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
	              	$('td',row).dblclick(function() {  
	              	//	 alert('sdfsd'+data.asset_number);
	              	
	              		 $("#site_name1").val(data.site);
	              		 $("#line_id1").val(data.line);
	              		 $("#asset_number1").val(data.asset_number);
	              		 $("#eam_criticality1").val(data.eam_criticality);
	  		  			 $("#tag_finance1").val(data.serialNo);
	  		  			 $("#process_name1").val(data.process_name);
	  		  			 $("#sub_process1").val(data.sub_process);
	  		  			 $("#location_plant1").val(data.location_plant);
	  			 
	  		  			if(data.third_party == 'yes' || data.third_party == 'Yes'){
	  		  				
	 	  		  			 $("#third_party1").val(data.third_party.replace("yes", "Yes"));
	 	  		  			}
	 	  		  			else if(data.third_party == 'no' || data.third_party == 'No'){
	 	  		  				
	 	  		  			 $("#third_party1").val(data.third_party.replace("no", "No"));
	 	  		  			}
	 	  		  			else{
	 	  		  			$("#third_party1").val(data.third_party);
	 	  		  				
	 	  		  			}
	  		  			 
	  		  		
	  		  		
	  		  			 $("#failure_mode1").val(data.failure_mode);
	  		  			 $("#customers_plants1").val(data.customers_plants);
	  		  			 $("#units_production1").val(data.units_production);
	  		  			 $("#minimumdays_inventory_onsite1").val(data.minimumdays_inventory_onsite);
	  		  			 $("#minimumdays_inventory_remote1").val(data.minimumdays_inventory_remote);
	  		  			 
	  		  			if(data.backup_process == 'yes-on-site' || data.backup_process == 'Yes-On-site' || data.backup_process == 'yes-On-Site' || data.backup_process == 'Yes-On-Site' || data.backup_process == 'yes-On-Site'){
	  		  				
	  		  			 $("#backup_process1").val("Yes-On-Site");
	  		  			}
	  		  			else if(data.backup_process == 'yes-off-site' || data.backup_process == 'Yes-Off-site' || data.backup_process == 'yes-Off-Site' || data.backup_process == 'Yes-Off-Site'|| data.backup_process == 'yes-Off-Site'){
	  		  				
	  		  			 $("#backup_process1").val("Yes-Off-Site");
	  		  			}
	  		  			else{
	  		  			$("#backup_process1").val(data.backup_process);
	  		  				
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
	  		  			 $("#days_replace1").val(data.days_replace);
	  		  			 $("#cost_replacement1").val(data.cost_replacement);
	  		  			 $("#impact1").val(data.impact);
	  		  			 $("#crictical_reasoning1").val(data.crictical_reasoning);
	  		  			 
	              		 $('#addModal').modal('show');
	              		 $('#pdf_process').hide();
	              		 
	              		if($("#backup_process1").val() =='Yes-On-Site' || $("#backup_process1").val() =='Yes-Off-Site') {
	        				
	                      $('.BackUp1').show();
	        			}
	        			else{
	        			  $('.BackUp1').hide();
	        			}
	              		//  Disable_button();
	              		

	       			 if($('#third_party1').val()=='yes' || $('#third_party1').val()=='Yes'){
	       							 document.getElementById('Add_Vendor').disabled=false; 
	       						 }else
	       						 {
	       							 
	       							 document.getElementById('Add_Vendor').disabled=true; 
	       						 }
	              	});
	               }
		  	     });
				 $("#example").hide();
				 $("#example_wrapper").hide();
				 $("#example1").show();
				 

				 
			   },
			});
}




function GetVendorDetails1() {
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
	                    	$('td',row).dblclick(function() {  
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











function InsertBCPInputs1() {
	
	if($("#site").val()=='' || $("#site").val()=='')
		{
		alert('please Select a site....');	
		return true;		
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
	

	if($("#third_party").val() == 'Yes' || $("#third_party").val() == 'yes')
		{
	validate();
		}
	
	var $form = $("#myForm");
	var unindexed_array = $form.serializeArray();
    var indexed_array = {};
 
    $.map(unindexed_array, function(n, i){
        indexed_array[n['name']] = n['value'];
    });
	
    var a=JSON.stringify(indexed_array);
console.log(a);
$(".preloader1").show();
$.ajax({
	url : api + "add",
	  type: 'POST',
	  data: a,
	  contentType: 'application/json; charset=utf-8',
	  success : function(response) {
		  
		  alert('Process Added Successfully....!');
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
	    	
	       /* if (this.readyState == XMLHttpRequest.DONE && this.status == 200) {
	            alert('Data Addedd...!');
	            $(".preloader1").hide();
	            window.location.reload();
	           
	        }*/
	        
	        if (this.readyState == XMLHttpRequest.DONE && this.status == 200) {
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
	  	  		  			 $("#days_replace1").val(data.days_replace);
	  	  		  			 $("#cost_replacement1").val(data.cost_replacement);
	  	  		  			 $("#impact1").val(data.impact);
	  	  		  			 $("#crictical_reasoning1").val(data.crictical_reasoning);
	  	  		  			 //$("#site_name1").val(data.site_name);
	  	  		  			 
		  	              	 $('#printdata').show();
		  	              	 $(".report-footer").show();
		  	              	 $("#process").text(data.process_name);
	  	              	     $("#impact-rating").text(data.impact);
	  	                     $("#sub-process").text(data.sub_process);
	  	                     $("#eam").text(data.eam_criticality);
		  	              	 $("#location").text(data.location_plant);
	  	              	     //$("#ppd").text(data.impact);
	  	                     //$("#criticality").text(data.sub_process);
	  	                     $("#customers").text(data.customers_plants);
		  	              	 //$("#si-units").text(data.process_name);
	  	              	     $("#failure-mode").text(data.failure_mode);
	  	                     $("#impact-reasoning").text(data.impact);
	  	                  
	  	              	});
	  	              	
	  	               }
	  				  });
	  		}    
	  			
	  	
	  })
}




function getInActiveData()
{
	 $.ajax({
	  		type : "GET",	
	  		url : api+"in_avtive_processes",			
	  		dataType:"json",
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
		  	              	
	  	                  
	  	              	});
	  	              	
	  	               }
	  			
				  });
	  			
	  		}
	 })
}




/*function activeProcess()
{
	var eamserialno = document.getElementById("pdf_assest_number1").innerText;
//alert(eamserialno);	

	$.ajax({
		type : "POST",	
		data : {
	  		"asset_number": eamserialno
	  		},
		url : api+"get_process_end_date",	
		dataType: 'json',
		success : function(date) {
				console.log(date);
				 $(".sample").append("<div>Name: " + date + "</div>");
				 alert('hi this is lkl');
				
		}	
	  		
});
*/
	
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
	

	
//function closemodalVendors1()


/*
 var $form = $("#VendorData1");


 var unindexed_array = $form.serializeArray();
    var indexed_array = {};

    $.map(unindexed_array, function(n, i){
        indexed_array[n['name']] = n['value'];
    });
	
    var a1=JSON.stringify(indexed_array);
console.log(a1);

$.ajax({
	url : api + "add_vendor_by_update",
	  type: 'POST',
	  data:a1,
		 
	  contentType: 'application/json; charset=utf-8'
	})

	addVendorData2();

counter=counter+2;
	var asset = document.getElementById("asset_number").value;
	//alert(asset)
	if(asset==""){
		validate();
	}
	document.getElementById('myModal').style.display ='none';

}*/

/*function deleteRows() {
	 document.getElementById("tablebody").deleteRow(0);
	}
	function closemodalVendors(){
		
		var asset = document.getElementById("asset_number").value;
		//alert(asset)
		if(asset==""){
			validate();
		}
		document.getElementById('myModal').style.display ='none';
		
	}
	function addVendor(){
		$('#myModal1').show();
		
	}
*/

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
	
	var $form = $("#AP1Edit");
	var unindexed_array = $form.serializeArray();
    var indexed_array = {};

    $.map(unindexed_array, function(n, i){
        indexed_array[n['name']] = n['value'];
    });
	
    var a=JSON.stringify(indexed_array);
console.log(a);

$.ajax({
	url : api + "update_process",
	  type: 'POST',
	  data: a,
	  contentType: 'application/json; charset=utf-8'
	})
alert("Updated Successfully..!!");
location.reload();
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

/*$.ajax({
	url : api + "add",
	  type: 'POST',
	  data: a,
	  contentType: 'application/json; charset=utf-8'
	})*/
	
	
document.forms["LaborData"].submit();
}





