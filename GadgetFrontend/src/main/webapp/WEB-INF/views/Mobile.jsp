<%@include file="CommonHeader.jsp" %>
<h2 align="center">MOBILES</h2>
<hr>
    <div class="container">
	<div  class="row text-center text-lg-left">
	<c:forEach items="${productList}" var="product">
		<div class="col-md-3 col-sm-4 col-xs-12">
			<a href="<c:url value="/totalProductDisplay/${product.productId}"/>" class="d-block mb-4 h-100">
			<img class="img-fluid img-thumbnail" id="img" src="<c:url value="/resources/images/${product.productId}.jpg"/>" style:"width="100" height="100""/>
			<table>
			      <tr><div align="center">${product.productDesc}</div></tr>
			      <tr><div align="center">Price :${product.price}</div></tr>
			      <tr><div align="center">Stock :${product.stock}</div></tr>
			</table>
			</a>
		</div>
	</c:forEach>
	</div>
</div>
</body>
</html>