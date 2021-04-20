<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/categoryCard.css" />
<!-- Required CSS Files -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/orders.css" />

<title>Orders</title>



</head>
<body>

<div class="container">
	<!-- Section: Header -->
	<jsp:include page="../common/header.jsp"></jsp:include>

	<!-- Section: Header -->

<div class="div_inline">
	<!--list_group -->
	<div class="list_group">
	<div class="card categ-card">
		<div class="card-header categ-card-header">
			<h3>Browse Categories</h3>
		</div>
		<ul class="list-group list-group-flush categ-card-list">
			<li class="list-group-item categ-card-item selected">All
				Categories</li>
			<li class="list-group-item categ-card-item">Family & Health</li>
			<li class="list-group-item categ-card-item">Fitness & Diet</li>
			<li class="list-group-item categ-card-item">Pre-School &
				Day-Care</li>
			<li class="list-group-item categ-card-item">Computing & IT</li>
			<li class="list-group-item categ-card-item">Business &
				Management</li>
			<li class="list-group-item categ-card-item">Comedy & Humour</li>
		</ul>
	</div>
</div>
	<!-- Table -->
	
	<div class="container_table">
		<h1>Orders</h1>

	<div class="table-responsive">

		<table class="table table-borderless table-hover" style="border:1px solid lightblue;border-radius:20px;">
			<thead class="table" style="background-color:#E0F0F6;">
				<tr>
					<th > &nbsp &nbsp Order ID</th>
					<th>Status</th>
					<th>Total Price</th>
				</tr>
			</thead>
			<tr>
				<td > &nbsp &nbsp #123</td>
				<td>Delivered</td>
				<td>100.50Dhs</td>
			</tr>
			<tr>
				<td > &nbsp &nbsp #124</td>
				<td>Processing</td>
				<td>110.50Dhs</td>
			</tr>
			<tr>
				<td > &nbsp &nbsp #125</td>
				<td>Delivered</td>
				<td>1800.50Dhs</td>
			</tr>
			<tr>
				<td > &nbsp &nbsp #126</td>
				<td>Processing</td>
				<td>108.50Dhs</td>
			</tr>
			<tr>
				<td >  &nbsp &nbsp #127</td>
				<td>Processing</td>
				<td>200.50Dhs</td>
			</tr>
		</table>
		</div>
	</div>
	</div>



	<!-- Section: Footer -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- Section: Footer -->
	</div>
</body>
</html>