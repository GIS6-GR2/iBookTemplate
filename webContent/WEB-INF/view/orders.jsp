<%@page import="beans.*"%>
<%@page import="java.util.ArrayList"%>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/includes/bootstrap.min.css" />
<!-- Required CSS Files -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/orders.css" />

	
<div class="container_table section-content">

<div class="table-responsive">

	<table class="table table-borderless table-hover">
		<thead class="table" style="background-color:#E0F0F6;">
			<tr>
				<th > &nbsp &nbsp Order ID</th>
				<th>Status</th>
				<th>Total Price</th>
			</tr>
		</thead>
		<tbody style="background-color:#FFFFFF;">
			
			<%
				ArrayList<Command> orders = (ArrayList<Command>) request.getAttribute("OrdersHistory");
				
				for(int i=0; i<orders.size(); i++){
					out.print("<tr><td > &nbsp &nbsp #"+ orders.get(i).getIdCommand() +"</td>");
					out.print("<td>"+ orders.get(i).getState() +"</td>");
					out.print("<td>"+ orders.get(i).getTotalPrice() +"Dhs</td></tr>");
				}
				
				if(orders.size() == 0){
					out.print("<h6 class='text-danger'>No orders yet !!!</h6>");
				}
				
			%>
			
		</tbody>
	</table>
	</div>
</div>