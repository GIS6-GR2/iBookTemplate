<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

	<!-- Required CSS Files -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/error.css"/>
	
	<!-- Page Title -->
	<title>Page not found !</title>
</head>
<body>
	<div class="container">
		<img src="${pageContext.request.contextPath}/assets/images/error/404.jpg" alt="${initParam.websiteName}" />
		<h2>OOPS! PAGE NOT BE FOUND</h2>
		<p>The link you clicked may be broken or the page may have been removed or renamed !</p>
		<a href="${pageContext.request.contextPath}"><button class="btn btn-go-back">Go back</button></a>
	</div>
</body>
</html>