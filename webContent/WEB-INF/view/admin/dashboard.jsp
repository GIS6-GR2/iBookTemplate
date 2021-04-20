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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminDash.css"/>
	
	<style>
		.card {
			overflow: hidden;
			border-radius: 8px;
		}
		#dash-menu li {
			font-size: 15px;
		}
		
		#card-head-dash {
			height: auto;
			background-color: #0979FA !important;
		}
		
		#card-head-dash h3{
			font-size: 25px;
			color:white !important;
			padding-left:20px;
			padding-top:15px;
			padding-bottom:10px;
		}
		
	</style>
  </head>
  <body>
  

  	<div class="container">
		<main>
			<div class="row mt-5">
				<div class="col-lg-4">
					<!-- Profile Menu Card Start -->   
					<div class="card"> 
						<div id="card-head-dash">
							<h3>Dashboard</h3>
						</div>
						
						<ul class="list-group list-group-flush profile-menu-card-list" id="dash-menu">
							<li class="list-group-item profile-menu-card-item menu-btn selected" onclick="switchSection('creating')">
								Creating a Listing
							</li>
							<li id="orderBtn" class="list-group-item profile-menu-card-item menu-btn" onclick="switchSection('pList')">
								Products List
							</li>
							
							<li id="addressBtn" class="list-group-item profile-menu-card-item menu-btn" onclick="switchSection('categories')">
								Categories
							</li>
							
							<li  id="acDetailsBtn" class="list-group-item profile-menu-card-item menu-btn" onclick="switchSection('orders')">
								Orders
							</li>
							
							<li class="list-group-item profile-menu-card-item text-danger">
								Log Out
							</li>
						</ul>
					</div>
					<!-- Profile Menu Card End -->
				</div>
				  
				<div class="col-lg-8">  
					<article id="main-content">
						<section class="active-section" id="creating">
				  	  		<h1>#1</h1>
				  	  	</section>
				  	  	<section id="pList">
				  	  		<h1>#2</h1>
				  	  	</section>
				  	  	<section id="categories">
				  	  		<h1>#3</h1>										
				  	  	</section>
				  	  	<section id="orders">
				  	  		<h1>#4</h1>
						</section>
					</article>
			  	</div>
		  	</div>
		  	
		</main>
  	</div>

		
	<!-- Section: Footer -->
	<jsp:include page="../../common/footer.jsp"></jsp:include>
	<!-- Section: Footer -->



	<script>
		var menu = document.getElementById("dash-menu");
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
