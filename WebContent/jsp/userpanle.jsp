<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-te-1.4.0.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<!-- User-defined java script file -->
<script type="text/javascript" src="js/userpanel.js"></script>
<link rel="stylesheet" href="css/jquery.fileupload.css">
<link rel="stylesheet" href="css/jquery.fileupload-ui.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/jquery.dataTables_themeroller.css">
<link rel="stylesheet" href="css/jquery.dataTables.css">
<link rel="stylesheet" href="css/jquery.dataTables.min.css">
<!-- User-defined CSS file -->
<link rel="stylesheet" href="css/userpanel.css">
<title>::.Buddy-User.::</title>
</head>
<body onload="javascript:window.history.forward(1);">
	<h2>Welcome to Buddy-User-Panel</h2>
	<a href="jsp/home.jsp"><img src="images/logout.png" align="right" data-toggle="tooltip" title="Logout"/></a>
	<div role="tabpanel">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
			<li role="presentation"><a href="#view" aria-controls="view" role="tab" data-toggle="tab">View Details</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active" id="profile">
				<h2 align="center">Here we need to do the profile part.</h2>
			</div>
			<div class="tab-pane" id="view">
				<h2 align="center">Here we need to do the view details part.</h2>
			</div>
		</div>
	</div>
</body>
</html>