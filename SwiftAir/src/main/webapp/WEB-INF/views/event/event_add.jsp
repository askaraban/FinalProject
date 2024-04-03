<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">
<!-- ====================================
———	이벤트 등록
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<h2 class="fw-normal mb-4 mb-md-5">이벤트 등록</h2>
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
						<input type="text" class="form-control" required>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">운영기간</div>
						<div class="form-group col-md-3 col-lg-12 mb-0">
							<input type="text" class="form-control" name="daterange">
						</div>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">행사내용</div>
						<textarea class="form-control" rows="5" required></textarea>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">유의사항</div>
						<textarea class="form-control" rows="5" required></textarea>
					</div>
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">대표 이미지</div>
						<input type="file" class="form-control" required>
					</div>
					<div class="mb-2">
						<div class="col-sm-2 mb-1 fw-bold">상세 이미지</div>
						<input type="file" class="form-control" required>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="float: right">
			<button type="submit" class="btn btn-primary ms-1">목록</button>
			<button type="submit" class="btn btn-primary ms-1">취소</button>
			<button type="submit" class="btn btn-primary ms-1">등록</button>
		</div>
	</div>
</section>

</body>
