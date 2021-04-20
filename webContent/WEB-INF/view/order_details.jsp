<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css"/>
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/orderDetails.css"/>
    <!-- Required CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css"/>
<title>Order Details</title>
</head>
<body>

<div class="container">

  <!-- Section: Header -->
    <jsp:include page="../common/header.jsp"></jsp:include>

    <!-- Section: Header -->
   
   
   <h2 class="h2">Thank you. Your command has been received</h2>
   

  <div  class="div_container" >
  
  <div>
  <span>Order number</span>
  <h5>6300</h5>
  </div>
  
  <div>
  <span>Date</span>
  <h5>April 25 2021</h5>
  </div>
  
  <div>
  <span>Total</span>
  <h5>125,36 Dhs</h5>
  </div>
  
  <div>
  <span>Payment method</span>
  <h5>Cash on Delivery</h5>
  </div>
  
  </div>
  
  <div>
  
  <h2>Order Details</h2>

        <div class="table-responsive">

		<table class="table table-borderless table-hover" style="border:1px solid lightblue;border-radius:20px;">
			<thead class="table" style="background-color:#E0F0F6;">
				<tr>
					<th > &nbsp &nbsp Products</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Suptotal</th>
				</tr>
			</thead>
			<tr>
				<td > &nbsp &nbsp  Bankers for Bundt Cakes</td>
				<td>98.25 Dhs</td>
				<td>1</td>
				<td>98.25 Dhs</td>
			</tr>
			<tr>
				<td > &nbsp &nbsp Ramona Quimby ,Age 8</td>
				<td>98.25 Dhs</td>
				<td>2</td>
				<td>196.50 Dhs </td>
			</tr>
			<tr>
				<td > &nbsp &nbsp The Mystery of the Parse Lawyer</td>
				<td>98.25 Dhs</td>
				<td>1</td>
				<td>98.25 Dhs</td>
			</tr>
		<tfoot class="tfoot">
			<tr>
				<td >  &nbsp &nbsp Total</td>
				<td></td>
				<td></td>
				<td>196.50</td>
			</tr>
		</tfoot>	
		</table>
		</div>
  
  <button class="btn">SEE YOUR ORDERS</button>
  
  
  </div>





    <!-- Section: Footer -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <!-- Section: Footer -->
</div>
</body>
</html>