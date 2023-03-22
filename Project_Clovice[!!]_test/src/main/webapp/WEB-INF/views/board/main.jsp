<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
	   <!-- basic -->
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- mobile metas -->
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="viewport" content="initial-scale=1, maximum-scale=1">
   <!-- site metas -->
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
	
	
	
<script type="text/javascript">
	$(document).ready(function() {
		loadList();
	});
	function loadList() {
		// 서버와 통신 : 게시판 리스트 가져오기
		$.ajax({
			url : "board/all",
			type : "get",
			dataType : "json",
			success : makeView, // 콜백함수
			error : function() {alert("error");}
		});
	}
	
	function makeView(data) { // data=[{ },{ },{ },,,]
	console.log(data);
		var listHtml = "<table class='table table-bordered'>";
		listHtml += "<tr>";
		listHtml += "<td>번호</td>";
		listHtml += "<td>제목</td>";
		listHtml += "<td>작성자</td>";
		listHtml += "<td>작성일</td>";
		listHtml += "<td>조회수</td>";
		listHtml += "</tr>";
		$.each(data, function(index,obj){
			listHtml += "<tr>";
			listHtml += "<td>" + obj.idx + "</td>";
			listHtml += "<td id='t"+obj.idx+"'><a href='javascript:goContent("+obj.idx+")'>" + obj.title + "</a></td>";
			listHtml += "<td>" + obj.writer + "</td>";
			listHtml += "<td>" + obj.indate.split(' ')[0] + "</td>";
			listHtml += "<td id='cnt"+obj.idx+"'>" + obj.count + "</td>";
			listHtml += "</tr>";
			
			listHtml += "<tr id='c"+obj.idx+"' style='display:none'>";
			listHtml += "<td>내용</td>";
			listHtml += "<td colspan='4'>";
			listHtml += "<textarea id='ta"+obj.idx+"' readonly rows='7' class='form-control'></textarea>";
			listHtml += "</br>";
			listHtml += "<span id='ub"+obj.idx+"'><button class='btn btn-success btn-sm' onclick='goUpdateForm("+obj.idx+")'>수정화면</button></span>&nbsp;";
			listHtml += "<button class='btn btn-warning btn-sm' onclick='goDelete("+obj.idx+")'>삭제</button>";
			
			listHtml += "</td>";
			listHtml += "</tr>";
 			
			
			
		});
		listHtml += "<tr>";
		listHtml += "<td colspan='5'>";
		listHtml += "<button class='btn btn-primary btn-sm' onclick='goForm()'>글쓰기</button>";
		listHtml += "</td>";
		listHtml += "</tr>";
		listHtml += "</table>";
		$("#view").html(listHtml);
		
		$("#view").css("display","block"); // 감추고
		$("#wform").css("display","none"); //보이게
		
	}
	function goForm(){
		$("#view").css("display","none"); // 감추고
		$("#wform").css("display","block"); //보이게
	}
	function goList(){
		$("#view").css("display","block"); 
		$("#wform").css("display","none");
	}
	function goInsert(){
		//var title=$("#title").val();
		//var content=$("#content").val();
		//var writer=$("#writer").val();
		
		var fData=$("#frm").serialize();
		//alert(fData);
		$.ajax({ 
			url : "board/new",
			type : "post",
			data : fData,
			success : loadList,
			error : function() {alert("error");}
		});
		// 폼 초기화
		//$("#title").val("");
		//$("#content").val("");
		//$("#writer").val("");
		$("#fclear").trigger("click");
	}
	function goContent(idx){
		if($("#c"+idx).css("display") == "none"){
			
			$.ajax({
				url : "board/"+idx,
				type : "get",
				data : {"idx":idx},
				dataType : "json",
				success : function(data){ // data={"content": ~~~}
					$("#ta"+idx).val(data.content);
				},
				error : function(){alert("error");}
			})
			
			$("#c"+idx).css("display","table-row"); // 보이게
			
			$.ajax({
				url : "board/count/"+idx,
				type : "put",
				data : {"idx":idx},
				dataType : "json",
				success : function(data){
					$("#cnt"+idx).text(data.count);
				},
				error : function(){alert("error");}
			});
			
			$("#ta"+idx).attr("readonly",true);
		}else{
			$("#c"+idx).css("display","none"); // 감추게
			
		}
	}
	function goDelete(idx){
		$.ajax({ 
			url : "board/"+idx,
			type : "delete",
			data : {"idx":idx},
			success : loadList,
			error : function(){alert("error");}
		});
	}
	
	function goUpdateForm(idx){
		$("#ta"+idx).attr("readonly",false);
		var title=$("#t"+idx).text();
		var newInput="<input id='nt"+idx+"' type='text' class='form-control' value='"+title+"'/>"
		
		$("#t"+idx).html(newInput);
		
		var newButton = "<button class='btn btn-primary btn-sm' onclick='goUpdate("+idx+")'>수정하기</button>"
		$("#ub"+idx).html(newButton);
	}
	
	function goUpdate(idx){
		var title = $("#nt"+idx).val();
		var content = $("#ta"+idx).val();
		$.ajax({
			url : "board/update",
			type : "put",
			contentType:'application/json;charset=utf-8',
			data : JSON.stringify({"idx":idx,"title":title,"content":content}),
			success : loadList,
			error : function(){alert("error");}
		});
	}
	
</script>
</head>
<body>
	<div class="container">
<jsp:include page="../common/header.jsp"/>
		<h2>게시판</h2>
		<div class="panel panel-default">
			<div class="panel-heading"></div>
			<div class="panel-body" id="view">Panel Content</div>
			<div class="panel-body" id="wform" style="display:none">
			
				<form id="frm">
					<table class="table">
						<tr>
							<td>제목</td>
							<td><input type="text" id="title" name="title" class="form-control"
						</tr>
						<tr>
							<td>내용</td>
							<td><textarea rows="7" class="form-control" id="content" name="content"></textarea></td>
						</tr>
						<tr>
							<td>작성자</td>
							<td><input type="text" id="writer" name="writer" class="form-control"
						</tr>
						<tr>
							<td colspan="2" align="center">

								<button type="button" class="btn btn-success btn-sm" onclick="goInsert()">등록</button>
								<button type="reset" class="btn btn-warning btn-sm" id="fclear">취소</button>
								<button type="button" class="btn btn-warning btn-sm" onclick="goList()">리스트</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="panel-footer"></div>
		</div>
	</div>

</body>
</html>
