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
   <title>Beautiflie</title>
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
   <link rel="stylesheet" href="${contextPath}/resources/css/like.css">
</head>

<body>
   <a href="#" class="scroll-top">
      <img src="${contextPath}/resources/images/top-icon.png">
   </a>
   <!-- header section start -->
      	<jsp:include page="./common/header1.jsp"></jsp:include>
   <!-- header section end -->

   <!-- banner section start -->
   <div class="banner_section layout_padding">
      <div class="mySlideDiv fade active">
         <div class="bn-container">
            <img src="${contextPath}/resources/images/banner1.jpg" id="banner1">
         </div> 
      </div>

      <div class="mySlideDiv fade">
         <div class="bn-container2">
            <img src="${contextPath}/resources/images/banner2.jpg" id="banner2">
         </div>
      </div>
      <div class="mySlideDiv fade">
         <div class="bn-container3">
            <img src="${contextPath}/resources/images/banner3.jpg" id="banner3">
         </div>
      </div>

      <div class="mySlideDiv fade">
         <div class="bn-container4">
            <img src="${contextPath}/resources/images/banner4.jpg" id="banner4">
         </div>
      </div>

      <a class="prev" onclick="prevSlide()">&#10094;</a>
      <a class="next" onclick="nextSlide()">&#10095;</a>
   </div>

   <!-- banner section end -->
   <!-- product section start -->
      <div class="product_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-sm-12">
                  <h1 class="product_taital">인기 스타일</h1>
                  <p class="product_text">사람들이 선호하는 스타일을 확인해보세요</p>
               </div>
            </div>

            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="${contextPath}/resources/codi.html" class="codi">
                        <img src="images/64578.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                        <span class="ani_heart_m"></span>
                     </button>

                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#캐주얼</a>
                           <a href="#" class="tag">#ㅇㅅㅇ</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/images/84984.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                        <span class="ani_heart_m"></span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#걸리쉬</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/images/5646645.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                        <span class="ani_heart_m"></span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#캐주얼</a>
                           <a href="#" class="tag">#ㅇㅅㅇ</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/images/202303141.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                        <span class="ani_heart_m"></span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#캐주얼</a>
                           <a href="#" class="tag">#ㅇㅅㅇ</a>
                        </div>
                     </a>
                  </div>
               </div>
            </div>


            <div class="seemore_bt"><a href="products.do">코디 더보기</a></div>
         </div>
      </div>
      <!-- product section end -->
      <!-- about section start -->
      <div class="about_section layout_padding">
         <div class="container">
            <div class="about_section_main slider">
               <div class="col-sm-12">
                  <h1 class="product_taital">새로운 코디</h1>
               </div>
               <div class="row slider-container">
                  <div class="slider-wrapper">
                     <div class="slides">
                        <div class="col-lg-3 col-sm-6 slide">
                           <div class="newcodi_box">
                              <a href="products.do" class="newcodi">
                                 <img src="${contextPath}/resources/images/64578.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/84984.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/5646645.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/202303131.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="./codi.html" class="newcodi">
                                 <img src="${contextPath}/resources/images/202303132.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/202303133.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/202303134.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/202303135.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="./codi.html" class="newcodi">
                                 <img src="${contextPath}/resources/images/202303136.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/202303137.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/202303138.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/202303139.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="./codi.html" class="newcodi">
                                 <img src="${contextPath}/resources/images/2023031310.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/2023031311.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/2023031312.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                           <div class="newcodi_box">
                              <a href="#" class="newcodi">
                                 <img src="${contextPath}/resources/images/2023031313.jpg" class="image_1">
                              </a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- about section end -->
      <!-- customer section start -->
      <!-- <div class="customer_section layout_padding">
      <div class="container">
         <div class="row">
            <div class="col-sm-12">
               <h1 class="customer_taital">What says customers</h1>
            </div>
         </div>
         <div id="main_slider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <div class="client_section_2">
                     <div class="client_main">
                        <div class="client_left">
                           <div class="client_img"><img src="images/client-img.png"></div>
                        </div>
                        <div class="client_right">
                           <h3 class="name_text">Jonyro</h3>
                           <p class="dolor_text">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                              labore
                              et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu </p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="client_section_2">
                     <div class="client_main">
                        <div class="client_left">
                           <div class="client_img"><img src="images/client-img.png"></div>
                        </div>
                        <div class="client_right">
                           <h3 class="name_text">Jonyro</h3>
                           <p class="dolor_text">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                              labore
                              et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu </p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <div class="client_section_2">
                     <div class="client_main">
                        <div class="client_left">
                           <div class="client_img"><img src="images/client-img.png"></div>
                        </div>
                        <div class="client_right">
                           <h3 class="name_text">Jonyro</h3>
                           <p class="dolor_text">consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                              labore
                              et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation eu </p>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#main_slider" role="button" data-slide="prev">
               <i class="fa fa-angle-left"></i>
            </a>
            <a class="carousel-control-next" href="#main_slider" role="button" data-slide="next">
               <i class="fa fa-angle-right"></i>
            </a>
         </div>
      </div>
   </div> -->
      <!-- customer section end -->
       <!-- footer section start -->
      <jsp:include page="./common/footer.jsp"></jsp:include>
   <!-- footer section end -->
      <!-- copyright section start -->

      <!-- copyright section end -->
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
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
      <script src="https://kit.fontawesome.com/bf30d78bf3.js" crossorigin="anonymous"></script>
      <script>
         function openNav() {
            document.getElementById("mySidenav").style.width = "100%";
         }

         function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
         }
      </script>
      <script src="${contextPath}/resources/js/like.js"></script>
      <script src="${contextPath}/resources/js/newcodi.js"></script>
      <script>
         const sliderWrapper = document.querySelector('.slider-wrapper');
         const slider = document.querySelector('.slides');
         const sliderItems = document.querySelectorAll('.col-lg-3');
         const slideWidth = sliderItems[0].clientWidth;

         let currentIndex = 0;

         function moveToNext() {
            currentIndex++;
            if (currentIndex >= sliderItems.length) {
               currentIndex = 0;
            }
            sliderWrapper.style.transform = `translateX(-${currentIndex * slideWidth}px)`;
         }

         setInterval(moveToNext, 5000);

         // 첫 번째 슬라이더에 마지막 이미지를 복사하여 두 번째 슬라이더에 추가
         slider.innerHTML += slider.innerHTML;

         function moveToNext() {
            currentIndex++;
            if (currentIndex >= sliderItems.length) {
               currentIndex = 0;
               sliderWrapper.style.transform = `translateX(0px)`;
            } else {
               sliderWrapper.style.transform = `translateX(-${currentIndex * slideWidth}px)`;
            }
         }

         setInterval(moveToNext, 5000);
      </script>
      <script type="text/javascript">

         $(document).ready(function () {
            $(".mySlideDiv").not(".active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김

            setInterval(nextSlide, 4000); //4초(4000)마다 다음 슬라이드로 넘어감
         });

         //이전 슬라이드
         function prevSlide() {
            $(".mySlideDiv").hide(); //모든 div 숨김
            var allSlide = $(".mySlideDiv"); //모든 div 객체를 변수에 저장
            var currentIndex = 0; //현재 나타난 슬라이드의 인덱스 변수

            //반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
            $(".mySlideDiv").each(function (index, item) {
               if ($(this).hasClass("active")) {
                  currentIndex = index;
               }

            });

            //새롭게 나타낼 div의 index
            var newIndex = 0;

            if (currentIndex <= 0) {
               //현재 슬라이드의 index가 0인 경우 마지막 슬라이드로 보냄(무한반복)
               newIndex = allSlide.length - 1;
            } else {
               //현재 슬라이드의 index에서 한 칸 만큼 뒤로 간 index 지정
               newIndex = currentIndex - 1;
            }

            //모든 div에서 active 클래스 제거
            $(".mySlideDiv").removeClass("active");

            //새롭게 지정한 index번째 슬라이드에 active 클래스 부여 후 show()
            $(".mySlideDiv").eq(newIndex).addClass("active");
            $(".mySlideDiv").eq(newIndex).show();

         }

         //다음 슬라이드
         function nextSlide() {
            $(".mySlideDiv").hide();
            var allSlide = $(".mySlideDiv");
            var currentIndex = 0;

            $(".mySlideDiv").each(function (index, item) {
               if ($(this).hasClass("active")) {
                  currentIndex = index;
               }

            });

            var newIndex = 0;

            if (currentIndex >= allSlide.length - 1) {
               //현재 슬라이드 index가 마지막 순서면 0번째로 보냄(무한반복)
               newIndex = 0;
            } else {
               //현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
               newIndex = currentIndex + 1;
            }

            $(".mySlideDiv").removeClass("active");
            $(".mySlideDiv").eq(newIndex).addClass("active");
            $(".mySlideDiv").eq(newIndex).show();

         }

      </script>
      

</body>

</html>