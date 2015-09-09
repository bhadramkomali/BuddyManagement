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
			<div class="tab-pane active" id="calculate">
				<h2>Calculate the daily expenses</h2>
				<div id="calculateform">
					<form action="#" method="post">
						<table id="calulatetable">
							<tr>
								<td class="alnright">Purchaser Buddy:</td>
								<td><select name="purchaser">
										<option>bhadram</option>
										<option>komali</option>
										<option>bhaskar</option>
										<option>dayam</option>
								</select></td>
							</tr>
							<tr>
								<td class="alnright">Amount Spent:</td>
								<td><input type="text" name="amountspent" /></td>
							</tr>
							<tr>
								<td class="alnright">Applicable Buddies:</td>
								<td><select name="applicablebuddies" multiple="multiple">
										<option>bhadram</option>
										<option>komali</option>
										<option>bhaskar</option>
										<option>dayam</option>
								</select></td>
							</tr>
							<tr>
								<td class="alnright">Purpose</td>
								<td><select name="purpose">
										<option>Curries</option>
										<option>Internet</option>
										<option>Gas</option>
										<option>other</option>
								</select></td>
							</tr>
							<tr style="display: none;">
								<td class="alnright">Other</td>
								<td><input type="text" name="other" /></td>
							</tr>
							<tr>
								<td class="alnright">Date:</td>
								<td><input type="text" id="datepicker"/></td>
							</tr>
							<tr>
								<td class="alnright"><input type="submit" value="Calculate" /></td>
								<td><input type="reset" value="Cancel" /></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="tab-pane" id="users">
				<div id="adduserdiv">
					<table>
						<tr>
							<td><h4>Add a new user:</h4></td>
							<td><button id="adduser">AddUser</button></td>
						</tr>
					</table>
				</div>
				<div id="existingusers">
					<h2>Existing Users</h2>
					<table id="existinguserstable"></table>
				</div>

			</div>
			<div class="tab-pane" id="reports">
				<h2 align="center">Here we need to do the reports part.</h2>
			</div>
		</div>
	</div>
	
	<!-- bootstrap dialogue  for edit-->

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

	<!-- boot strap dialogue for delete -->

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
	
	<!-- boot strap dialogue for add -->
	<div id="addModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">New User Registration</h4>
				</div>
				<div class="modal-body">
					<p>Here We need to add the new user elements.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="deleterule">Add</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
					<!-- <button type="button" class="btn btn-primary">Save changes</button> -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>