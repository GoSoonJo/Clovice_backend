<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

 <!-- header section start -->
   <div class="header_section">
      <div class="container-fluid">
         <nav class="navbar navbar-light bg-light justify-content-between">
            <a class="logo" href="${contextPath}"><img src="${contextPath}/resources/images/logo.png"/></a>
                <a href="${contextPath}" class="text-dark">Home</a>
                <a href="products.do" class="text-dark">Products</a>
                <a href="about.html" class="text-dark">About</a>
                <a href="client.html" class="text-dark">Client</a>
                <a href="contact.html" class="text-dark">Contact</a>
            <form class="form-inline ">
               <div class="login_text">
                  <ul>
                     <li><a href="${contextPath}/memLoginForm.do"><img src="${contextPath}/resources/images/user-icon.png"></a></li>
                     <li><a href="#"><img src="${contextPath}/resources/images/bag-icon.png"></a></li>
                     <li><a href="#"><img src="${contextPath}/resources/images/search-icon.png"></a></li>
                  </ul>
               </div>
            </form>
         </nav>
      </div>
   </div>
    <!-- header section end -->