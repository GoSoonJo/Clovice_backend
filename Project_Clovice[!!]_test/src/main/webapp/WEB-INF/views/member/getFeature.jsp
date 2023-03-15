<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Beautiflie</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- bootstrap css -->
   <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/bootstrap.min.css">
   <!-- style css -->
   <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/login.css">
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
   <script src="${contextPath}/resources/js/login.js"></script>
   
<script type="text/javascript">
$(document).ready(function(){
	if(${!empty msgType}){
		$("#messageType").attr("class","modal-content panel-warning");
		$("#myMessage").modal("show");
	}
});

function count_check_color(obj){
	var chkBox = document.getElementsByName("chk_color"); // name값 chk를 불러옴
	var color_cnt = 0;	// chkCnt 변수 초기값 0으로 설정
	for(var i=0;i<chkBox.length;i++){
		if(chkBox[i].checked){
			color_cnt++; //chkBox가 체크될 경우 1씩 증가
		}
	}
	if(color_cnt>3){
		alert("3개까지 체크할 수 있습니다.")
		obj.checked=false;
		return false;
	}
}

function count_check_style(obj){
	var chkBox = document.getElementsByName("chk_style"); // name값 chk를 불러옴
	var style_cnt = 0;	// chkCnt 변수 초기값 0으로 설정
	for(var i=0;i<chkBox.length;i++){
		if(chkBox[i].checked){
			style_cnt++; //chkBox가 체크될 경우 1씩 증가
		}
	}
	if(style_cnt>3){
		alert("3개까지 체크할 수 있습니다.")
		obj.checked=false;
		return false;
	}
}

function count_check_tag(obj){
	var chkBox = document.getElementsByName("chk_tag"); // name값 chk를 불러옴
	var cnt_tag = 0;	// chkCnt 변수 초기값 0으로 설정
	for(var i=0;i<chkBox.length;i++){
		if(chkBox[i].checked){
			cnt_tag++; //chkBox가 체크될 경우 1씩 증가
		}
	}
	if(cnt_tag>3){
		alert("3개까지 체크할 수 있습니다.")
		obj.checked=false;
		return false;
	}
}

function getCheckboxValue()  {
	  // 선택된 목록 가져오기
	  const color_chk = 'input[name="chk_color"]:checked';
	  const selected_color = 
	      document.querySelectorAll(color_chk);
	  const style_chk = 'input[name="chk_style"]:checked';
	  const selected_style = 
	      document.querySelectorAll(style_chk);
	  const tag_chk = 'input[name="chk_tag"]:checked';
	  const selected_tag = 
	      document.querySelectorAll(tag_chk);
	  
	  // 선택된 목록에서 value 찾기
	  let color_result = '';
	  selected_color.forEach((el) => {
	    color_result += el.value + ' ';
	  });
	  let style_result = '';
	  selected_style.forEach((el) => {
	    style_result += el.value + ' ';
	  });
	  let tag_result = '';
	  selected_tag.forEach((el) => {
	    tag_result += el.value + ' ';
	  });
	  
	  // 출력
	  //document.getElementById('result').innerText
	   // = result;
	  console.log(color_result);
	  console.log(style_result);
	  console.log(tag_result);
	  console.log(typeof(color_result));
	  console.log(typeof(style_result));
	  console.log(typeof(tag_result));
	  
	  if(color_result==''){
		  alert("[선호 컬러]최소 1개 이상 체크하세요.")
		  return false;
	  }
	  if(style_result==''){
		  alert("[선호 스타일]최소 1개 이상 체크하세요.")
		  return false;
	  }
	  if(tag_result==''){
		  alert("[선호 태그]최소 1개 이상 체크하세요.")
		  return false;
	  }
	  document.frm.submit();
	  
	}



</script>

</head>
<body>
	<div class="container">
		<jsp:include page="../common/header1.jsp"></jsp:include>
		<div class="panel panel-default">
			<div class="panel-heading"></div>
			<div class="panel-body">
				<%-- 회원가입 폼 --%>
				<form name="frm" action="${contextPath}/insertFeature.do" method="get">
				<input id="mem_id" type="hidden" name="mem_id" value="${mvo.mem_id}"/>
					<table class="table table-bordered" style="text-align: center; border: 1px solid #dddddd">
						<tr>
							<td style="width: 110px; vertical-align: middle;">선호 컬러</td>
							<td colspan=""><input id="fav_color" name="chk_color" type="checkbox" onClick="count_check_color(this);" value="빨강"/>빨강</td>
							<td colspan=""><input id="fav_color" name="chk_color" type="checkbox" onClick="count_check_color(this);" value="노랑"/>노랑</td>
							<td colspan=""><input id="fav_color" name="chk_color" type="checkbox" onClick="count_check_color(this);" value="초록"/>초록</td>
							<td colspan=""><input id="fav_color" name="chk_color" type="checkbox" onClick="count_check_color(this);" value="파랑"/>파랑</td>
							<td colspan=""><input id="fav_color" name="chk_color" type="checkbox" onClick="count_check_color(this);" value="보라"/>보라</td>
							<td colspan=""><input id="fav_color" name="chk_color" type="checkbox" onClick="count_check_color(this);" value="네이비"/>네이비</td>
							<td colspan=""><input id="fav_color" name="chk_color" type="checkbox" onClick="count_check_color(this);" value="회색"/>회색</td>
							<td colspan=""><input id="fav_color" name="chk_color" type="checkbox" onClick="count_check_color(this);" value="화이트"/>화이트</td>
							<td colspan=""><input id="fav_color" name="chk_color" type="checkbox" onClick="count_check_color(this);" value="블랙"/>블랙</td>
						</tr>
						<tr>
							<td style="width: 110px; vertical-align: middle;">선호 스타일</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="아메리칸캐주얼" />아메리칸캐주얼</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="캐주얼"/>캐주얼</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="시크"/>시크</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="댄디"/>댄디</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="포멀"/>포멀</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="걸리시"/>걸리시</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="골프"/>골프</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="홈웨어"/>홈웨어</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="레트로"/>레트로</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="로맨틱"/>로맨틱</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="스포츠"/>스포츠</td>
							<td colspan=""><input id="fav_style" name="chk_style" type="checkbox" onClick="count_check_style(this);" value="스트릿"/>스트릿</td>
						</tr>
						<tr>
							<td style="width: 110px; vertical-align: middle;">관심있는 태그</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="크롭"/>크롭</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="찢청"/>찢청</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="오프숄더"/>오프숄더</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="부츠컷"/>부츠컷</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="올블랙"/>올블랙</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="여행"/>여행</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="트레이닝/조거 팬츠"/>트레이닝/조거 팬츠</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="슬림핏"/>슬림핏</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="시크"/>시크</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="셔츠/블라우스"/>셔츠/블라우스</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="워싱"/>워싱</td>
							<td colspan=""><input id="fav_tag" name="chk_tag" type="checkbox" onClick="count_check_tag(this);" value="스트릿"/>스트릿</td>
							
						</tr>
						<tr>
							<td colspan="5" style="text-align: left;">
								<input type="button" class="btn btn-primary btn-sm pull-right" value="등록" onclick="getCheckboxValue()"/>
							</td>
						</tr>
					</table>
				</form>

			</div>
			<%-- 다이얼로그창(모달) --%>
			<!-- Modal -->
			<%-- 실패 메시지 출력 --%>
						<!-- Modal -->
			<div class="panel-footer"></div>
		</div>
	</div>

</body>
</html>
