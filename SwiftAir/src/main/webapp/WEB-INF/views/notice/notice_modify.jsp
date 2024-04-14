<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NOTICE - modify</title>
<!-- PLUGINS CSS STYLE -->

</head>

<body id="body" class="up-scroll">

<!-- ====================================
———	이벤트 등록
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
	<form action="<c:url value="/notice/modify"/>" method="post">
		<input type="hidden" name="noticeId" value="${noticemodify.noticeId}"/>
		<h2 class="fw-normal mb-4 mb-md-5">NOTICE 수정</h2>
		<div class="col-12">

        <!-- 이벤트 정보 --> 
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>NOTICE</h5>
				</div>
				<div class="col-sm-8">
					
          
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">제목</div>
						<input name="noticeTitle" type="text" class="form-control" required value="${noticemodify.noticeTitle }">
					</div>

					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">내용</div>
						<textarea name="noticeContent" class="form-control" rows="5" required >${noticemodify.noticeContent}</textarea>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="float: right">
			<a href ="<c:url value="/notice/list"/>" type="button" class="btn btn-primary ms-1">목록</a>
			<a href ="<c:url value="/notice/list"/>" type="button" class="btn btn-primary ms-1">취소</a>
			<button type="submit" class="btn btn-primary ms-1">수정</button>
		</div>
		</form>
	</div>
</section>

<!-- JAVASCRIPTS -->
<script src='../assets/plugins/jquery/jquery-3.4.1.min.js'></script>
<script src='../assets/plugins/bootstrap/js/bootstrap.bundle.js'></script>
<script src='../assets/plugins/menuzord/js/menuzord.js'></script>

<script src='../assets/plugins/selectric/jquery.selectric.min.js'></script>
<script src='../assets/plugins/dzsparallaxer/dzsparallaxer.js'></script>

<script src='../assets/plugins/smoothscroll/SmoothScroll.js'></script>

<script src="../assets/js/moment.min.js"></script>
<script src="../assets/js/daterangepicker.js"></script>
<script>
	$(function() {
      $('input[name="daterange"]').daterangepicker({
        opens: 'left'
      }, function(start, end, label) {
        console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
      });
    });
</script>

<script src='../assets/js/listty.js'></script>
</body>
</html>