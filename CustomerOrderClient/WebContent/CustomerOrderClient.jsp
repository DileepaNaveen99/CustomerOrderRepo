<%@page import="CustomerOrderModel.CustomerOrder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/customerOrder.js"></script>

</head>
<body>

<div class="container"><div class="row"><div class="col-6">

	<h1>Customer Management</h1>

	<form id="formCustomer" name="formCustomer">
 
 		Name:
 		<input id="customerName" name="customerName" type="text"
 					class="form-control form-control-sm">
 
 		<br> Age:
 		<input id="customerAge" name="customerAge" type="text"
 					class="form-control form-control-sm">
 
 		<br> Phone:
 		<input id="customerPhone" name="customerPhone" type="text"
 					class="form-control form-control-sm">
 					
 		<br> Address:
 		<input id="customerAddress" name="customerAddress" type="text"
 					class="form-control form-control-sm">
 					
 		<br> Email:
 		<input id="customerEmail" name="customerEmail" type="text"
 					class="form-control form-control-sm">
 
 		<br> Password:
 		<input id="customerPassword" name="customerPassword" type="text"
 					class="form-control form-control-sm">
 		<br>
 		<input id="btnSave" name="btnSave" type="button" value="Save"
 					class="btn btn-primary">
 
 		<input type="hidden" id="hidItemIDSave"
 					name="hidItemIDSave" value="">

	</form>
		<div id="alertSuccess" class="alert alert-success"></div>
		<div id="alertError" class="alert alert-danger"></div>

	<br>
	<div id="divItemsGrid">
 		<%
 			CustomerOrder custObj = new CustomerOrder();
 			out.print(custObj.readCustomers());
 		%>
	</div>

</div> </div> </div>

</body>
</html>