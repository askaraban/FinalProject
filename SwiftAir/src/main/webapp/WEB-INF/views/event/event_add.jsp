<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">

<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">이벤트 등록</h2>
    </nav>
  </div>
</section>

<!-- ====================================
———	이벤트 등록
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<form action="<c:url value="/event/add"/>" id="eventImgUpload" method="post" enctype="multipart/form-data">
		<div class="col-12">
		
        <!-- 이벤트 정보 -->
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>이벤트</h5>
				</div>
				<div class="col-sm-8">
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">제목</div>
						<input type="text" class="form-control" name="eventTitle" value="${event.eventTitle}">
					</div>
					
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">운영기간</div>
						<div class="form-group col-md-3 col-lg-12 mb-0">
							<input type="text" class="form-control" name="eventStart" value="${event.eventStart}">
							<input type="text" class="form-control" name="eventEnd" value="${event.eventEnd}">
						</div>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">행사내용</div>
						<textarea class="form-control" rows="5" name="eventContent">${event.eventContent}</textarea>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">유의사항</div>
						<textarea class="form-control" rows="5" name="eventNotice">${event.eventNotice}</textarea>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">대표 이미지</div>
						<input type="file" class="form-control" name="multipartFile" id="eventImg1">
					</div>
					<div class="mb-2">
						<div class="col-sm-2 mb-1 fw-bold">상세 이미지</div>
						<input type="file" class="form-control" name="multipartFile2" id="eventImg2">
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="float: right">
			<button type="button" class="btn btn-primary ms-1" onclick="location.href='<c:url value="/event/list"/>';">목록</button>
			<button type="button" class="btn btn-primary ms-1" onclick="location.href='<c:url value="/event/list"/>';">취소</button>
			<button type="submit" class="btn btn-primary ms-1">등록</button>
		</div>
		</form>
	</div>
</section>

<script>
  
	
</script>

</body>
