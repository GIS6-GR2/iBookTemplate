<%@page import="servlets.BookDetailsServlet"%>
<%@page import="beans.*"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css" />

	<!-- Required CSS Files -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/categoryCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/subscribeCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/profileMenuCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shoppingTotalCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bookPriceInfoCard.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/checkOut.css"/> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Books_list.css"/> 
	<title>Book Details</title>
</head>

<body>
	<!-- Header Section-->
	<jsp:include page="../common/header.jsp"></jsp:include>
	<!-- Header Section-->
	
<%  Book bookDetails = (Book) request.getAttribute("bookDetails"); %>

	<!-- Book Details & Pricing Section-->
	<div class="container mt-5">
		<div class="row">
			<!-- Left Column -->
		<div class="col-lg-8">
			
				<h3><%= bookDetails.getName() %></h3>
					
				<div class="input-group">
					<p class="text-secondary">by </p>
					<p class="text-primary">iBook Library</p>
				</div>

			<div class="row">
				
				<div class="col-sm-3">
					<img src="./assets/images/books/<%=bookDetails.getCoverPicture()%>.jpg" class="img-thumbnail">
				</div>
				
				<div class="col-sm-9">
					<p class="text-secondary">
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum</br>
						has been the industry s standard dummy text ever since the 1500s, when an unknown</br>
						printer took a galley of type and scrambled it to make a type specimen book. It has</br>
						survived not only five centuries, but also the leap into electronic typesetting, remaining</br>
						essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets</br>
						containing Lorem Ipsum passages, and more recently with desktop publishing software</br>
						like Aldus PageMaker including versions of Lorem Ipsum.</p>
					
					<div>
						<h5 class="font-weight-bold">Product Details</h5>
						Category:
						<span class="text-secondary">
							<%= bookDetails.getNameCategory() %></span></br>Binding:
						<span class="text-secondary"><%= bookDetails.getBinding() %></span></br>
						Publication date:
						<span class="text-secondary">03/30/2021</span></br>
						Pages:
						<span class="text-secondary"><%= bookDetails.getPageNumber() %></span></br>
						Height:
						<span class="text-secondary">1.10IN</span></br>
						Width:
						<span class="text-secondary">4.50IN</span></br>
						Author:
						<span class="text-secondary"><%= bookDetails.getAuthor() %></span></br>
					</div>
				</div>
			</div>

		</div>

		<!-- Right Column -->
		<div class="col-lg-4">

				<!-- Book Info Card Start -->
				<div class="card book-price-card">
					<div class="card-header book-price-card-header d-flex">
						<div class="w-100 txt" style="color: #FFFFFF">Book price</div>
						<h3><%= bookDetails.getPrice() %></h3>
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
				
				<div class="card book-info-card mt-3">
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
							<div class="flex-shrink-1 rtxt"><%= bookDetails.getNameCategory() %></div>
						</li>
						<li class="list-group-item book-info-card-item d-flex">
							<div class="w-100 ltxt">Language</div>
							<div class="flex-shrink-1 rtxt">English</div>
						</li>
					</ul>
				</div>
				<!-- Book Info Card End -->

		</div>
		</div>
		
	</div>
	<!-- Book Details & Pricing Section-->
	


	<div class="container mt-5">
				<div class="row mb-3">
					 <div class="Books-list-slides" style="width:100%; display:inline-flex; gap: 12px;">
    <%for(int i=0;i<4;i++){ %>
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

	</div>

	</div>

</body>

</html>