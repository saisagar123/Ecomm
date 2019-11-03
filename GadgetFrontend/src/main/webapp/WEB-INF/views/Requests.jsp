<%@include file="CommonHeader.jsp" %>

<div class="table-responsive">
<table align="center" class="table table-bordered">
	<tr class="success">
		<td>Requestor ID</td>
		<td>Requestor Name</td>
		<td>Requestor Email</td>
		<td>Requestor PhoneNumber</td>
		<td>Requestor Message</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${contactList}" var="contact"> 
	<tr>
		<td>${contact.contactid}</td>
		<td>${contact.phone}</td>
		<td>${contact.email}</td>
		<td>${contact.phnum}</td>
		<td>${contact.message}</td>
		<td>
			<a href="<c:url value="/deleterequest/${contact.contactid}"/>" class="btn btn-danger">DELETE</a>
		</td>
	</tr>
	</c:forEach>

</table>
</div>
</body>
</html>