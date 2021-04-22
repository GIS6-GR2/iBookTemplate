<%@page import="beans.*"%>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css" />

<!-- Required CSS Files -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myAccountForms.css" />

<%
Client user = (Client) request.getAttribute("User");
%>
<div class="container section-content">
	<form action="/iBookLibrary/myProfile" method="get">
		<h3 class="mt-4 mb-2">Account Details</h3>

		<!-- First & Last Name Inputs -->
		<div class="form-row mt-2">
			<div class="col">
				<input name="fname" type="text" class="form-control input-field inpt"
					value="<%=user.getFirstName()%>" placeholder="First name">
			</div>
			<div class="col">
				<input name="lname" type="text" class="form-control input-field inpt"
					value="<%=user.getLastName()%>" placeholder="Last name">
			</div>
		</div>
		<!-- First & Last Name Inputs -->

		<!-- Display Name -->
		<div class="mt-2">
			<label class="sr-only" for="dispName">Display Name</label> <input
				name="dispName" class="form-control input-field inpt"
				value="<%=user.getFirstName() + user.getLastName()%>" readonly />
		</div>
		<!-- Display Name -->

		<!-- Email Input -->
		<div class="mt-2">
			<label class="sr-only" for="email">Email address</label> <input
				name="email" class="form-control input-field inpt"
				value="<%=user.getEmail()%>" placeholder="Email address" />
		</div>
		<!-- Email Input -->



		<h3 class="mt-4 mb-2">Change Password</h3>

		<!-- Current Password -->
		<div class="mt-2">
			<label class="sr-only" for="password">Password</label> <input
				type="password" name="password" class="form-control input-field inpt"
				placeholder="Password" />
		</div>
		<!-- Current Password -->

		<!-- New Password -->
		<div class="mt-2">
			<label class="sr-only" for="newPwd">New Password</label> 
			<input
				type="password" name="newPwd" class="form-control input-field inpt"
				placeholder="New Password" />
		</div>
		<!-- New Password -->

		<!-- Confirm Password -->
		<div class="mt-2">
			<label class="sr-only" for="confPwd">Confirm New Password</label> <input
				type="password" name="confPwd" class="form-control input-field inpt"
				placeholder="Confirm New Password" />
		</div>
		<!-- Confirm Password -->

		<!-- send user id -->
		<input type="hidden" name="idUser" value="<%=user.getIdClient()%>">
		<!-- send action -->
		<input type="hidden" name="action" value="info">

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