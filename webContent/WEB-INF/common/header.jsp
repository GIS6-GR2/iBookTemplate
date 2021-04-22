<style>
@import
	url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:wght@700&display=swap')
	;
</style>
<!-- Header Container -->
<div class="container">

	<!-- Some HTML Codes Here ! -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a href="/iBookLibrary/home"> <svg
				xmlns="http://www.w3.org/2000/svg" viewBox="0 0 228.61 62.34"
				style="height: 25px; cursor: pointer;">
				<defs>
				<style>
.cls-1, .cls-3 {
	fill: #21ade5;
}

.cls-2 {
	fill: #fff;
}

.cls-3 {
	font-size: 55.86px;
	font-family: MontserratAlternates-Bold, Montserrat Alternates;
	font-weight: 700;
}
</style></defs>
				<title>Asset 6</title><g id="Layer_2" data-name="Layer 2">
				<g id="Layer_1-2" data-name="Layer 1">
				<rect class="cls-1" y="3.24" width="52.78" height="46.18" rx="8.45" />
				<rect class="cls-2" x="25.23" y="13.76" width="5.12" height="25.14" />
				<rect class="cls-2" x="19.2" y="22.8" width="5.12" height="16.1" />
				<rect class="cls-2" x="13.17" y="14.6" width="5.12" height="24.3" />
				<rect class="cls-2" x="7.14" y="17.18" width="5.12" height="21.71" />
				<rect class="cls-2" x="35.44" y="17.36" width="5.12" height="21.71"
					transform="translate(-9.02 22.78) rotate(-30)" />
				<text class="cls-3" transform="translate(57.58 47.48)">iBook</text></g></g></svg>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#">Browse
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Help
						Center</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Contact
						Us</a></li>

			</ul>
			<!-- <span class="fa-li fa fa-check-square"></span> -->
		</div>

		<div>

			

		<%
			if (session.getAttribute("userName") != null) {
		%>
		<button class="btn btn-outline-primary my-2 my-sm-0" onClick="window.location.href='${pageContext.request.contextPath}/myProfile';">
			${userName}</button>
		<%
			} else {
		%>
		<button class="btn btn-outline-primary my-2 my-sm-0" onClick="window.location.href='${pageContext.request.contextPath}/login';">
			Connexion</button>
		<%} %>


		</div>



	</nav>
</div>
<!-- Header Container -->