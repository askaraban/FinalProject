<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html> 
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head> 

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FAQ - add</title>


</head>

<body id="body" class="up-scroll">

<!-- ====================================
———	이벤트 등록
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
	<form action="<c:url value="/faq/add"/>" method="post">
		<h2 class="fw-normal mb-4 mb-md-5">FAQ 등록</h2>
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
              <div class="col-sm-2 mb-1 fw-bold">카테고리</div>
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
						<input type="text" class="form-control" name="faqTitle" value="${faq.faqTitle}">
					</div>

					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">내용</div>
						<textarea class="form-control" rows="5" name="faqContent">${faq.faqContent}</textarea>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="float: right">
			<a href ="<c:url value="/faq/list"/>" type="button" class="btn btn-primary ms-1">목록</a>
			<a href ="<c:url value="/faq/list"/>" type="button" class="btn btn-primary ms-1">취소</a>
			<button type="submit" class="btn btn-primary ms-1">등록</button>
		</div>
		</form>
	</div>
</section>

<!-- JAVASCRIPTS -->

</body>
</html>