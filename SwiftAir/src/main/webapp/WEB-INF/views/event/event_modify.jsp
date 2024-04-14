<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">

<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">이벤트 수정</h2>
    </nav>
  </div>
</section>

<!-- ====================================
———	이벤트 수정
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<form action="<c:url value="/event/modify"/>" method="post" enctype="multipart/form-data">
			<input type="hidden" name="eventId" value="${eventmodify.eventId}"/>
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
						<input type="text" name="eventTitle" class="form-control" value="${eventmodify.eventTitle}" required>
					</div>
					<div class="mb-4">
					    <input type="hidden" id="eventSchedule">
					    <div class="col-sm-12">
					        <div class="col-sm-2 mb-1 fw-bold">시작일</div>
					        <div class="col-sm-4 mb-1">
					            <input type="text" class="form-control" name="eventStart" id="eventStart" placeholder="예): 2024-04-14" value="${eventmodify.eventStart}" style="margin-bottom: 1rem;" required>
					        </div>
					        <div class="col-sm-2 mb-1 fw-bold">종료일</div>
					        <div class="col-sm-4 mb-1">
					            <input type="text" class="form-control" name="eventEnd" id="eventEnd" placeholder="예): 2024-04-14" value="${eventmodify.eventEnd}" required>
					        </div>
					    </div>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">행사내용</div>
						<textarea class="form-control" rows="5" name="eventContent" required>${eventmodify.eventContent}</textarea>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">유의사항</div>
						<textarea class="form-control" rows="5" name="eventNotice" required>${eventmodify.eventNotice}</textarea>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">대표 이미지</div>
						<input type="file" class="form-control" name="multipartFile" id="eventImg1">${eventmodify.eventImg1}
					</div>
					<div class="mb-2">
						<div class="col-sm-2 mb-1 fw-bold">상세 이미지</div>
						<input type="file" class="form-control" name="multipartFile2" id="eventImg2">${eventmodify.eventImg2}
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="float: right">
			<a href ="<c:url value="/event/list"/>" type="button" class="btn btn-primary ms-1">목록</a>
			<a href ="<c:url value="/event/list"/>" type="button" class="btn btn-primary ms-1">취소</a>
			<button type="submit" class="btn btn-primary ms-1" id="submitBtn">수정</button>
		</div>
		</form>
	</div>
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$('#submitBtn').click(function() {
	var eventSchedule = $('#eventSchedule').val();
	var values = eventSchedule.split(" - ");
	
	var first = values[0].split('/');
	var last = values[1].split('/');
	
	var oStart = first[2] + '/' + first[0] + '/' + first[1];
	var oEnd = last[2] + '/' + last[0] + '/' + last[1];
	
	var eventStart = oStart;
	var eventEnd = oEnd;
	
	$('#eventStart').val(eventStart);
	$('#eventEnd').val(eventEnd);
})
</script>

</body>
