<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
	
	<!-- FontAwesome CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/fontawesome/css/all.min.css"/>
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
  
	<!-- Section: Header -->
    <jsp:include page="../../common/header.jsp"></jsp:include>
	<!-- Section: Header -->
	
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
				  	  		
				  	  		<form method="post" action="dashboard" enctype="multipart/form-data">
						        <h3 class="mb-2">Creating a Listing</h3>
								<small class="text-muted">
									Creating a listing is the first step in getting your item in front of buyers, Start by describing what you're selling ..	
								</small>

						        <!-- Title Field -->
						        <div class="mt-3">
						          <label class="sr-only" for="booktitle">Book Title</label>
						          <input name="booktitle" class="form-control input-field" placeholder="Book Title"/>
						        </div>
						        <!-- Title Field -->
						        
						        <!-- Author Field -->
						        <div class="mt-2">
						          <label class="sr-only" for="author">Author</label>
						          <input name="author" class="form-control input-field" placeholder="Author"/>
						        </div>
						        <!-- Author Field -->
						        
						        
						        <div class="input-group mt-2">
									<div style="height: 45px;" class="input-group-prepend">
										<label style="font-size: 14px;" class="input-group-text" for="category">Categories</label>
									</div>
									<select style="font-size: 14px; height: 45px;" class="custom-select" id="category" name="category">
									    <option value="1">One</option>
									    <option value="2">Two</option>
									    <option value="3">Three</option>
									    <option value="4">Four</option>
									</select>
								</div>
						        
						        
						        <div class="form-row mt-2">
					    			<div class="col">
					      				<input name="price" type="text" class="form-control input-field" placeholder="Price (dhs)">
					   				</div>
					    			<div class="col">
					      				<input name="pages" type="text" class="form-control input-field" placeholder="Number of Pages">
					    			</div>
						  		</div>
								
								<div class="form-row mt-2">
					    			<div class="col">
					      				<input name="height" type="text" class="form-control input-field" placeholder="Height">
					   				</div>
					    			<div class="col">
					      				<input name="width" type="text" class="form-control input-field" placeholder="Width">
					    			</div>
						  		</div>
								
								<div class="form-row mt-2">
					    			<div class="col">
					      				<input name="pubdate" type="date" class="form-control input-field" placeholder="Publication date">
					   				</div>
					    			<div class="col">
					      				<input name="binding" type="text" class="form-control input-field" placeholder="Binding">
					    			</div>
						  		</div>
								
								<!-- Upload -->
						        <div class="input-group mt-2">
									<div class="custom-file">
									    <input type="file" class="custom-file-input input-field" id="cover" name="cover">
									    <label style="font-size: 14px;" class="custom-file-label" for="cover">Choose cover</label>
									</div>
								</div>
						        <!-- Upload -->
						        
								<div class="form-group mt-2">
								    <label class="sr-only" for="desc">Description</label>
								    <textarea name="desc" class="form-control input-field" id="desc" rows="5" placeholder="Description"></textarea>
								</div>
								
								 <!-- Buttons Section -->
						        <div class="btn-group mt-2">
						        	<!-- Submit Button -->
							        <div class="">
							          <button type="submit" class="btn btn-primary font-weight-normal" >
							            Creating a Listing
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
				  	  	</section>
				  	  	<section id="pList">
							<jsp:include page="./productsList.jsp"></jsp:include>
				  	  	</section>
				  	  	<section id="categories">
				  	  		<jsp:include page="./categories.jsp"></jsp:include>								
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
