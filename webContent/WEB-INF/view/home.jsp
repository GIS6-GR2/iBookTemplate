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

    <!-- Page Title -->
    <title>${initParam.websiteTitle} | Home</title>
  </head>
  <body>
    <!-- Section: Header -->
    <jsp:include page="../common/header.jsp"></jsp:include>
    <!-- Section: Header -->

    <!-- Specific page content -->
    <!-- Specific page content -->

		<!-- Section: Contact Us -->
    <jsp:include page="../common/contactUs.jsp"></jsp:include>
		<!-- Section: Contact Us -->
		
    <!-- Section: Footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <!-- Section: Footer -->
  </body>
</html>
