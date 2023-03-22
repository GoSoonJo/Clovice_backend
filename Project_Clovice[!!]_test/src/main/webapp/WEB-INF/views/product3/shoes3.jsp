<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
   <!-- basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- mobile metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- site metas -->
   <title>About</title>
   <meta name="keywords" content="">
   <meta name="description" content="">
   <meta name="author" content="">
   <!-- bootstrap css -->
   <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/bootstrap.min.css">
   <!-- style css -->
   <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
   <!-- Responsive-->
   <link rel="stylesheet" href="${contextPath}/resources/css/responsive.css">
   <!-- fevicon -->
   <link rel="icon" href="${contextPath}/resources/images/fevicon.png" type="image/gif" />
   <!-- Scrollbar Custom CSS -->
   <link rel="stylesheet" href="${contextPath}/resources/css/jquery.mCustomScrollbar.min.css">
   <!-- Tweaks for older IEs-->
   <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
   <!-- fonts -->
   <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Open+Sans:400,700&display=swap&subset=latin-ext"
      rel="stylesheet">
   <!-- owl stylesheets -->
   <link rel="stylesheet" href="${contextPath}/resources/css/owl.carousel.min.css">
   <link rel="stylesheet" href="${contextPath}/resources/css/owl.theme.default.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
      media="screen">
   <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">

   <!-- Javascript files-->
   <script src="${contextPath}/resources/js/jquery.min.js"></script>
   <script src="${contextPath}/resources/js/popper.min.js"></script>
   <script src="${contextPath}/resources/js/bootstrap.bundle.min.js"></script>
   <script src="${contextPath}/resources/js/jquery-3.0.0.min.js"></script>
   <script src="${contextPath}/resources/js/plugin.js"></script>
   <!-- sidebar -->
   <script src="${contextPath}/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="${contextPath}/resources/js/custom.js"></script>
   <!-- javascript -->
   <script src="${contextPath}/resources/js/owl.carousel.js"></script>
   <script src="${contextPath}/resources/https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
   <script src="${contextPath}/resources/https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
  
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  
   <script>
      $('.slider-2 .page-nav > div').click(function () {

         var $this = $(this);
         var $pagenav = $this.parent()
         var $current = $pagenav.find('.active');

         $current.removeClass('active');
         $this.addClass('active');

         var index = $this.index();
         var $슬라이더 = $this.closest('.slider-2');

         $슬라이더.find('.slides > div.active').removeClass('active');
         $슬라이더.find('.slides > div').eq(index).addClass('active');


      });

      $('.slider-2 > .side-btns > div:first-child').click(function () {
         var $this = $(this);
         var $slider = $this.closest('.slider-2');

         var $current = $slider.find('.page-nav > div.active');
         var $post = $current.prev();

         if ($post.length == 0) {
            $post = $slider.find('.page-nav > div:last-child');
         }

         $post.click();
      });

      $('.slider-2 > .side-btns > div:last-child').click(function () {
         var $this = $(this);
         var $slider = $this.closest('.slider-2');

         var $current = $slider.find('.page-nav > div.active');
         var $post = $current.next();

         if ($post.length == 0) {
            $post = $slider.find('.page-nav > div:first-child');
         }

         $post.click();
      });
   </script>


</head>

<body>
   <!-- header section start -->
  <jsp:include page="../common/header1.jsp"></jsp:include>
   <!-- header section end -->
   <!-- about section start -->
   <div class="about_section layout_padding">
      <div class="container">
         <div class="about_section_main">
            <div class="row">
               <div class="col-md-6">
                  <div><img src="${contextPath}/resources/codi/codi_12977.jpg" class="image_3"></div>
               </div>
               <div class="col-md-6">
                  <div class="about_taital_main">
                     <h1 class="about_taital">#캐주얼</h1>
                     <p class="about_text">labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                        exercitation ullamco laboris nisi ut aliquip ex ea commodo consequatlabore et dolore magna
                        aliqua.</p>
                     <div class="readmore_bt"><a href="#">다른 코디 더보기</a></div>
                  </div>
                  <div class="about_taital_main">
                     <div class="slider-2">

                        <div class="side-btns">
                           <div><span><i class="fas fa-caret-left"></i></i></span></div>
                           <div><span><i class="fas fa-caret-right"></i></span></div>
                        </div>

                        <div class="slides">
                           <div class="active" style="background-image:url(${contextPath}/resources/product2/1149328_2.jpg);"></div>
                           <div style="background-image:url(${contextPath}/resources/product1/1595032_4.jpg);"></div>
                           <div style="background-image:url(${contextPath}/resources/images/1377183_0.jpg);"></div>
                           <div style="background-image:url(${contextPath}/resources/images/1378411_0.jpg);"></div>
                        </div>

                        <div class="page-nav">
                           <div class="active"></div>
                           <div></div>
                           <div></div>
                           <div></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- about section end -->
   <!-- footer section start -->
   		<jsp:include page="../common/footer.jsp"></jsp:include>
   <!-- footer section end -->

</body>

</html>