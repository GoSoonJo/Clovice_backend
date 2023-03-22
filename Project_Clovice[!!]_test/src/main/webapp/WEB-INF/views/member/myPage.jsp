<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko" data-n-head="%7B%22lang%22:%7B%22ssr%22:%22ko%22%7D%7D">
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
      <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/mypage.css">
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
   
   </head>

<body>
   
<jsp:include page="../common/header1.jsp"></jsp:include>

   <div class="layout-container" data-v-fca1a73c=""><!---->
      <section data-v-42a0b80a="" data-v-fca1a73c="" class="my-page-wrap">
         <div data-v-42a0b80a="" class="my-page-box">
            <div data-v-42a0b80a="" class="my-page-snb">
               <h2 data-v-6648a721="" data-v-42a0b80a="" class="musinsa-font"><a data-v-42a0b80a="" href="${contextPath}/myPage.do"
                     class="musinsa-font nuxt-link-exact-active nuxt-link-active" data-v-6648a721=""
                     aria-current="page">마이페이지</a></h2>
               <div data-v-42a0b80a="">
                  <h3 data-v-42a0b80a="">나의 쇼핑</h3>
                  <ul data-v-42a0b80a="" class="my-page-snb-list">
                     <li data-v-42a0b80a="" class="">
                        <a href="${contextPath}/myPage.do">좋아요한 상품</a>
                        <li data-v-42a0b80a="" class="">
                        <a href="memUpdateForm.do">회원정보 수정</a>
                     </li>
                     <li data-v-42a0b80a="" class="">
                        쿠폰 관리
                     </li>
                     </li>
                  </ul>
               </div>
            </div>
            <div data-v-42a0b80a="" class="list-wrap">
               <div data-v-544d2a9d="" data-v-42a0b80a="" class="my-default-page">
                  <div data-v-544d2a9d="" class="user-info-box">
                     <div data-v-544d2a9d="" class="user-info"><img data-v-544d2a9d=""
                           src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjQwcHgiIGhlaWdodD0iMjQwcHgiIHZpZXdCb3g9IjAgMCAyNDAgMjQwIiB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPgogICAgPHRpdGxlPjJGM0IxMjU1LUMzNjMtNDhEMC05Rjg4LTgwM0NCQUI4RjI5MTwvdGl0bGU+CiAgICA8ZyBpZD0iaU9TIiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8ZyBpZD0iTXlwYWdlX1Byb2ZpbGVfSW1nIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTAwLjAwMDAwMCwgLTExNS4wMDAwMDApIj4KICAgICAgICAgICAgPGcgaWQ9Ik15cGFnZS9Qcm9maWxlL0ltZyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTAwLjAwMDAwMCwgMTE1LjAwMDAwMCkiPgogICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZSIgZmlsbD0iI0VFRUVFRSIgeD0iMCIgeT0iMCIgd2lkdGg9IjI0MCIgaGVpZ2h0PSIyNDAiPjwvcmVjdD4KICAgICAgICAgICAgICAgIDxjaXJjbGUgaWQ9Ik92YWwtQ29weSIgZmlsbD0iI0NDQ0NDQyIgY3g9IjEyMCIgY3k9Ijk2IiByPSIyNCI+PC9jaXJjbGU+CiAgICAgICAgICAgICAgICA8cGF0aCBkPSJNNjgsMTcyIEM2OCwxNzAuMzgzNDA5IDY4LDE2Ny45NTg1MjIgNjgsMTY0LjcyNTMzOSBDNjgsMTQ0LjQ0MjQ5NCA4My45MjkyMzczLDEyOCAxMDMuNTc4OTQ3LDEyOCBMMTM2LjQyMTA1MywxMjggQzE1Ni4wNzA3NjMsMTI4IDE3MiwxNDQuNDQyNDk0IDE3MiwxNjQuNzI1MzM5IEwxNzIsMTcxLjk1NjA5NyIgaWQ9IlBhdGgiIGZpbGw9IiNDQ0NDQ0MiPjwvcGF0aD4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+"
                           alt="profile">
                        <div data-v-544d2a9d="" class="name-tag"><span data-v-544d2a9d="">${mvo.mem_id}님 환영합니다!</span></div>
                     </div>
                     <div data-v-544d2a9d="" class="user-coupon-box">
                        <div data-v-544d2a9d="" class="user-coupon"><span data-v-544d2a9d="">P</span></div>
                        <span data-v-544d2a9d="" class="coupon-status">2</span>
                        <p data-v-c57fe892="" data-v-544d2a9d="" class="more-btn" style="font-weight: normal;">
                           <img data-v-c57fe892="" alt="more"
                              src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjYiIGhlaWdodD0iMjYiIHZpZXdCb3g9IjAgMCAyNiAyNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Im05LjUxMyA1LjYzIDcuNzczIDcuMzk4LTcuNzczIDcuMzk5IiBzdHJva2U9IiNEREQiIHN0cm9rZS13aWR0aD0iMiIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo=">
                        </p>
                     </div>
                  </div>
                  <div data-v-544d2a9d="" class="history-wrap">
                     <div data-v-544d2a9d="" class="title-box">
                        <div data-v-544d2a9d="" class="wish-box">
                           <h3 data-v-544d2a9d="">좋아요한 상품 </h3> 
                           <span data-v-544d2a9d="" class="total">
                              
                           </span>
                        </div>
                        <p data-v-c57fe892="" data-v-544d2a9d="" class="more-btn" style="font-weight: normal;">
                           더보기
                           <img data-v-c57fe892="" alt="more"
                              src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Im00IDIgNCA0LTQgNCIgc3Ryb2tlPSIjMDAwIiBzdHJva2Utd2lkdGg9IjEuMiIgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo=">
                        </p>
                     </div>
                     <div class="product_section_2 layout_padding">
                        <div class="row">
                           <div class="col-lg-3 col-sm-6">
                              <div class="product_box">
                                 <a href="./codi.jsp" class="codi">
                                    <img src="${contextPath}/resources/images/64578.jpg" class="image_1">
                                 </a>
                                 <a href="#" class="hash">
                                 </a>
                                 <div class="tag_list"><a href="#" class="hash">
                                    </a><a href="#" class="tag">#그래픽</a>
                                    </a><a href="#" class="tag">#테이퍼드핏</a>
                                    </a><a href="#" class="tag">#캠퍼스</a>
                                    </a><a href="#" class="tag">#가을</a>
                                    </a><a href="#" class="tag">#캐주얼</a>
                                    </a><a href="#" class="tag">#세인트페인</a>
                                 </div>
                              </div>
                              
                              
                              
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>
    <!-- Javascript files-->
   <script>window.__NUXT__ = (function (a, b, c, d, e) { return { layout: "main", data: [{}], fetch: {}, error: a, state: { app: { snb: { title: b, title_path: b, snbList: [{ snbListIn: [{ path: b, name: b }] }] }, isShowLoading: c, toastText: b, isShowToast: c, toastDuration: 1000, isLoginForHeader: a, isCheckManyBidding: a }, member: { certWebUrl: a, loginName: a, loginData: { isMusinsa: c, isPasswordChangePlan: d, loginID: b, password: b, jwt: b }, musinsaJoinUserInfo: a }, notice: { current: 1 }, tradeOrder: { orderInfo: a, selectedAccount: a, addressesList: [], selectedAddress: a, paymentPasswordData: { setting: { isSetting: c, step1Password: b }, password: b }, completeData: a, requestOrderItemParams: a }, tradeProduct: { itemDetail: a, summaryItemDetail: {}, chartData: a, productOptionSize: a, tradeHistoryList: a, selectedSize: a, tradeHistoryListTotal: d } }, serverRendered: true, routePath: e, config: { _app: { basePath: e, assetsPath: "\u002F_nuxt\u002F", cdnURL: a } }, globalRefs: {} } }(null, "", false, 0, "\u002F"));</script>
   <script src="/_nuxt/runtime.f212271.js" defer=""></script>
   <script src="/_nuxt/commons/app.9579a18.js" defer=""></script>
   <script src="/_nuxt/vendors/app.f42bb5b.js" defer=""></script>
   <script src="/_nuxt/app.52cec9e.js" defer=""></script>
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
      // 삭제 스크립트
      document.querySelector('.delete-icon').addEventListener('click', function (e) {
            e.target.parentNode.remove();
         });
   </script>
   <svg id="SvgjsSvg1001" width="2" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1"
      xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev"
      style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;">
      <defs id="SvgjsDefs1002"></defs>
      <polyline id="SvgjsPolyline1003" coupons="0,0"></polyline>
      <path id="SvgjsPath1004" d="M0 0 "></path>
   </svg>
</body>

</html>