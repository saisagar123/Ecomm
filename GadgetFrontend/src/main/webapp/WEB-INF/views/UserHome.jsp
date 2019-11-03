<%@include file="CommonHeader.jsp" %>

<h3 align="center">User Home</h3>
<body>


<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
     
  </ol>
 <!-- banner post start-->
    <section class="banner_post">
        <div class="container-fluid">
            <div class="row justify-content-between">
                <div class="banner_post_1 banner_post_bg_1">
                    <div class="banner_post_iner text-center">
                      <img src='<c:url value="/resources/images/Category01.jpg"></c:url>' alt="MOBILE"  height="60" width="60"><br>
                       <a href=""
                        <h5> Mobiles </h5> ></a>
                    </div>
                </div><div class="banner_post_1 banner_post_bg_2">
                    <div class="banner_post_iner text-center">
                        <img src='<c:url value="/resources/images/Category02.jpg"></c:url>' alt="ACCESORIES"  height="60" width="60"><br>
                      <a href=""
                        <h5>Accesories </h5> ></a>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
</body>

</html>