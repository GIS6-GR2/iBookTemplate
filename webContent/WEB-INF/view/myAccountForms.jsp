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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myAccountForms.css"/>
	
</head>
<body>

    <div class="container">
      <form>
        <h3 class="mt-4 mb-2">Account Details</h3>
        
        <!-- First & Last Name Inputs -->
        <div class="form-row mt-2">
    		<div class="col">
				<input name="fname" type="text" class="form-control input-field" value="Sabri" placeholder="First name">
   			</div>
    		<div class="col">
      			<input name="lname" type="text" class="form-control input-field" value="Hakuli" placeholder="Last name">
    		</div>
  		</div>
        <!-- First & Last Name Inputs -->
        
        <!-- Display Name -->
        <div class="mt-2">
        	<label class="sr-only" for="dispName">Display Name</label>
        	<input name="dispName" class="form-control input-field" value="Sabri Hakuli" readonly/>
        </div>
        <!-- Display Name -->
        
        <!-- Email Input -->
        <div class="mt-2">
          <label class="sr-only" for="email">Email address</label>
          <input name="email" class="form-control input-field" value="sabrihakuli@outlook.com" placeholder="Email address"/>
        </div>
        <!-- Email Input -->

       

        <h3 class="mt-4 mb-2">Change Password</h3>
        
        <!-- Current Password -->
        <div class="mt-2">
          <label class="sr-only" for="password">Password</label>
          <input type="password" name="password" class="form-control input-field" placeholder="Password"/>
        </div>
        <!-- Current Password -->
        
        <!-- New Password -->
        <div class="mt-2">
          <label class="sr-only" for="newPwd">New Password</label>
          <input type="password" name="newPwd" class="form-control input-field" placeholder="New Password"/>
        </div>
        <!-- New Password -->
        
        <!-- Confirm Password -->
        <div class="mt-2">
          <label class="sr-only" for="confPwd">Confirm New Password</label>
          <input type="password" name="confPwd" class="form-control input-field" placeholder="Confirm New Password"/>
        </div>
        <!-- Confirm Password -->

        
        <!-- Buttons Section -->
        <div class="btn-group mt-3">
        	<!-- Submit Button -->
	        <div class="">
	          <button type="submit" class="btn btn-primary font-weight-normal" >
	            Save Changes
	          </button>
	        </div>
			<!-- Submit Button -->
			
			<!-- Reset Button -->
	        <div class="">
	          <button type="reset" class="btn btn-link font-weight-normal" >
	            Reset 
	          </button>
	        </div>
			<!-- Reset Button -->
        </div>
        <!-- Buttons Section -->
				
      </form>
    </div>
</body>
</html>