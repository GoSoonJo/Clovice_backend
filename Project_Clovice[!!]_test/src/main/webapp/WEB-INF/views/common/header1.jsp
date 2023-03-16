<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

 <!-- header section start -->
    <div class="header_section">
        <div class="container-fluid">
            <nav class="navbar navbar-light bg-light justify-content-between">
                <a class="logo" href="${contextPath}"><img src="${contextPath}/resources/images/logo.png"></a></a>
                <a href="${contextPath}" class="text-dark">Home</a>
                <a href="products.do" class="text-dark">Products</a>
                <a href="about.html" class="text-dark">About</a>
                <a href="client.html" class="text-dark">Client</a>
                <a href="contact.html" class="text-dark">Contact</a>
                <form class="form-inline ">
                    <div class="login_text">
                 		<c:if test="${empty mvo}">
							<ul>
								<li><a href="${contextPath}/memLoginForm.do" class="text-dark">
								<span class="glyphicon glyphicon-user"></span>로그인</a></li>
								<li><a href="${contextPath}/memJoin.do" class="text-dark">
								<span class="glyphicon glyphicon-log-in"></span>회원가입</a></li>
							</ul>
						</c:if>
						<c:if test="${!empty mvo}">
							<ul>
								<li><a href="${contextPath}/myPage.do" class="text-dark">
								<span class="glyphicon glyphicon-wrench"></span>마이페이지</a></li>
								<li><a href="${contextPath}/memLogout.do" class="text-dark">
								<span class="glyphicon glyphicon-log-out"></span>로그아웃</a></li>
							</ul>
						</c:if>
                    </div>
                </form>
            </nav>
        </div>
    </div>
    <!-- header section end -->