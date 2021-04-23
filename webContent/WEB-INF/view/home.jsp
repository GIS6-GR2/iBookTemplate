<%@page import="beans.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.*"%>

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
    <title>${initParam.websiteName} | Home</title>
  </head>
  <body>
	  		<%  ArrayList<Book> books = (ArrayList<Book>) request.getAttribute("books"); %>
	 		<% ArrayList<Category> categories = (ArrayList<Category>) request.getAttribute("categories");%>
		 	<% String searchValue = request.getParameter("searchValue"); %>	  
		 	<%int position = 0; %>
	  
	  <% 
		  String idC = request.getParameter("idCat");
		  if(idC == null) idC="0";
		  int idCat = Integer.parseInt(idC);
	  %>
	  	 <%           
	  	 	// if you press the categorie 
	  		if(idCat != 0) books.removeIf(b -> b.getIdCategory() != idCat);
	  	 
	  	 	if(searchValue != null) 	books.removeIf(b -> !b.getName().contains(searchValue));
	                	 
	                	 //find out how many Slides Yu gonna have 
	                	 int slideNumber = 1;
	                	 if(books.size() % 12 == 0)  slideNumber=books.size()/12; 
	             		 else slideNumber=(books.size()/12)+1;
	             		
	             		
    	 %> 
  
    <!-- Section: Header -->
    <jsp:include page="../common/header.jsp"></jsp:include>
<form class="container" style="max-width: 1268px;" action="home" method="get">
  <div class="input-group" >
  <div class="badge" style="margin-top:230px;margin-left:135px; margin-bottom: 203px;">
   
 <div class="col-md-4 mb-3" >
 <p class="h3"><B>Search books,fine art & collectibles </br>
 offered by iBook library</B>
 </p>   
 </div>
   
    
    
   <div class="input-group" >
 
  <input type="text" class="form-control rounded" placeholder="Search" aria-label="Search"
    aria-describedby="search-addon" name="searchValue"/>
  <button type="submit" class="btn btn-outline-primary">search</button>
</div> 
    
</div>

      <img src="${pageContext.request.contextPath}/assets/images/header/headerImg.svg" class="rounded float-right" style="width:30%; height:30%;margin-left:130px;margin-top: 115px; ">
  
</div>
</form>
    <!-- Section: Header -->
 		

    <div class="home-container">
	<!-- <div class="header-side">
	 
	</div>  -->

	<div class="category-side ">
	
	<div class="card categ-card">
	  <div class="card-header categ-card-header">
	  	<h3>Browse Categories</h3>
	  </div>
	  <ul class="list-group list-group-flush categ-card-list">

 			<li class="list-group-item categ-card-item all-categories" id="allCat" >All Categories</li>
		<%for (Category cat:categories) {   %>
		    <li class="list-group-item categ-card-item menu-btn" ><%= cat.getName() %></li>
		<%}%>
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
  <%if (slideNumber == 0) out.print("There is No Book "); %>
	  <%for(int i=0; i<slideNumber-1;i++) {%>
		    <div class="Books-list-slides" style="width:100%">
			    <%if(i!=slideNumber){ %>
			    <%for(int j=0;j<12;j++){%>
			       <div class="container page-wrapper card">
			       <input type="hidden" name="idBook" value="<%=books.get(position).getIdBook()%>">
			        <div class="page-inner">
			          <div class="row">
			            <div class="el-wrapper">
			              <div class="box-up">
			                <img class="img" src="./assets/images/books/<%=books.get(position).getCoverPicture()%>.jpg" alt="">
			                <div class="img-info">
			                  <div class="info-inner">
			                    <span class="p-name"><%= books.get(position).getName() %></span>
			                    <span class="p-categorie"><%= books.get(position).getNameCategory() %></span>
			                  </div>
			                  <div class="a-langue">author : <span class="langue"><%= books.get(position).getAuthor() %></span></div>
			                </div>
			              </div>
			      
			              <div class="box-down">
			                <div class="h-bg">
			                  <div class="h-bg-inner"></div>
			                </div>
			      
			                <a class="cart" href="bookDetails?idBook=<%= books.get(position).getIdBook()%>">
			                  <span class="price"><%= books.get(position).getPrice() %>$</span>
			                  <span class="add-to-cart">
			                    <span class="txt">Add to card</span>
			                  </span>
			                </a>
			              </div>
			            </div>
			          </div>
			        </div>
			      </div>  
				<%  position++; } %>
				<%} %>
		    </div>
	   <% } %>
	   
			 <div class="Books-list-slides" style="width:100%">
				<%for(int j=0;j<(books.size() - ((slideNumber-1) * 12));j++){%>
			       <div class="container page-wrapper card">
			        <input type="hidden" name="idBook" value="<%=books.get(position).getIdBook()%>">
			        <div class="page-inner">
			          <div class="row">
			            <div class="el-wrapper">
			              <div class="box-up">
			                <img class="img" src="./assets/images/books/<%=books.get(position).getCoverPicture()%>.jpg" alt="">
			                <div class="img-info">
			                  <div class="info-inner">
			                    <span class="p-name"><%= books.get(position).getName() %></span>
			                    <span class="p-categorie"><%= books.get(position).getNameCategory() %></span>
			                  </div>
			                  <div class="a-langue">author : <span class="langue"><%= books.get(position).getAuthor() %></span></div>
			                </div>
			              </div>
			      
			              <div class="box-down">
			                <div class="h-bg">
			                  <div class="h-bg-inner"></div>
			                </div>
			      
			                <a class="cart"  href="bookDetails?idBook=<%= books.get(position).getIdBook()%>">
			                  <span class="price"><%= books.get(position).getPrice() %>$</span>
			                  <span class="add-to-cart">
			                    <span class="txt">Add to card</span>
			                  </span>
			                </a>
			              </div>
			            </div>
			          </div>
			        </div>
			      </div>  
				<%  position++; } %>
			  </div>
   </div>

	  		<!--  the Next & Previous Buttons and the numbers buttons -->
	  <div class="next-prev-container">
	    <div class="next-prev-section">
	      <button class="btn btn-outline-secondary" onclick="plusDivs(-1)"><%out.print("<< Previous"); %></button>
			  <div class="btn-group me-2" role="group" aria-label="First group">
			  	  <%for(int i=0; i<slideNumber;i++) {%>
				  <button class="btn btn-outline-secondary demo" onclick="currentDiv(<%=i+1%>)"><% out.print(i+1); %></button>
					<% } %>		  	  
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

    <form id="myForm" action="home" method="get">
    <input type="hidden" name="idCat" id="idCat"/>
    </form>
    
    
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
   
    
    
    // the switching between the categories
    
    function mySubmit(x) {
    	var idCat =document.getElementById("idCat");
		idCat.value = x;
		   document.getElementById("myForm").submit();
      }
    
    var menuBtns = document.getElementsByClassName("menu-btn");
	for (var i = 0; i < menuBtns.length; i++) {
		menuBtns[i].addEventListener("click", function(e) {
			var btns = document.querySelectorAll('.menu-btn');
			mySubmit(([].indexOf.call(btns, e.target))+1);
	  });
	}
    
	var apple = document.querySelector('#allCat');
    apple.addEventListener('click', (event) => {
    	mySubmit("0");
    });
	
    
  }

  </script>
  </body>
</html>
