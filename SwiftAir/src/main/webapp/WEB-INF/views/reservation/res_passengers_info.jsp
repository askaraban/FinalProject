<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">

<c:set var="passengerInfo" value="${resInfo.resNumofPassengers}" />

<c:set var="adultIndex" value="${passengerInfo.indexOf('성인')}" />
<c:set var="adultCount" value="${passengerInfo.substring(adultIndex + 4, passengerInfo.indexOf(',', adultIndex))}" />

<c:set var="childIndex" value="${passengerInfo.indexOf('소아')}" />
<c:set var="childCount" value="${passengerInfo.substring(childIndex + 4)}" />




<!-- ====================================
———	HEADER
===================================== -->
<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: none;">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">항공권 예매</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
        <li class="breadcrumb-item">ㅇ</li><!-- 수정중 -->
        <li class="breadcrumb-item">ㅇ</li>
        <li class="breadcrumb-item">탑승객 정보</li>
      </ul>
    </nav>
  </div>
</section>


<!-- ====================================
———	항공권 좌석 등급 선택
===================================== -->
<section class="py-7 py-md-10">
  <div class="container">
      <div class="col-12">

        <!-- 예매자 정보 -->
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>예매자 정보</h5>					
				</div>
				<div class="col-sm-8">
		            <div class="form-group col-sm-12">
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">영문 성</div>
		            		<input type="text" class="form-control" placeholder="여권에 표시된 언어로 성을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">영문 이름</div>
		            		<input type="text" class="form-control" placeholder="여권에 표시된 언어로 이름을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">이메일 주소</div>
		            		<input type="text" class="form-control" placeholder="이메일을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">휴대폰 번호</div>
		            		<input type="text" class="form-control" placeholder="휴대폰 번호를 입력해주세요." required>
		            	</div>
		            </div>
				</div>
			</div>
 		</div>

        <!-- 탑승자 정보입력 -->
        <!-- 여러명일 경우 탑승자 * n (성인, 소인 구분 x) -->
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>탑승자 정보입력</h5>
					<h5>성인 1</h5>
					<h5>Adult Count: ${adultCount}</h5>
					<h5>Child Count: ${childCount}</h5>
					<p>여권 상 표기된 이름과 동일하게 입력해주세요.</p>
					<p>예약 완료 후 이름 변경 시 항공권 재발행 수수료가 부과될 수 있습니다.</p>
				</div>
				<div class="col-sm-8">
		            <div class="form-group col-sm-12">
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">영문 성</div>
		            		<input type="text" class="form-control" placeholder="여권에 표시된 언어로 성을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">영문 이름</div>
		            		<input type="text" class="form-control" placeholder="여권에 표시된 언어로 이름을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">생년월일</div>
		            		<input type="text" class="form-control" placeholder="예): 20180823" required>
		            	</div>
		            </div>
				</div>
			</div>
 		</div>

      </div>
    </div>
</section>

<!-- 일단 푸터 같은것 -->
<nav class="navbar-expand-sm rounded shadow bg-light fixed-bottom">
	<div class="row">
		<div class="col-sm-6 col-lg-6"></div>
		<div class="col-sm-2 col-lg-2 align-self-center text-center">
			<h5>총 결제금액(세금포함) </h5>
		</div>
		<div class="col-sm-2 col-lg-2 align-self-center">
			<h5>2,345,678 원</h5>
		</div>
		<div class="col-sm-1 col-lg-1">
			<button type="submit" class="btn btn-outline-primary w-100">이전</button>
		</div>
		<div class="col-sm-1 col-lg-1">
			<button type="submit" class="btn btn-primary w-100">다음</button>
		</div>
	</div>
</nav>

</body>