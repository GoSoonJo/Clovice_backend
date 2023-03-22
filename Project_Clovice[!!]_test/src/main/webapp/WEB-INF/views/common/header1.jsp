<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

 <!-- header section start -->
    <div class="header_section">
        <div class="container-fluid">
            <nav class="navbar navbar-light bg-light justify-content-between">
                <a class="logo" href="${contextPath}"><img src="${contextPath}/resources/images/logo.png"></a></a>
                <c:if test="${!empty mvo}">
                <a href="product1.do" class="text-dark" style="font-size:20px;">상의</a>
                <a href="product2.do" class="text-dark" style="font-size:20px;">하의</a>
                <a href="product3.do" class="text-dark" style="font-size:20px;">신발</a>
                <a href="products.do" class="text-dark" style="font-size:20px;">코디맵</a>
                <a href="boardMain.do" class="text-dark" style="font-size:20px;">커뮤니티</a>
                </c:if>
                <c:if test="${empty mvo}">
                 </c:if>
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
								<li><a href="${contextPath}/myPage.do" class="text-dark" style="font-size:15px;">
								<span class="glyphicon glyphicon-wrench"></span>마이페이지</a></li>
								<li><a href="${contextPath}/memLogout.do" class="text-dark" style="font-size:15px;">
								<span class="glyphicon glyphicon-log-out"></span>로그아웃</a></li>
							</ul>
						</c:if>
                    </div>
                </form>
            </nav>
        </div>
    </div>
    <!-- header section end -->