<style>
@import url('https://fonts.googleapis.com/css2?family=Montserrat+Alternates:wght@700&display=swap');
</style>
<!-- Header Container -->
<div class="container">
	
	<!-- Some HTML Codes Here ! -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a href="/iBookLibrary/home">
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 228.61 62.34" style="height: 25px;cursor: pointer;"><defs><style>.cls-1,.cls-3{fill:#21ade5;}.cls-2{fill:#fff;}.cls-3{font-size:55.86px;font-family:MontserratAlternates-Bold, Montserrat Alternates;font-weight:700;}</style></defs><title>Asset 6</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><rect class="cls-1" y="3.24" width="52.78" height="46.18" rx="8.45"/><rect class="cls-2" x="25.23" y="13.76" width="5.12" height="25.14"/><rect class="cls-2" x="19.2" y="22.8" width="5.12" height="16.1"/><rect class="cls-2" x="13.17" y="14.6" width="5.12" height="24.3"/><rect class="cls-2" x="7.14" y="17.18" width="5.12" height="21.71"/><rect class="cls-2" x="35.44" y="17.36" width="5.12" height="21.71" transform="translate(-9.02 22.78) rotate(-30)"/><text class="cls-3" transform="translate(57.58 47.48)">iBook</text></g></g></svg>
 	</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Browse <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Help Center</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact Us</a>
      </li>
     
    </ul>
     <!-- <span class="fa-li fa fa-check-square"></span> -->
  </div>

  <div>
  
  <form class="form-inline my-2 my-lg-0">
     <div>
<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg>
 </div>
 &nbsp;
  &nbsp;
   &nbsp;
    
	<% if(session.getAttribute("userName") != null) {%>
	<a href="${pageContext.request.contextPath}/myProfile">
   		<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">
   			${userName}
   		</button></a>
   <% } else {%>
   <a href="${pageContext.request.contextPath}/login">
   		<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">
   			ACCOUNT
   		</button></a>
   <%} %>      


    </form>
    
  </div>

  

</nav>
</div>
<!-- Header Container -->