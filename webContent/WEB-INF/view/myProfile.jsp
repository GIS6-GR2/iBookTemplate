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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myProfile.css"/>

  </head>
  <body>
  
  
	  <main>
	  
		  <aside id="side-bar">
			<!-- Profile Menu Card Start -->   
			<div class="card profile-menu-card"> 
			  <div class="card-header profile-menu-card-header" style="height: auto;background-color: #0979FA !important;">
			  	<h3>My Profile</h3>
			  </div>
			  <ul class="list-group list-group-flush profile-menu-card-list" id="profile-menu">
			    <li class="list-group-item profile-menu-card-item menu-btn selected" onclick="switchSection('dashboard')">
			    	Dashboard
			    </li>
			    <li id="orderBtn" class="list-group-item profile-menu-card-item menu-btn" onclick="switchSection('orders-history')">
			    	Orders History
			    </li>
			    <li id="addressBtn" class="list-group-item profile-menu-card-item menu-btn" onclick="switchSection('billing-address')">
			    	Billing Address
			    </li>
			    <li  id="acDetailsBtn" class="list-group-item profile-menu-card-item menu-btn" onclick="switchSection('account-details')">
			    	Account Details
			    </li>
			    <li class="list-group-item profile-menu-card-item text-danger">
			    	Logout
			    </li>
			  </ul>
			</div>
			<!-- Profile Menu Card End -->
		  </aside>
		  
	  	  <article id="main-content">
	  	  	<section class="active-section" id="dashboard">
	  	  		<h2 style="margin-top: 10px;">Dashboard</h2> 
	  	  		<p style="margin-bottom: 30px; font-size: 15px; color: #8786AD;">From your account dashboard you can view your recent orders, manage your shipping and billing addresses, and edit your password and account details.</p>
	  	  		
	  	  		<div class="dashboard-cards">
	  	  			<div class="ds-card" style="margin-left: 0" onclick="goTo('orderBtn')">
		  	  			<svg width="50" height="50" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M19 6.33337L9.5 19V63.3334C9.5 65.0131 10.1673 66.624 11.355 67.8117C12.5427 68.9995 14.1536 69.6667 15.8333 69.6667H60.1667C61.8464 69.6667 63.4573 68.9995 64.645 67.8117C65.8327 66.624 66.5 65.0131 66.5 63.3334V19L57 6.33337H19Z" stroke="#0979FA" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M9.5 19H66.5" stroke="#0979FA" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M50.6666 31.6666C50.6666 35.026 49.3321 38.2479 46.9566 40.6233C44.5811 42.9988 41.3593 44.3333 37.9999 44.3333C34.6405 44.3333 31.4187 42.9988 29.0432 40.6233C26.6678 38.2479 25.3333 35.026 25.3333 31.6666" stroke="#0979FA" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>
						<br>Orders
	  	  			</div>
	  	  			<div class="ds-card" onclick="goTo('addressBtn')">
	  	  				<svg width="50" height="50" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M66.5 31.6666C66.5 53.8333 38 72.8333 38 72.8333C38 72.8333 9.5 53.8333 9.5 31.6666C9.5 24.108 12.5027 16.8589 17.8475 11.5141C23.1922 6.1693 30.4413 3.16663 38 3.16663C45.5587 3.16663 52.8078 6.1693 58.1525 11.5141C63.4973 16.8589 66.5 24.108 66.5 31.6666Z" stroke="#0979FA" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M38 41.1666C43.2467 41.1666 47.5 36.9133 47.5 31.6666C47.5 26.4199 43.2467 22.1666 38 22.1666C32.7533 22.1666 28.5 26.4199 28.5 31.6666C28.5 36.9133 32.7533 41.1666 38 41.1666Z" stroke="#0979FA" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>
	  	  				<br>Address
	  	  			</div>
	  	  			<div class="ds-card" style="margin-right: 0" onclick="goTo('acDetailsBtn')">
	  	  				<svg width="76" height="50" viewBox="0 0 76 76" fill="none" xmlns="http://www.w3.org/2000/svg">
							<path d="M63.3334 66.5V60.1667C63.3334 56.8073 61.9989 53.5854 59.6234 51.21C57.248 48.8345 54.0262 47.5 50.6667 47.5H25.3334C21.974 47.5 18.7522 48.8345 16.3767 51.21C14.0013 53.5854 12.6667 56.8073 12.6667 60.1667V66.5" stroke="#0979FA" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
							<path d="M37.9999 34.8333C44.9955 34.8333 50.6666 29.1623 50.6666 22.1667C50.6666 15.1711 44.9955 9.5 37.9999 9.5C31.0043 9.5 25.3333 15.1711 25.3333 22.1667C25.3333 29.1623 31.0043 34.8333 37.9999 34.8333Z" stroke="#0979FA" stroke-width="4" stroke-linecap="round" stroke-linejoin="round"/>
						</svg>
	  	  				<br>Account Details
	  	  			</div>
	  	  		</div>
	  	  		
	  	  	</section>
	  	  	<section id="orders-history">
	  	  		<h2 style="margin-top: 10px;margin-bottom: 30px">Orders</h2>
	  	  	</section>
	  	  	<section id="billing-address">
	  	  		<h2>Address</h2>
	  	  		<h5 style="margin-bottom: 30px">Billing address</h5>
				<jsp:include page="./billingAddress.jsp"></jsp:include>												
	  	  	</section>
	  	  	<section id="account-details">
	  	  		<jsp:include page="./myAccountForms.jsp"></jsp:include> 
	  	  	</section>
	  	  </article>
	  
	  </main>
  

		
<!-- Section: Footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
<!-- Section: Footer -->



	<script>
		var menu = document.getElementById("profile-menu");
		var menuBtns = menu.getElementsByClassName("menu-btn");
		for (var i = 0; i < menuBtns.length; i++) {
			menuBtns[i].addEventListener("click", function() {
		  var selected = document.getElementsByClassName("selected");
		  selected[0].className = selected[0].className.replace(" selected", "");
		  this.className += " selected";
		  });
		}
		
		function switchSection(sectionId) {
			var section = document.getElementById(sectionId);
			var activeSection = document.getElementsByClassName("active-section");
			activeSection[0].className = activeSection[0].className.replace("active-section", "");
			section.className += "active-section";
		}
		function goTo(dir) {
			var btn = document.getElementById(dir);
			btn.click();
		}
	</script>

  </body>
</html>
