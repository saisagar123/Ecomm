<%@include file="CommonHeader.jsp"%>
<!DOCTYPE html>

<html lang="en">
<head>
  <title>Home page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<!-- banner post start-->
   <section class="banner_post">
        <div class="container-fluid">
            <div class="row justify-content-between">
                <div class="banner_post_1 banner_post_bg_1">
                    <div class="banner_post_iner text-center">
                      <img src='<c:url value="/resources/images/Category01.jpg"></c:url>' alt="MOBILE"  height="100" width="100"><br>
                       <a href="mobile"
                        <h5> Mobiles </h5> ></a>
                    </div>
                </div><div class="banner_post_1 banner_post_bg_2">
                    <div class="banner_post_iner text-center">
                        <img src='<c:url value="/resources/images/Category02.jpg"></c:url>' alt="ACCESORIES"  height="100" width="100"><br>
                      <a href=""
                        <h5>Accesories </h5> ></a>
                    </div>
                </div>
                
            </div>
        </div>
    </section>

</body>
</html>