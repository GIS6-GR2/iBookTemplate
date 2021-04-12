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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/categoryCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/subscribeCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/profileMenuCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shoppingTotalCard.css"/>

  </head>
  <body>
  
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
  
	<div class="card text-center subscribe-card">
	  <div class="card-body">
	    <h5 class="card-title">Subscribe Newsletter</h5>
	    <p class="card-text">Get all the latest information on Events, Sales and Offers.</p>
	    <input name="email" class="form-control input-field" placeholder="Email Address" required/>
	    <button class="btn btn-primary">Subscribe</button>
	  </div>
	</div>

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
	 


  </body>
</html>
