$(document).ready(function() {
	$("#adduser").click(function() {
		$("#addModal").modal('show');
	});
	$(function() {
	    $( "#datepicker" ).datepicker();
	});
	$("#purpose").change(function() {
		if($("#purpose option:selected").val() == "other")
			$("#hidedrow").show();
		else
			$("#hidedrow").hide();
	}
	);
});
		