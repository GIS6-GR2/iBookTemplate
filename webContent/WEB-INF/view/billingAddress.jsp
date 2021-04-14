
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myAccountForms.css"/>
</head>
<body>
	 <div class="container">
            <div class="card">
				<ul class="list-group list-group-flush">
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							First Name
						</div>
						<div class="col input-group-prepend">
							<input name="fname" class="form-control input-transparent" value="Sabri"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Last Name
						</div>
						<div class="col input-group-prepend">
							<input name="lname" class="form-control input-transparent" value="Hakuli"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							City
						</div>
						<div class="col input-group-prepend">
							<input name="city" class="form-control input-transparent" value="Kosovo"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Address
						</div>
						<div class="col input-group-prepend">
							<input name="address" class="form-control input-transparent" value="KosovoChuck Norris 32"/>
						</div>
					</li>

					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Postal Code
						</div>
						<div class="col input-group-prepend">
							<input name="zip" class="form-control input-transparent" value="60000"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Phone
						</div>
						<div class="col input-group-prepend">
							<input name="phone" class="form-control input-transparent" value="+212 56 215 5876"/>
						</div>
					</li>
					
					<li class="list-group-item d-flex align-items-center">
						<div class="col text-muted font-weight-normal" style="font-size: 14px;">
							Email Address
						</div>
						<div class="col input-group-prepend">
							<input name="email" class="form-control input-transparent" value="sabrihakuli@outlook.com"/>
						</div>
					</li>
  				</ul>
			</div>
    </div>
</body>
</html>