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
   		//$('document').ready(function() {
   			//$.ajax({
			//	url : "http://127.0.0.1:8000/getCoordi",
			///	type : 'get',
			//	data : {
			//		"member" : "gsj"
			//	},
			//	success : function(res) {
			//		$.ajax({
			 //     		url : ".do",
			 //     		data : res,
			 //     		type : "get",
			 //     		success: function(data) {
			//				
			//			},
			  //    		error : function(e) {
			//				alert("error");
			//			}
			 //     	})
			//	},
			//	error : function(e) {
			//		alert("error");
			//	}
   			//})
		//});
      	
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
               <h1 class="product_taital">유사도 기반으로 추천된 코디</h1>
               <p class="product_text"></p>
            </div>
         </div>
         <div class="product_section_2 layout_padding">
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="${contextPath}/recom1.do" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_10612.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like" id="btn_like_1">
                        <span class="img_emoti">좋아요</span>
                     </button>

                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#스트라이프</a>
                           <a href="#" class="tag">#플라스</a>
                           <a href="#" class="tag">#핀턱</a>
                           <a href="#" class="tag">#캠퍼스</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="${contextPath}/recom2.do" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_10822.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like" id="btn_like_2">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#편안한</a>
                           <a href="#" class="tag">#원마일웨어</a>
                           <a href="#" class="tag">#컬러포인트</a>
                           <a href="#" class="tag">#로고플레이</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="${contextPath}/recom3.do" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_13021.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#오버핏</a>
                           <a href="#" class="tag">#와이드핏</a>
                           <a href="#" class="tag">#스티치</a>
                           <a href="#" class="tag">#로고플레이</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="${contextPath}/recom4.do" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_1342.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#겨울</a>
                           <a href="#" class="tag">#캐주얼</a>
                           <a href="#" class="tag">#미니멀코드</a>
                           <a href="#" class="tag">#아디다스</a>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="./codi.html" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_14313.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>

                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#워싱</a>
                           <a href="#" class="tag">#슬림핏</a>
                           <a href="#" class="tag">#에코</a>
                           <a href="#" class="tag">#캠퍼스</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_169.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#가을</a>
                           <a href="#" class="tag">#걸리쉬</a>
                           <a href="#" class="tag">#유라고</a>
                           <a href="#" class="tag">#블루엘리펀트</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_18350.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#워싱</a>
                           <a href="#" class="tag">#미니멀</a>
                           <a href="#" class="tag">#린넨</a>
                           <a href="#" class="tag">#여름</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_19927.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#겨울</a>
                           <a href="#" class="tag">#댄디</a>
                           <a href="#" class="tag">#강단</a>
                           <a href="#" class="tag">#위더로드</a>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="./codi.html" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_20363.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>

                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#겨울</a>
                           <a href="#" class="tag">#댄디</a>
                           <a href="#" class="tag">#가먼트레이블</a>
                           <a href="#" class="tag">#니트/스웨터</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_20388.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#겨울</a>
                           <a href="#" class="tag">#댄디</a>
                           <a href="#" class="tag">#니트/스웨터</a>
                           <a href="#" class="tag">#데님팬츠</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_20542.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#겨울</a>
                           <a href="#" class="tag">#댄디</a>
                           <a href="#" class="tag">#겨울 싱글 코트</a>
                           <a href="#" class="tag">#마인드브릿지</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_2060.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#봄</a>
                           <a href="#" class="tag">#캐주얼</a>
                           <a href="#" class="tag">#컨버스</a>
                           <a href="#" class="tag">#모디파이드</a>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="./codi.html" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_2931.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>

                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#봄</a>
                           <a href="#" class="tag">#캐주얼</a>
                           <a href="#" class="tag">#드레피소드</a>
                           <a href="#" class="tag">#무신사 스탠다드</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_4507.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#와이드핏</a>
                           <a href="#" class="tag">#격식</a>
                           <a href="#" class="tag">#출근룩</a>
                           <a href="#" class="tag">#단정한</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_4585.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#데이트</a>
                           <a href="#" class="tag">#레더</a>
                           <a href="#" class="tag">#컬러포인트</a>
                           <a href="#" class="tag">#테이퍼드핏</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_5087.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#스트라이프</a>
                           <a href="#" class="tag">#캠퍼스</a>
                           <a href="#" class="tag">#여름</a>
                           <a href="#" class="tag">#캐주얼</a>
                        </div>
                     </a>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="./codi.html" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_5564.jpg" class="image_1">
                     </a>

                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>

                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#스트라이프</a>
                           <a href="#" class="tag">#화사한</a>
                           <a href="#" class="tag">#라탄</a>
                           <a href="#" class="tag">#캐주얼</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_5838.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#미니멀</a>
                           <a href="#" class="tag">#컬러포인트</a>
                           <a href="#" class="tag">#화사한</a>
                           <a href="#" class="tag">#로맨틱무브</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_5849.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#미니멀</a>
                           <a href="#" class="tag">#출근룩</a>
                           <a href="#" class="tag">#레더</a>
                           <a href="#" class="tag">#포멀</a>
                        </div>
                     </a>
                  </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="product_box">
                     <a href="#" class="codi">
                        <img src="${contextPath}/resources/recom_codi/codi_6086.jpg" class="image_1">
                     </a>
                     <button type="button" class="btn_like">
                        <span class="img_emoti">좋아요</span>
                     </button>
                     <a href="#" class="hash">
                        <div class="tag_list">
                           <a href="#" class="tag">#화사한</a>
                           <a href="#" class="tag">#스트라이프</a>
                           <a href="#" class="tag">#남친룩</a>
                           <a href="#" class="tag">#캠퍼스</a>
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