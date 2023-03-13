<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
    <title>Client</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/join.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="${contextPath}/resources/css/responsive.css">
    <!-- fevicon -->
	<link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css?family=Great+Vibes|Open+Sans:400,700&display=swap&subset=latin-ext"
       rel="stylesheet">
    <!-- owl stylesheets -->
    <link rel="stylesheet" href="${contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css"
       media="screen">
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${contextPath}/resources/css/like.css">
    
    
    
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
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>


	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
    
    <script type="text/javascript">
$(document).ready(function(){
	if(${!empty msgType}){
		$("#messageType").attr("class","modal-content panel-warning");
		$("#myMessage").modal("show");
	}
});


	
	function passwordCheck(){
	var memPassword1 =$("#memPassword1").val();
	var memPassword2 =$("#memPassword2").val();
	
	if(memPassword1!=memPassword2){
		$("#passMessage").html("비밀번호가 서로 일치하지 않습니다.");
	}else{
		$("#passMessage").html("");
		$("#mem_pw").val(memPassword1);
	}
		
	}
	
	function goUpdate(){
		var mem_birth=$("#mem_birth").val();
		if(mem_birth==null || mem_birth==""|| mem_birth==0){
			alert("생년월일을 입력하세요")
			return false;
		}
		document.frm.submit();
	}
</script>

</head>
<body>
  <!-- customer section start -->

    	<jsp:include page="../common/header1.jsp"></jsp:include>
    <div class="member">

        <h1>Clovice</h1>


		<form name="frm" action="${contextPath}/memUpdate.do" method="post">
				<input id="mem_id" type="hidden" name="mem_id" value="${mvo.mem_id}"/>
				<input id="mem_pw" type="hidden" name="mem_pw" value=""/>
				
						<div class="field">
							<b>아이디</b>
							<b>${mvo.mem_id}</b>
						</div>
						<div class="field">
							<b>비밀번호</b>
							<input class="userpw" id="memPassword1" name="memPassword1" onkeyup="passwordCheck()" type="password" class="form-control" placeholder="비밀번호를 입력하세요" maxlength="20" />
						</div>
						<tr>
							<td style="width: 110px; vertical-align: middle;">비밀번호 확인</td>
							<td colspan="2"><input id="memPassword2" name="memPassword2" onkeyup="passwordCheck()" type="password" class="form-control" placeholder="비밀번호를 확인하세요" maxlength="20" /></td>
						</tr>
						<tr>
							<td style="width: 110px; vertical-align: middle;">사용자 이름</td>
							<td colspan="2"><input id="mem_name" name="mem_name" type="text" class="form-control" placeholder="이름을 입력하세요" maxlength="20" value="${mvo.mem_name}"/></td>
						</tr>
						<tr>
							<td style="width: 110px; vertical-align: middle;">생년월일</td>
							<td colspan="2"><input id="mem_birth" name="mem_birth" type="text" class="form-control" placeholder="생년월일을 입력하세요" maxlength="8" value="${mvo.mem_birth}"/></td>
						</tr>
						<tr>
							<td style="width: 110px; vertical-align: middle;">성별</td>
							<td colspan="2">
								<div class="form-group" style="text-align: center; margin: 0 auto;">
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-primary <c:if test="${mvo.mem_gender eq '남자'}">active</c:if>"> 
										<input id="mem_gender" name="mem_gender" type="radio" autocomplete="off" value="남자"
										<c:if test="${mvo.mem_gender eq '남자'}">checked</c:if>/>남자
										</label> 
										<label class="btn btn-primary <c:if test="${mvo.mem_gender eq '여자'}">active</c:if>"> 
										<input type="radio" name="mem_gender" autocomplete="off" value="여자" 
										<c:if test="${mvo.mem_gender eq '여자'}">checked</c:if>/>여자
										</label>
									</div>
						</tr>
						<tr>
							<td style="width: 110px; vertical-align: middle;">이메일</td>
							<td colspan="2">
							<input id="mem_email" name="mem_email" type="text" class="form-control" placeholder="이메일을 입력하세요" maxlength="50" value="${mvo.mem_email}"/>
							</td>
						</tr>
						<tr>
							<td colspan="3" style="text-align: left;">
								<span id="passMessage" style="color:red"></span><input type="button" class="btn btn-primary btn-sm pull-right" value="수정" onclick="goUpdate()"/>
							</td>
						</tr>
					</table>
				</form>
        <br>

        <!-- 6. 가입하기 버튼 -->
        
        <span id="passMessage" style="color:red"></span>
        <input type="button"  class="btn btn-primary btn-sm pull-right" value="가입하기" onclick="goInsert()"/>
		
		<!-- Modal -->
			<div id="myModal" class="modal fade" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div id="checkType" class="modal-content panel-info">
						<div class="modal-header panel-heading">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">메세지 확인</h4>
						</div>
						<div class="modal-body">
							<p id="checkMessage"></p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>
			<%-- 실패 메시지 출력 --%>
						<!-- Modal -->
			<div id="myMessage" class="modal fade" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div id="messageType" class="modal-content panel-info">
						<div class="modal-header panel-heading">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">${msgType}</h4>
						</div>
						<div class="modal-body">
							<p>${msg}</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					</div>

				</div>
			</div>
    </div>
        <!-- 7. 푸터 -->
    <div id="start_footer"></div>
        <!-- footer section start -->
      	<jsp:include page="../common/footer.jsp"></jsp:include>
   		<!-- footer section end -->
</body>
</html>
