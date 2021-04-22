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
    <title>${initParam.websiteName} | Reset Your Password</title>
  </head>
  <body>
  
  	<!-- Section: Header -->
    <jsp:include page="../common/header.jsp"></jsp:include>
		<!-- Section: Header -->
		
		<!-- Login Form Container -->
    <div class="text-center">
      <form class="auth-form" action="resetpwd" method="post">
        <h3 class="mt-4 mb-2">Forgot password</h3>
        
        <!-- Caption -->
        <small class="text-muted">
        	Lost your password? Please enter your email address,
        	<br>You will receive a link to create a new password via email.
        </small>
        <!-- Caption -->
        
        <div class="mt-4">
          <label class="sr-only" for="email">Email address</label>
          <input name="email" class="form-control input-field" placeholder="Email Address" required autofocus/>
          <span style="color: red">${invalidEmail}</span>
        </div>

        <div class="mt-3">
          <button type="submit" class="btn btn-primary btn-block font-weight-normal">
            Reset password
          </button>
        </div>

      </form>
    </div>
		<!-- Login Form Container -->
		
		<!-- Section: Footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <!-- Section: Footer -->
  </body>
</html>
