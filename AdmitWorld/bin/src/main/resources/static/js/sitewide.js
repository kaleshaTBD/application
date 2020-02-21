function kalesha() {
	alert('1111111111');
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