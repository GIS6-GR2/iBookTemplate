<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css"/>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Books_list.css"/>
</head>
<body>

	 <div class="recommended-books-container" style="width:100%; display:inline-flex">
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
</body>
</html>