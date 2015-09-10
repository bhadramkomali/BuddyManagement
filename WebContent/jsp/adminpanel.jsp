<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-te-1.4.0.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/adminpanel.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/jquery.fileupload.css">
<link rel="stylesheet" href="css/jquery.fileupload-ui.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/jquery.dataTables_themeroller.css">
<link rel="stylesheet" href="css/jquery.dataTables.css">
<link rel="stylesheet" href="css/jquery.dataTables.min.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/adminpanel.css">
<title>::.Buddy-Admin.::</title>
</head>
<body onload="javascript:window.history.forward(1);">
	<h2>Welcome to Buddy-Admin-Panel</h2>
	<a href="jsp/home.jsp"><img src="images/logout.png" align="right"
		data-toggle="tooltip" title="Logout" /></a>
	<div role="tabpanel">
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#calculate"
				aria-controls="calculate" role="tab" data-toggle="tab">Calculate</a></li>
			<li role="presentation"><a href="#users" aria-controls="users"
				role="tab" data-toggle="tab">Users</a></li>
			<li role="presentation"><a href="#reports"
				aria-controls="profile" role="tab" data-toggle="tab">Reports</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Calculte Tab -->
			<div class="tab-pane active" id="calculate">
				<h2>Calculate the daily expense</h2>
				<div class="form-style-2">
					<form action="#" method="post">
						<label for="purchasebuddy"> 
						<span>Purchased Buddy<span class="required">*</span></span> 
						<select name="purchasebuddy" class="select-field">
								<option>--Buddy--</option>
								<option>bhadram</option>
								<option>komali</option>
								<option>bhaskar</option>
								<option>dayam</option>
						</select>
						</label>
						<label for="amountspent"> 
							<span>Amount Spent<span class="required">*</span></span> 
							<input type="text" class="input-field" name="amountspent" value="" />
						</label> 
						<label for="applicablebuddies"> 
							<span>Applicable buddies<span class="required">*</span></span> 
							<select name="applicablebuddies" class="select-field" multiple="multiple">
									<option>bhadram</option>
									<option>komali</option>
									<option>bhaskar</option>
									<option>dayam</option>
							</select>
						</label>
						<label for="purpose"> 
							<span>Purpose<span class="required">*</span></span> 
							<select name="purpose" class="select-field">
								<option>--Purpose--</option>
								<option>Curries</option>
								<option>Internet</option>
								<option>Gas</option>
								<option>other</option>
							</select>
						</label>
						<label for="date"> <span>Date<span class="required">*</span></span>
							<input type="text" class="input-field" name="date" value="" />
						</label> 
						<label>
							<input type="submit" value="Submit" /> <span>&nbsp;</span>
							<input type="reset" value="Cancel" />
						</label>
					</form>
				</div>
			</div>
			<!-- User Tab -->
			<div class="tab-pane" id="users">
				<div id="adduserdiv">
					<div class="form-style-2">
							<input type="submit" class="inuput-button" name="adduser" value="AddUser" id="adduser"/>
					</div>
				</div>
				<div id="existingusers">
					<h2>Existing Users</h2>
					<table id="existinguserstable"></table>
				</div>

			</div>
			<!-- Reports Tab -->
			<div class="tab-pane" id="reports">
				<h2 align="center">Here we need to do the reports part.</h2>
			</div>
		</div>
	</div>

	<!-- bootstrap dialogue  for edit user-->

	<div id="editModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Edit DocumentName</h4>
				</div>
				<div class="modal-body">
					<div align="center" id="section1">
						<table id="updateTable">
							<tr>
								<td align="right"><b>DocumentName:</b></td>
								<td><input type="text" name="updateddocumentname"
									id="updateddocumentname"> <input type="hidden"
									name="editdocumentid" id="editdocumentid"></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="editrule">Save</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					<!-- <button type="button" class="btn btn-primary">Save changes</button> -->
				</div>
			</div>
		</div>
	</div>

	<!-- boot strap dialogue for delete user -->

	<div id="deleteModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">Delete Rule</h4>
				</div>
				<div class="modal-body">
					<p>Do you really want to delete this rule?</p>
					<input type="hidden" name="deletedocumentid" id="deletedocumentid">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="deleterule">Delete</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
					<!-- <button type="button" class="btn btn-primary">Save changes</button> -->
				</div>
			</div>
		</div>
	</div>

	<!-- boot strap dialogue for add user -->
	<div id="addModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">New User Registration</h4>
				</div>
				<div class="modal-body">
					<div class="form-style-2">
						<form action="#" method="post" onsubmit="">
							<label for="username"> 
								<span>User Name<span class="required">*</span></span> 
								<input type="text" class="input-field" name="username" value="" />
							</label> 
							<label for="loginname"> 
								<span>Login Name<span class="required">*</span></span> 
								<input type="text" class="input-field" name="loginname" value="" />
							</label>
							<label for="password"> 
								<span>Password<span class="required">*</span></span> 
								<input type="password" class="input-field" name="password" value="" />
							</label>
							<label for="repassword"> 
								<span>Re-Password<span class="required">*</span></span> 
								<input type="password" class="input-field" name="repassword" value="" />
							</label>
							<label for="phone"> 
								<span>Phone No</span> 
								<input type="text" class="input-field" name="phone" value="" />
							</label>
							<label for="email"> 
								<span>Em@il</span> 
								<input type="text" class="input-field" name="email" value="" />
							</label>
						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="adduser">Add</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>