<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css"/>
    
    <!-- Required CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css"/>
    
    <!-- Page Title -->
    <title>${initParam.websiteName} | Dashboard</title>
  </head>
  <body>

	
	<!-- Login Form Container -->
    <div class="container text-center d-flex align-items-center " style="height:70vh;">
		<form class="auth-form">
			<h3 class="mt-4 mb-2">Admin Dashboard</h3>
	        
	        <small class="text-muted">
	        	Please provide your personal data, So we can identify you.
	        </small>
	        	
	        <div class="mt-4">
	          <label class="sr-only" for="username">Username</label>
	          <input name="username" class="form-control input-field" placeholder="Username" required/>
	        </div>
	
	        <div class="mt-2">
	          <label class="sr-only" for="password">Password</label>
	          <input type="password" name="password" class="form-control input-field" placeholder="Password" required/>
	        </div>
	        
	        <div class="mt-4">
	          <button type="submit" class="btn btn-primary btn-block font-weight-normal">
	            Sign In
	          </button>
	        </div>
		</form>
    </div>
	<!-- Login Form Container -->

  </body>
</html>
