<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">
<form id="addPassengerInfo" action="<c:url value="/reservation/seat" />" method="POST">

<!-- ====================================
———	HEADER
===================================== -->
<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: none;">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">항공권 예매</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="#">Home</a></li>
        <li class="breadcrumb-item">일정</li><!-- 수정중 -->
        <li class="breadcrumb-item">좌석</li>
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
		            		<input type="text" class="form-control" name="resMemLast" value="${loginMember.memberLastName}" placeholder="여권에 표시된 언어로 성을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">영문 이름</div>
		            		<input type="text" class="form-control" name="resMemFirst" value="${loginMember.memberFirstName}" placeholder="여권에 표시된 언어로 이름을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">이메일 주소</div>
		            		<input type="text" class="form-control" name="resMemEmail" value="${loginMember.memberEmail}" placeholder="이메일을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">휴대폰 번호</div>
		            		<input type="text" class="form-control" name="resMemPhone" value="${loginMember.memberPhone}" placeholder="휴대폰 번호를 입력해주세요." required>
		            	</div>
		            </div>
				</div>
			</div>
 		</div>

        <!-- 탑승자 정보입력 -->
        <!-- 여러명일 경우 탑승자 * n (성인, 소인 구분 x) -->
        <input type="hidden" id="passengerCount" value="${resInfo.resPassengerCnt}">
        <input type="hidden" name="passengersList" id="passengersList">
        <c:forEach var="i" begin="1" end="${resInfo.resPassengerCnt}">
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>탑승자 - ${i} 정보입력</h5>
					<p>여권 상 표기된 이름과 동일하게 입력해주세요.<br>예약 완료 후 이름 변경 시 항공권 재발행 수수료가 <br>부과될 수 있습니다.</p>
				</div>
				<div class="col-sm-8">
		            <div class="form-group col-sm-12">
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">영문 성</div>
		            		<input type="text" class="form-control" id="resPassengerLastName${i}" placeholder="여권에 표시된 언어로 성을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">영문 이름</div>
		            		<input type="text" class="form-control" id="resPassengerFirstName${i}" placeholder="여권에 표시된 언어로 이름을 입력해주세요." required>
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">생년월일</div>
		            		<input type="text" class="form-control" id="resPassengerBirth${i}" placeholder="예): 20180823" required>
		            	</div>
		            </div>
				</div>
			</div>
 		</div>
 		</c:forEach>
 		 
      </div>
    </div>
</section>

<!-- 일단 푸터 같은것 -->
<nav class="navbar-expand-sm rounded shadow bg-light fixed-bottom" style="height: 54px;">
	<div class="row">
		<div class="col-sm-6 col-lg-6"></div>
		<div class="col-sm-2 col-lg-2 align-self-center text-center">
			<h5>총 결제금액(세금포함) </h5>
		</div>
		<div class="col-sm-2 col-lg-2 align-self-center">
			<h5>2,345,678 원</h5>
		</div>
		<div class="col-sm-2 col-lg-2">
			<button type="submit" class="btn btn-primary w-75" id="toSeat">다음</button>
		</div>
	</div>
</nav>
</form>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
//탑승자 n의 List 생성
$('#toSeat').click(function() {
	var passengerList = [];
	
	var pasCount = $('#passengerCount').val();
	for (var i = 1; i <= pasCount; i++) {
		var lastName = $('#resPassengerLastName' + i).val();
           var firstName = $('#resPassengerFirstName' + i).val();
           var birth = $('#resPassengerBirth' + i).val();
		
		var arr = {
			lastName: lastName,
			firstName: firstName,
			birth: birth
		};
		
		passengerList.push(arr);
	};
	$('#passengersList').val(JSON.stringify(passengerList));
});
</script>
</body>