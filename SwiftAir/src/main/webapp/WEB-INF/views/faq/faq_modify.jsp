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
<title>FAQ - modify</title>
<!-- PLUGINS CSS STYLE -->
<link href='../assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
<link href='../assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
<link href='../assets/plugins/listtyicons/style.css' rel='stylesheet'>
<link href='../assets/plugins/menuzord/css/menuzord.css' rel='stylesheet'>

<link href='../assets/plugins/selectric/selectric.css' rel='stylesheet'>
<link href='../assets/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>
 
<!-- GOOGLE FONT --><!-- font-family: 'Mulish', sans-serif; --><!-- font-family: 'Poppins', sans-serif; -->
<link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;300;400;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- CUSTOM CSS -->
<link href="../assets/css/style.css" rel="stylesheet" id="option_style">

<!-- daterangepicker CSS -->
<link rel="stylesheet" href="../assets/css/daterangepicker.css">

<!-- <link rel="stylesheet" href="assets/css/default.css" id="option_color"> -->

<!-- FAVICON -->
<link href="../assets/img/favicon.png" rel="shortcut icon">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

</head>

<body id="body" class="up-scroll">

<!-- ====================================
———	이벤트 등록
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
	<form action="<c:url value="/faq/modify"/>" method="post">
	<input type="hidden" name="faqId" value="${faqmodify.faqId}"/>
		<h2 class="fw-normal mb-4 mb-md-5">FAQ 수정</h2>
		<div class="col-12">

        <!-- 이벤트 정보 -->
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>FAQ</h5>
				</div>
				<div class="col-sm-8">
					<div class="row">
            <!-- Subject -->
            <div class="form-group col-md-6 mb-6">
              <div class="col-sm-2 mb-1 fw-bold" style="width: 500px">카테고리 (재 선택해주세요.)</div>
              <div class="select-bg-transparent select-border w-100">
                <select class="select-location" name="faqCate">
                  <option value="1">예약</option>
                  <option value="2">결제</option>
                  <option value="3">변경취소</option>
                  <option value="4">공항관련</option>
                </select>
              </div>
            </div>
          </div>
          
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">제목</div>
						<input name="faqTitle" type="text" class="form-control" value="${faqmodify.faqTitle }">
					</div>

					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">내용</div>
						<textarea name="faqContent" class="form-control" rows="5" required>${faqmodify.faqContent}</textarea>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="float: right">
			<a href ="<c:url value="/faq/list"/>" type="button" class="btn btn-primary ms-1">목록</a>
			<a href ="<c:url value="/faq/list"/>" type="button" class="btn btn-primary ms-1">취소</a>
			<button type="submit" class="btn btn-primary ms-1">수정</button>
		</div>
		</form>
	</div>
</section>

<!-- JAVASCRIPTS -->


</body>
</html>