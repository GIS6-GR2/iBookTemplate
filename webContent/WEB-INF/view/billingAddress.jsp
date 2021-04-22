<%@page import="beans.*"%>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css" />

<!-- Required CSS Files -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myAccountForms.css" />

<% Client user = (Client) request.getAttribute("User"); %>
<div class="container section-content">
	<form method="get">
	<div class="card">
		<ul class="list-group list-group-flush">
			<li class="list-group-item d-flex align-items-center">
				<div class="col text-muted font-weight-normal"
					style="font-size: 14px; text-align: left;">First Name</div>
				<div class="col input-group-prepend">
					<input name="fname" class="form-control input-transparent inpt"
						value="<%= user.getFirstName() %>" />
				</div>
			</li>

			<li class="list-group-item d-flex align-items-center">
				<div class="col text-muted font-weight-normal"
					style="font-size: 14px; text-align: left;">Last Name</div>
				<div class="col input-group-prepend">
					<input name="lname" class="form-control input-transparent inpt"
						value="<%= user.getLastName() %>" />
				</div>
			</li>

			<li class="list-group-item d-flex align-items-center">
				<div class="col text-muted font-weight-normal"
					style="font-size: 14px; text-align: left;">City</div>
				<div class="col input-group-prepend">
					<input name="city" class="form-control input-transparent inpt"
						value="<%= user.getCity() %>" />
				</div>
			</li>

			<li class="list-group-item d-flex align-items-center">
				<div class="col text-muted font-weight-normal"
					style="font-size: 14px; text-align: left;">Address</div>
				<div class="col input-group-prepend">
					<input name="address" class="form-control input-transparent inpt"
						value="<%= user.getAdress() %>" />
				</div>
			</li>

			<li class="list-group-item d-flex align-items-center">
				<div class="col text-muted font-weight-normal"
					style="font-size: 14px; text-align: left;">Postal Code</div>
				<div class="col input-group-prepend">
					<input name="zip" class="form-control input-transparent inpt"
						value="<%= user.getPostalCode() %>" />
				</div>
			</li>

			<li class="list-group-item d-flex align-items-center">
				<div class="col text-muted font-weight-normal"
					style="font-size: 14px; text-align: left;">Phone</div>
				<div class="col input-group-prepend">
					<input name="phone" class="form-control input-transparent inpt"
						value="<%= user.getPhoneNumber() %>" />
				</div>
			</li>

			<li class="list-group-item d-flex align-items-center">
				<div class="col text-muted font-weight-normal"
					style="font-size: 14px; text-align: left;">Email Address</div>
				<div class="col input-group-prepend">
					<input name="email" class="form-control input-transparent inpt"
						value="<%= user.getEmail() %>" />
				</div>
			</li>
		</ul>
	</div>
	<!-- send user id -->
		<input type="hidden" name="idUser" value="<%= user.getIdClient() %>">
	<!-- send action -->
		<input type="hidden" name="action" value="address">
	<!-- Buttons Section -->
		<div class="btn-group mt-3">
			<!-- Submit Button -->
			<div class="">
				<button type="submit" class="btn btn-primary font-weight-normal save-btn" disabled>
					Save Changes</button>
			</div>
			<!-- Submit Button -->

			<!-- Reset Button -->
			<div class="">
				<button type="reset" class="btn btn-link font-weight-normal">
					Reset</button>
			</div>
			<!-- Reset Button -->
		</div>
		<!-- Buttons Section -->
	</form>
</div>