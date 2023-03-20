<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

  <div class="header_section">
      <div class="container-fluid">
         <nav class="navbar navbar-light bg-light justify-content-between">
            <a class="logo" href="index.html"><img src="images/logo.png"></a></a>

            <form class="form-inline ">
               <div class="login_text">
                  <ul>
                     <li><a href="recommend.html">추천</a></li>
                     <li><a href="products.html">코디맵</a></li>
                     <li><a href="mypagelike.html">좋아요</a></li>
                     <!-- <li><a href="client.html">Client</a></li>
                     <li><a href="contact.html">Contact</a></li> -->
                     <li><a href="login.html">로그인</a></li>
                  </ul>
               </div>
            </form>
         </nav>
      </div>
   </div>