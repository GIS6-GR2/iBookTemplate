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
    <title>${initParam.websiteTitle} | Register</title>
  </head>
  <body>
  	<!-- Section: Header -->
    <jsp:include page="../common/header.jsp"></jsp:include>
		<!-- Section: Header -->
		
		<!-- Section: Register Form -->
    <div class="text-center">
      <form class="auth-form">
        <h3 class="mt-4 mb-2">Sign Up</h3>
        
        <!-- Register Caption -->
        <small class="text-muted">
        	Please provide your personal data, so we can identify you.
        </small>
        <!-- Register Caption -->
        
        <!-- First & Last Name Inputs -->
        <div class="form-row mt-4">
    			<div class="col">
      			<input name="fname" type="text" class="form-control input-field" placeholder="First name" required>
   				</div>
    			<div class="col">
      			<input name="lname" type="text" class="form-control input-field" placeholder="Last name" required>
    			</div>
  			</div>
        <!-- First & Last Name Inputs -->
        
        <!-- Username Input -->
        <div class="mt-2">
          <label class="sr-only" for="username">Username</label>
          <input name="username" class="form-control input-field" placeholder="Username" required/>
        </div>
        <!-- Username Input -->
        
        <!-- Email Input -->
        <div class="mt-2">
          <label class="sr-only" for="email">Email address</label>
          <input name="email" class="form-control input-field" placeholder="Email address" required/>
        </div>
        <!-- Email Input -->
        
        <!-- Password Input -->
        <div class="mt-2">
          <label class="sr-only" for="password">Password</label>
          <input type="password" name="password" class="form-control input-field" placeholder="Password" required/>
        </div>
        <!-- Password Input -->
        
        <!-- Submit Button -->
        <div class="mt-3">
          <button type="submit" class="btn btn-primary btn-block font-weight-normal" >
            Sign Up
          </button>
        </div>
				<!-- Submit Button -->
				
        <div class="mt-2">
          <small class="text-muted">
          	Already have an account ? <a href="${pageContext.request.contextPath}/login">Sign In</a>
          </small>
        </div>
        
      </form>
    </div>
		<!-- Section: Register Form -->
		
		<!-- Section: Footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <!-- Section: Footer -->
  </body>
</html>
