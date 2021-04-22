<div class="container">

<h3 class="mb-2">Books List</h3>

<table class="table table-hover" style="background:white; border-radius:5px; overflow:hidden; font-size:14px;">
  <thead style="background-color:#E0F0F6;">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Title</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th class="text-right pr-5" scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
	<c:forEach var="book" items="${books}">
		<tr>
			<th scope="row"><c:out value="${book.idBook}"/></th>
			<td><c:out value="${book.name}"/></td>
			<td><c:out value="${book.author}"/></td>
			<td><c:out value="${book.price}"/> Dhs</td>
			<td>
				<div class="btn-group">
					<div class="">
						<button class="btn btn-link font-weight-normal" >
							<i class="fas fa-trash"></i>
						</button>
					</div>
				
					<div class="">
						<button type="reset" class="btn btn-link font-weight-normal" >
							<i class="far fa-edit"></i>
						</button>
					</div>
				</div>
			</td>
		</tr>

    </c:forEach>
 
  </tbody>
</table>
</div>				  	  		