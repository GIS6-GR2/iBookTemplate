<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
     
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/categoryCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/subscribeCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Books_list.css"/>
    <!-- Required CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css"/>

    <!-- Page Title -->
    <title>${initParam.websiteTitle} | Home</title>
  </head>
  <body>
    <!-- Section: Header -->
    <jsp:include page="../common/header.jsp"></jsp:include>
<div class="container">
  <div class="input-group" >
  <div class="badge" style="margin-top:150px;margin-left:200px">
   
 <div class="col-md-4 mb-3" >
 <p class="h3"><B>Search books,fine art & collectibles </br>
 offered by iBook library</B>
 </p>   
 </div>
   
    
    
   <div class="input-group" >
 
  <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search"
    aria-describedby="search-addon" />
  <button type="button" class="btn btn-outline-primary">search</button>
</div>
    
</div>

      <img src="${pageContext.request.contextPath}/assets/images/header/headerImg.svg" class="rounded float-right" style="width:30%; height:30%;margin-left:130px;margin-top: 50px">
  
</div>
</div>
    <!-- Section: Header -->
    


	<div class="category-side ">
	
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
 
	</div>
	 <!-- Specific page content -->
    <!-- Specific page content -->

<div class="the-books-side">


		<!-- list of book in form of Slides -->
  <div class="Books-list-container" style="max-width:100%">
  
  		<!-- The First Slide -->
    <div class="Books-list-slides" style="width:100%">
    <%for(int i=0;i<12;i++){ %>
       <div class="container page-wrapper card">
        <div class="page-inner">
          <div class="row">
            <div class="el-wrapper">
              <div class="box-up">
                <img class="img" src="https://covers.zlibcdn2.com/covers/books/5a/99/56/5a9956dedae2d2d9f2c27732111084c5.jpg" alt="">
                <div class="img-info">
                  <div class="info-inner">
                    <span class="p-name">The Hero with a Thousand Faces</span>
                    <span class="p-categorie">psychology</span>
                  </div>
                  <div class="a-langue">Available Language : <span class="langue">En , Ar</span></div>
                </div>
              </div>
      
              <div class="box-down">
                <div class="h-bg">
                  <div class="h-bg-inner"></div>
                </div>
      
                <a class="cart" href="#">
                  <span class="price">$120</span>
                  <span class="add-to-cart">
                    <span class="txt">Add to card</span>
                  </span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>  
	<%} %>
    </div>
    
    	<!-- The Secend Slid -->
    <div class="Books-list-slides" style="width:100%">
         <%for(int i=0;i<12;i++){ %>
       <div class="container page-wrapper card">
        <div class="page-inner">
          <div class="row">
            <div class="el-wrapper">
              <div class="box-up">
                <img class="img" src="https://covers.zlibcdn2.com/covers/books/6f/37/bd/6f37bde106ead07b79be71f53e9f5bf9.jpg" alt="">
                <div class="img-info">
                  <div class="info-inner">
                    <span class="p-name">50 Great Myths of Popular Psychology</span>
                    <span class="p-categorie">psychology</span>
                  </div>
                  <div class="a-langue">Available Language : <span class="size">En , Ar , Esp , Fr</span></div>
                </div>
              </div>
      
              <div class="box-down">
                <div class="h-bg">
                  <div class="h-bg-inner"></div>
                </div>
      
                <a class="cart" href="#">
                  <span class="price">$90</span>
                  <span class="add-to-cart">
                    <span class="txt">Add to card</span>
                  </span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>  
	<%} %>
    </div>
		
		<!-- The third slide -->
    <div class="Books-list-slides" style="width:100%">
         <%for(int i=0;i<12;i++){ %>
       <div class="container page-wrapper card">
        <div class="page-inner">
          <div class="row">
            <div class="el-wrapper">
              <div class="box-up">
                <img class="img" src="https://covers.zlibcdn2.com/covers/books/1b/d3/1f/1bd31f599870ad4c7e6b833d68779bf3.jpg" alt="">
                <div class="img-info">
                  <div class="info-inner">
                    <span class="p-name">12 Rules for Life</span>
                    <span class="p-categorie">psychology</span>
                  </div>
                  <div class="a-langue">Available Language : <span class="size">En , Ar , Fr</span></div>
                </div>
              </div>
      
              <div class="box-down">
                <div class="h-bg">
                  <div class="h-bg-inner"></div>
                </div>
      
                <a class="cart" href="#">
                  <span class="price">$100</span>
                  <span class="add-to-cart">
                    <span class="txt">Add to card</span>
                  </span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>  
	<%} %>
    </div>
    
    	<!-- The fourth slide -->
    <div class="Books-list-slides" style="width:100%">
         <%for(int i=0;i<12;i++){ %>
       <div class="container page-wrapper card">
        <div class="page-inner">
          <div class="row">
            <div class="el-wrapper">
              <div class="box-up">
                <img class="img" src="https://covers.zlibcdn2.com/covers/books/31/64/72/316472cbbbd49b0f1a775187af795b46.jpg" alt="">
                <div class="img-info">
                  <div class="info-inner">
                    <span class="p-name">Crime and Punishment</span>
                    <span class="p-categorie">philosophy</span>
                  </div>
                  <div class="a-langue">Available Language : <span class="size">En</span></div>
                </div>
              </div>
      
              <div class="box-down">
                <div class="h-bg">
                  <div class="h-bg-inner"></div>
                </div>
      
                <a class="cart" href="#">
                  <span class="price">$150</span>
                  <span class="add-to-cart">
                    <span class="txt">Add to card</span>
                  </span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>  
	<%} %>
    </div>
	  
	  </div>
	  
	  		<!--  the Next & Previous Buttons and the numbers buttons -->
	  <div class="next-prev-container">
	    <div class="next-prev-section">
	      <button class="btn btn-outline-secondary" onclick="plusDivs(-1)"><%out.print("<< Previous"); %></button>
			  <div class="btn-group me-2" role="group" aria-label="First group">
				  <button class="btn btn-outline-secondary demo" onclick="currentDiv(1)">1</button> 
				  <button class="btn btn-outline-secondary demo" onclick="currentDiv(2)">2</button> 
				  <button class="btn btn-outline-secondary demo" onclick="currentDiv(3)">3</button> 
				  <button class="btn btn-outline-secondary demo" onclick="currentDiv(4)">4</button>
		  	  </div>
	      <button class="btn btn-outline-secondary" onclick="plusDivs(1)"><%out.print("Next >>"); %></button>
	    </div>
	  </div>
  
  </div>
  </div>
    
		
		<!-- Section: Contact Us -->
    <jsp:include page="../common/contactUs.jsp"></jsp:include>
		<!-- Section: Contact Us -->
		
    <!-- Section: Footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <!-- Section: Footer -->
    
    
    <script>
  
	//when you refresh the page or when you first load the page 
  var slideIndex = 1;
  showDivs(slideIndex);
	
  	//when you click the Next button(+1) or the Previous button(-1)
  function plusDivs(n) {
    showDivs(slideIndex += n);
  }

  	//whene you click a random number
  function currentDiv(n) {
    showDivs(slideIndex = n);
  }

  function showDivs(n) {
    var i;
    var x = document.getElementsByClassName("Books-list-slides");

    if (n > x.length) {
      slideIndex = 1;
    }

    if (n < 1) {
      slideIndex = x.length;
    }

    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }

    x[slideIndex - 1].style.display = "grid"; // Styling the books list & make it responsive

    x[slideIndex - 1].style.gridTemplateColumns = "auto auto auto";
    x[slideIndex - 1].style.gridTemplateRows = "auto auto auto auto";
    x[slideIndex - 1].style.columnGap = "10px";
    x[slideIndex - 1].style.rowGap = "15px";
  }
  </script>
  </body>
</html>
