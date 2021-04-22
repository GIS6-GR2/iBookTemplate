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
    <title>${initParam.websiteName} | Log In</title>
  </head>
  <body>
  
  	<!-- Section: Header -->
    <jsp:include page="../common/header.jsp"></jsp:include>
		<!-- Section: Header -->
		
	<!-- Login Form Container -->
    <div class="text-center">
    
      <form class="auth-form" action="login" method="post">
        <h3 class="mt-4 mb-2">Sign In</h3>
        
        <small class="text-muted">
        	Please provide your personal data, so we can identify you.
        </small>
        	
        <div class="mt-4">
          <label class="sr-only" for="email">Email address</label>
          <input name="email" class="form-control input-field" placeholder="Email Address" required autofocus/>
          <span style="color: red">${errorEmail}</span>
        </div>

        <div class="mt-2">
          <label class="sr-only" for="password">Password</label>
          <input type="password" name="password" class="form-control input-field" placeholder="Password" required/>
          <span style="color: red">${errorPassword}</span>
        </div>

        <div class="mt-2 mr-2 text-right">
          <small>
          	<a href="resetpwd">Forget Password ?</a>
          </small>
        </div>
        
        <div class="mt-2">
          <button type="submit" class="btn btn-primary btn-block font-weight-normal">
            Sign In
          </button>
        </div>

        <div class="mt-2">
          <small class="text-muted">
          	Don't have an account ? <a href="${pageContext.request.contextPath}/register">Sign Up</a>
          </small>
        </div>
      </form>
    </div>
		<!-- Login Form Container -->
		
		<!-- Section: Footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <!-- Section: Footer -->
  </body>
</html>
