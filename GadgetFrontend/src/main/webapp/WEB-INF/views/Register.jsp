<%@include file="CommonHeader.jsp" %>


<h3 align="center">Register Page</h3>
<form action="<c:url value="/insertUser"/>" method="post">

<div class="table-responsive">
<table align="center" class="table table-bordered">
</br>
					
				
	<tr>
		<td>Username</td>
		<td><input class="text" type="text"  placeholder="Username" name="uName" required=""/></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input class="text" type="password"  placeholder="Password" required="" name="uPass"></td>
	</tr>
	<tr>
	<tr>
		<td>Email ID</td>
		<td><input class="text email" type="email"  placeholder="Email" required="" name="uEID"></td>
	</tr>
	<tr>
	<tr>
		<td>Your Name</td>
		<td><input class="text" type="text"  placeholder="FULL NAME" required="" name="ucName"></td>
	</tr>
	<tr>
	<tr>
		<td>Your Address</td>
		<td><input class="text" type="text"  placeholder="Address" required="" name="uAdd"></td>
	</tr>
	<tr>
	<tr>
		<td>Phone Number</td>
		<td><input class="text" type="text"  placeholder="MobileNumber" required="" name="uPhNo"></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="Insert UserDetail" class="btn btn-info"/>
			</center>
		</td>
	</tr>
</table>

</div>
</form>
</body>
</html>