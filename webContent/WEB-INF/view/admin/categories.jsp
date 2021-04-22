<div class="container">

<h3 class="mb-2">Categories</h3>

<table class="table table-hover" style="background:white; border-radius:5px; overflow:hidden; font-size:14px;">
  <thead style="background-color:#E0F0F6;">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Category</th>
  
      <th class="" scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
	<c:forEach var="category" items="${categories}">
		<tr>
			<th scope="row"><c:out value="${category.idCategory }" /></th>
			<td><c:out value="${category.name }" /></td>
	      <td>
			<div class="btn-group">
				<div class="">
					<button class="btn btn-link font-weight-normal" >
						<i class="fas fa-trash"></i>
					</button>
				</div>
				
			</div>
		  </td>
	    </tr>
  </c:forEach>  
  </tbody>
</table>
<div>
 <button type="button" class="btn btn-outline-primary">New Category</button></div>
 
 
 </div>