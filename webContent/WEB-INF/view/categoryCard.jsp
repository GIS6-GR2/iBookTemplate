<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css"/>
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/fontawesome/css/all.min.css"/>
    
    <!-- Required CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/categoryCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/subscribeCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/profileMenuCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shoppingTotalCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bookPriceInfoCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/checkOut.css"/> 

  </head>
  <body>
<!-- Category Card Start -->  
	<div class="card categ-card">
	  <div class="card-header categ-card-header">
	  	<h3>Browse Categories</h3>
	  </div>
	  <ul class="list-group list-group-flush categ-card-list">
	    <li class="list-group-item categ-card-item selected">All Categories</li>
	    <li class="list-group-item categ-card-item">Family & Health</li>
	    <li class="list-group-item categ-card-item">Fitness & Diet</li>
	    <li class="list-group-item categ-card-item">Pre-School & Day-Care</li>
	    <li class="list-group-item categ-card-item">Computing & IT</li>
	    <li class="list-group-item categ-card-item">Business & Management</li>
	    <li class="list-group-item categ-card-item">Comedy & Humour</li>
	  </ul>
	</div>
<!-- Category Card End -->  
 
<!-- Subscribe Card Start -->   
	<div class="card text-center subscribe-card">
	  <div class="card-body">
	    <h5 class="card-title">Subscribe Newsletter</h5>
	    <p class="card-text">Get all the latest information on Events, Sales and Offers.</p>
	    <input name="email" class="form-control input-field" placeholder="Email Address" required/>
	    <button class="btn btn-primary">Subscribe</button>
	  </div>
	</div>
<!-- Subscribe Card End -->   


<!-- Profile Menu Card Start -->   
	<div class="card profile-menu-card">
	  <div class="card-header profile-menu-card-header">
	  	<h3>My Profile</h3>
	  </div>
	  <ul class="list-group list-group-flush profile-menu-card-list">
	    <li class="list-group-item profile-menu-card-item selected">Dashboard</li>
	    <li class="list-group-item profile-menu-card-item">Orders History</li>
	    <li class="list-group-item profile-menu-card-item">Billing address</li>
	    <li class="list-group-item profile-menu-card-item">Account details</li>
	    <li class="list-group-item profile-menu-card-item text-danger">Logout</li>
	  </ul>
	</div>
<!-- Profile Menu Card End -->

<!-- Shopping Card Total Card Start -->  
	<div class="card shopping-total-card">
	  <div class="card-header shopping-total-card-header">
	  	<h3>Card Totals</h3>
	  </div>
	  <ul class="list-group list-group-flush shopping-total-card-list">
	    <li class="list-group-item shopping-total-card-item d-flex">
		    <div class="w-100 txt">Price</div>
		   	<div class="flex-shrink-1 txt">89.99Dhs</div>
	    </li>
    	<li class="list-group-item shopping-total-card-item d-flex">
	    	<div class="w-100 txt">Shipping</div>
	    	<div class="flex-shrink-1 txt">1.99Dhs</div>
	    </li>
	  </ul>
	  <div class="card-footer shopping-total-card-footer d-flex">
		  <div class="w-100 txt">Total</div>
		  <div class="flex-shrink-1 txt">91.98Dhs</div>
	  </div>
	</div>
	<button class="btn btn-prcd-chkot">Proceed to checkout</button>
<!-- Shopping Card Total Card End -->


<!-- Book Info Card Start -->  
	<div class="card book-price-card">
	  <div class="card-header book-price-card-header d-flex">
	  	<div class="w-100 txt" style="color: #FFFFFF">Book price</div>
	  	<h3>Dhs 10.99</h3>
	  </div>
	  <ul class="list-group list-group-flush shopping-total-card-list">
	    <li class="list-group-item book-price-card-item">
	    	<i class="fas fa-check"></i>
		    <div class="txt">Condition : New</div>
	    </li>
    	<li class="list-group-item book-price-card-item">
    		<i class="fas fa-check"></i> 
	    	<div class="txt">Ships in 1 to 3 days</div>
	    </li>
	  </ul>
	  <div class="card-footer book-price-card-footer">
		  <button class="btn btn-add-to-cart">add to cart</button>
	  </div>
	</div>
<!-- ------------------------ -->
	<div class="card book-info-card">
	  <ul class="list-group list-group-flush book-info-card-list">
	    <li class="list-group-item book-info-card-item d-flex">
		    <div class="w-100 ltxt">Last Update</div>
		   	<div class="flex-shrink-1 rtxt">12 February 2017</div>
	    </li>
    	<li class="list-group-item book-info-card-item d-flex">
	    	<div class="w-100 ltxt">Published</div>
	    	<div class="flex-shrink-1 rtxt">27 February 2020 </div>
	    </li>
	    <li class="list-group-item book-info-card-item d-flex">
	    	<div class="w-100 ltxt">Category</div>
	    	<div class="flex-shrink-1 rtxt">Psychology</div>
	    </li>
	    <li class="list-group-item book-info-card-item d-flex">
	    	<div class="w-100 ltxt">Language</div>
	    	<div class="flex-shrink-1 rtxt">English</div>
	    </li>
	  </ul>
	</div>
<!-- Book Info Card End -->

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
<!-- ------------------------- -->
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
	
<!-- Check Out Card End -->  

  </body>
</html>
