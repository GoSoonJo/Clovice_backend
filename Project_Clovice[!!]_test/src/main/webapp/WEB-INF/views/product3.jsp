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
   <title>Products</title>
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
   
      <!-- Javascript files-->
   <script src="${contextPath}/resources/js/jquery.min.js"></script>
   <script src="${contextPath}/resources/js/popper.min.js"></script>
   <script src="${contextPath}/resources/js/bootstrap.bundle.min.js"></script>
   <script src="${contextPath}/resources/js/jquery-3.6.1.min.js"></script>
   <script src="${contextPath}/resources/js/plugin.js"></script>
   <!-- sidebar -->
   <script src="${contextPath}/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
   <script src="${contextPath}/resources/js/custom.js"></script>
   <!-- javascript -->
   <script src="${contextPath}/resources/js/owl.carousel.js"></script>
   <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
   <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  
   <script>
      // Scroll Animation (sa, 스크롤 애니메이션)
      const saTriggerMargin = 300;
      const saElementList = document.querySelectorAll('.sa');

      const saFunc = function () {
         for (const element of saElementList) {
            if (!element.classList.contains('show')) {
               if (window.innerHeight > element.getBoundingClientRect().top + saTriggerMargin) {
                  element.classList.add('show');
               }
            }
         }
      }

      window.addEventListener('load', saFunc);
      window.addEventListener('scroll', saFunc);
   </script>
   <script>
      // 좋아요 스크립트
      const btnLikes = document.querySelectorAll(".btn_like");

        btnLikes.forEach((btnlike) => {
            btnlike.addEventListener("click", function() {
                if($(this).hasClass('btn_unlike')){
                    $(this).removeClass('btn_unlike');
                  }
                  else{
                    $(this).addClass('btn_unlike');
                  }
            });
        });
   </script>
      <script type="text/javascript">
      // python에 코디 데이터 요청하는 스크립트
   		$('document').ready(function() {
   			$.ajax({
				url : "http://127.0.0.1:8000/getCoordi",
				type : 'get',
				data : {
					"member" : "gsj"
				},
				success : function(res) {
					console.log(res)
				},
				error : function(e) {
					alert("error");
				}
   			})
		});
   </script>
</head>

<body>
   <!-- header section start -->
   
   <jsp:include page="./common/header1.jsp"></jsp:include>
  
   <!-- header section end -->
   
   <!-- product section start -->
   <div class="product_section layout_padding">
      <div class="container">
         <div class="row">
            <div class="col-sm-12">
               <h1 class="product_taital">신발</h1>
               <p class="product_text">incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
                  nostrud exercitation</p>
            </div>
         </div>
         <div class="product_section_2 layout_padding">
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="shoes1.do" class="codi">
                        <img src="${contextPath}/resources/product3/1110340_0.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like" id="btn_like_1">
                        <span class="img_emoti">좋아요</span>
                     </button>

                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#구두</a>
                           <a href="#" class="tag">#더비슈즈</a>
                           <a href="#" class="tag">#스퀘어더비</a>
                           <a href="#" class="tag">#LOSTGAREN</a>
                           <a href="#" class="tag">#무드한방올가을룩앤슈즈</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="shoes2.do" class="codi">
                        <img src="${contextPath}/resources/product3/1493265_5.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like" id="btn_like_2">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#신발</a>
                           <a href="#" class="tag">#빈티지</a>
                           <a href="#" class="tag">#척70</a>
                           <a href="#" class="tag">#척70빈티지</a>
                           <a href="#" class="tag">#RESTOCK</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="shoes3.do" class="codi">
                        <img src="${contextPath}/resources/product3/1635190_1.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#트레이너</a>
                           <a href="#" class="tag">#레플리카</a>
                           <a href="#" class="tag">#커플신발</a>
                           <a href="#" class="tag">#오솔라이트</a>
                           <a href="#" class="tag">#사계절</a>
                           <a href="#" class="tag">#운동화</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/product3/311048_6.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#블랙</a>
                           <a href="#" class="tag">#스니커즈</a>
                           <a href="#" class="tag">#척테일러</a>
                           <a href="#" class="tag">#척테일러올스타</a>
                           <a href="#" class="tag">#스테디셀러</a>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="./codi.html" class="codi">
                        <img src="${contextPath}/resources/product3/928896_2.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
                        <img src="${contextPath}/resources/product3/810033_3.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#걸리쉬</a>
                           <a href="#" class="tag">#나는 가고 싶다</a>
                           <a href="#" class="tag">#집에 매우</a>
                           <a href="#" class="tag">#호에에에에</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/product3/819685_18.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
                        <img src="${contextPath}/resources/product3/825978_0.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="./codi.html" class="codi">
                        <img src="${contextPath}/resources/codi_image/codi_5.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
                        <img src="${contextPath}/resources/codi_image/codi_6.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#걸리쉬</a>
                           <a href="#" class="tag">#나는 가고 싶다</a>
                           <a href="#" class="tag">#집에 매우</a>
                           <a href="#" class="tag">#호에에에에</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/codi_image/codi_7.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
                        <img src="${contextPath}/resources/codi_image/codi_8.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="./codi.html" class="codi">
                        <img src="${contextPath}/resources/codi_image/codi_9.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
                        <img src="${contextPath}/resources/codi_image/codi_10.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#걸리쉬</a>
                           <a href="#" class="tag">#나는 가고 싶다</a>
                           <a href="#" class="tag">#집에 매우</a>
                           <a href="#" class="tag">#호에에에에</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/codi_image/codi_11.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
                        <img src="${contextPath}/resources/codi_image/codi_12.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="./codi.html" class="codi">
                        <img src="${contextPath}/resources/codi_image/codi_13.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
                        <img src="${contextPath}/resources/codi_image/codi_14.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#걸리쉬</a>
                           <a href="#" class="tag">#나는 가고 싶다</a>
                           <a href="#" class="tag">#집에 매우</a>
                           <a href="#" class="tag">#호에에에에</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/codi_image/codi_5.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
                        <img src="${contextPath}/resources/codi_image/codi_16.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
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
         </div>
      </div>
   </div>
   <!-- product section end -->
   <!-- footer section start -->
		<jsp:include page="./common/footer.jsp"></jsp:include>
   <!-- footer section end -->

</body>

</html>