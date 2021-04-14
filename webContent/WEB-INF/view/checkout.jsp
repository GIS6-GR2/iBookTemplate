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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bookPriceInfoCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/checkOut.css"/> 
    
    <!-- Page Title -->
    <title>${initParam.websiteName} | Billing & Checkout</title>
  </head>
  <body>
  
  	<!-- Section: Header -->
    <jsp:include page="../common/header.jsp"></jsp:include>
	<!-- Section: Header -->
	
	
	
	
	<div class="container">
		
		<h3 class="mt-4 mb-3">Billing Address</h3>
		<div class="row">
		
			<div class=col-lg-8>
				<div class="card">
				<ul class="list-group list-group-flush">
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							First Name
						</div>
						<div class="col input-group-prepend">
							<input name="fname" class="form-control input-transparent" value="Sabri"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Last Name
						</div>
						<div class="col input-group-prepend">
							<input name="lname" class="form-control input-transparent" value="Hakuli"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							City
						</div>
						<div class="col input-group-prepend">
							<input name="city" class="form-control input-transparent" value="Kosovo"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Address
						</div>
						<div class="col input-group-prepend">
							<input name="address" class="form-control input-transparent" value="KosovoChuck Norris 32"/>
						</div>
					</li>

					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Postal Code
						</div>
						<div class="col input-group-prepend">
							<input name="zip" class="form-control input-transparent" value="60000"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Phone
						</div>
						<div class="col input-group-prepend">
							<input name="phone" class="form-control input-transparent" value="+212 56 215 5876"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Email Address
						</div>
						<div class="col input-group-prepend">
							<input name="email" class="form-control input-transparent" value="sabrihakuli@outlook.com"/>
						</div>
					</li>
  				</ul>
			</div>
		</div>
		
		<div class=col-lg-4>
			
			<div class="row">
				<!-- Check Out Card Start -->  
				<div class="card total-card">
				  	<ul class="list-group list-group-flush total-card-list">
				    	<li class="list-group-item total-card-item d-flex">
					    	<div class="w-100 txt">Price</div>
					   		<div class="flex-shrink-1 txt">89.99Dhs</div>
				    	</li>
			    	
			    		<li class="list-group-item total-card-item d-flex">
					    	<div class="w-100 txt">Shipping</div>
					    	<div class="flex-shrink-1 txt">1.99Dhs</div>
				    	</li>
				  	</ul>
					
					<div class="card-footer total-card-footer d-flex">
						<div class="w-100 txt">Total</div>
						<div class="flex-shrink-1 txt">91.98Dhs</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="card order-card">
				<ul class="list-group list-group-flush order-card-list">
					<li class="list-group-item order-card-item">
				    	<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
					    <i class="fas fa-wallet"></i> 
					    <div class="txt">Cash on Delivery</div>
			    	</li>
		    		<li class="list-group-item order-card-item">
			    		<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
			    		<i class="fab fa-paypal"></i>
				    	<div class="txt">Paypal</div> 
			    	</li>
			  	</ul>
				<div class="card-footer order-card-footer">
					<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" required>
					<div class="txt">I have read and agree to the website terms and conditions</div>
					<button class="btn btn-order">place order</button>
				</div>
			</div>
			</div>
	
		<!-- Check Out Card End -->  
	</div>
		
</div>
		
	</div>
	
	<!-- Section: Footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <!-- Section: Footer -->
  </body>
</html>
