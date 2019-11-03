<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="collapse navbar-collapse" id="navbarText">
      <a class="navbar-brand" href="homepage"><img src=<c:url value="/resources/images/logo.png"></c:url>  alt="plg" style="width:40px;height:30px;"></a>
    <ul class="nav navbar-nav">
    <c:if test="${!sessionScope.loggedIn}">	
      		<li><a href="login">Login</a></li>
      		
      		
    </c:if>
    <c:if test="${sessionScope.loggedIn}">
    	<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
    		<li><a href="requests">qurries</a></li>
      		<li><a href="category">Manage Category</a></li>
      		<li><a href="product">Manage Product</a></li>
      		
      	</c:if>
    </c:if>
    <c:if test="${sessionScope.loggedIn}">
    	<c:if test="${sessionScope.role=='ROLE_USER'}">
      		<li><a href="productdisplay">Product </a></li>
      		<li><a href="cart">Cart</a></li>
      		<li><a href="contactUs">ContactUS</a></li>
      	</c:if>
    </c:if>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
		<c:if test="${!sessionScope.loggedIn}">
			<li><a href="<c:url value="/register"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			
		</c:if>
		<c:if test="${sessionScope.loggedIn}">
			<li><a href="#"><span class="glyphicon glyphicon-user">${sessionScope.username}</span></a></li>
			<li><a href="<c:url value="/perform_logout"/>"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
		</c:if>
	</ul>   
  </div>
</nav>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>