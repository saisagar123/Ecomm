<%@include file="CommonHeader.jsp" %>

<h3 align="center">ContactUs Page</h3>


<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact V2</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="resources/contactus/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/contactus/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/contactus/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/contactus/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/contactus/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/contactus/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/contactus/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/contactus/css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form class="contact2-form validate-form" action="<c:url value="/inserrequest"/>"  method="post">
					<span class="contact2-form-title">
						Contact Us
					</span>

					<div class="wrap-input2 validate-input" data-validate="Name is required">
						<input class="input2" type="text" name="txtName">
						<span class="focus-input2" data-placeholder="NAME"></span>
					</div>
 					
 					<div class="wrap-input2 validate-input" data-validate="Name is required">
						<input class="input2" type="text" name="txtEmail">
						<span class="focus-input2" data-placeholder="Email"></span>
					</div>
					<div class="wrap-input2 validate-input" data-validate="Name is required">
						<input class="input2" type="text" name="txtPhone">
						<span class="focus-input2" data-placeholder="Phone Number"></span>
					</div>
					
					
					<div class="wrap-input2 validate-input" data-validate = "Message is required">
						<textarea class="input2" name="txtMsg"></textarea>
						<span class="focus-input2" data-placeholder="MESSAGE"></span>
					</div>

					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
							<button class="contact2-form-btn">
								Send Your Message
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="resources/contactus/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/contactus/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/contactus/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/contactus/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/contactus/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>

</body>
</html>
<p>
Call Us- 044-
Mail Us- abcxyz@company.in
Post Us- Address
</p>
<%@include file="CommonFooter.jsp" %>