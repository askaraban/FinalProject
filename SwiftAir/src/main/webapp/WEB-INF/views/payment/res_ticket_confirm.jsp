<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>  
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
<style type="text/css">
.selected {
	background-color: #007bff; /* 선택된 배경색 */
    border-color: #007bff; /* 테두리 색상 */
    box-shadow: 0 0 10px #007bff; /* 형광 느낌 주는 효과 */
    color: #fff; /* 텍스트 색상 */
}

</style>
</head>
<body id="body" class="up-scroll">
<!-- ====================================
———	HEADER
===================================== -->
<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">항공권 예매</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="../index.html">Home</a></li>
        <li class="breadcrumb-item">일정</li>
        <li class="breadcrumb-item">좌석</li>
        <li class="breadcrumb-item">탑승객 정보</li>
        <li class="breadcrumb-item">좌석 선택</li>
        <li class="breadcrumb-item">예매정보 확인 및 결제</li>
      </ul>
    </nav>
  </div>
</section>

<!-- ====================================
———	예매정보 확인
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
	<form action="<c:url value="/faq/add"/>" method="post">
	<h3>탑승객 및 항공편 예매 내역</h3>
		<!-- 픽셀 고정이라 화면 작아지면 짤림 -->
		<c:forEach var="i" begin="0" end="${resInfo.resPassengerCnt - 1}" varStatus="iStatus" >
			<div id="div${i}" style="margin: 30px;">
				<div class="col" style="margin: 10px;">	
					<h5 style="display: inline;">탑승객 ${i+1} -</h5>
					<c:forEach var="j" begin="${iStatus.index*2 }" end="${iStatus.index*2 + 1}">
						<h5 style="display: inline;">${resInfo.addPassengerInfo[j]} </h5>
						<input type="hidden" class="form-control" name="faqTitle" value="${faq.faqTitle}">
					</c:forEach>
				</div>
				<div style="background-image: url('<c:url value="/img/seat/ticket2.png"/>'); height: 285px; width: 1000px;">
					<div class="col-sm-12">
						<div class="row">
							<!-- 첫번째 row -->
							<div class="col-sm-9">
								<!-- 첫번째 줄 -->
								<div class="col ms-5 mt-9">
									<div class="row">
										<div class="col-sm-4">Name</div>
										<div class="col-sm-2">Flight</div>
										<div class="col-sm-2">Outbound</div>
										<div class="col-sm-2">Return</div>
									</div>
								</div>
								<div class="col ms-5">
									<div class="row">
										<div class="col-sm-4">
										<c:forEach var="j" begin="${iStatus.index*2 }" end="${iStatus.index*2 + 1}">
										<h5 style="display: inline;">${resInfo.addPassengerInfo[j]}</h5>
										</c:forEach>
										</div>								
										<div class="col-sm-2"><h5>>${resInfo.routeFlight}</h5></div>
										<div class="col-sm-2"><h6>${resInfo.scheduleDepartureDate.substring(0,10)}</h6></div>
										<div class="col-sm-2"><h6>${resInfo.scheduleArrivalDate.substring(0,10)}</h6></div>
									</div>
								</div>
								<!-- 두번째 줄 -->
								<div class="col ms-5 mt-2">
									<div class="row">
										<div class="col-sm-4">birthday</div>
										<div class="col-sm-2">Round-trip</div>
										<div class="col-sm-2">Round-trip</div>
									</div>
								</div>
								<div class="col ms-5">
									<div class="row">
										<div class="col-sm-4"><h5>${resInfo.addPassengerBirth[i] }</h5></div>
										<div class="col-sm-2"><h5>${resInfo.resDeparture }</h5></div>
										<div class="col-sm-2"><h5>${resInfo.resDestination}</h5></div>
									</div>
								</div>
								<!-- 삼번째 줄 -->
								<div class="col ms-5 mt-2">
									<div class="row">
										<div class="col-sm-4"></div>
										<div class="col-sm-4">Boarding Time</div>
										<div class="col-sm-4">Seat</div>
									</div>
								</div>
								<div class="col ms-5">
									<div class="row">
										<div class="col-sm-4"><h5></h5></div>
										<div class="col-sm-4"><h5>12:55</h5></div>
										<div class="col-sm-4"><h5>${resInfo.selSeat1[i]}, ${resInfo.selSeat2[i]}</h5></div>
									</div>
								</div>
							</div>
							<!-- 2번째 row -->
							<div class="col-sm-3">
								<!-- 첫번째 줄 -->
								<div class="col mt-9">
									<div class="col-sm-11">❗탑승객 정보 및 항공편 정보를<br>&nbsp;&nbsp;&nbsp;&nbsp; 반드시 확인하세요.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</form>
	</div><!-- container -->
</section>

	<div class="container">
		<div class="border rounded" style="width: 1000px; margin: 30px;">
			<div class="row">
				<div class="col-md-2 col-xs-12 border-md-right pe-md-5 pe-lg-6" style="padding: 20px 20px;">
					<h3>결제 내역</h3>					
				</div>
				<div class="col-md-8 col-xs-10 ps-md-5 ps-lg-7" style="margin: 20px 20px;">
		            <div class="col-sm-12">
						<div class="row">
							<div class="col-sm-5"><h6>항공 운임</h6></div>
							<div class="col-sm-7"><h6>${resInfo.routePrice*resInfo.resPassengerCnt}원</h6></div>
							<div class="col-sm-5"><h6>(세부 내용)</h6></div>
							<div class="col-sm-7"><h6>(${resInfo.routePrice}원 * ${resInfo.resPassengerCnt}명)</h6></div>
							<div class="col-sm-5"><h6>공항시설 사용료</h6></div>
							<div class="col-sm-7"><h6>65,000원</h6></div>
							<div class="col-sm-5"><h6>유류 할증료</h6></div>
							<div class="col-sm-7"><h6>88,535원</h6></div>
							<hr>
							<div class="col-sm-5"><h6>총 결제 금액</h6></div>
							<div class="col-sm-7"><h6><fmt:formatNumber value="${resInfo.routePrice*resInfo.resPassengerCnt+65000+88535}" pattern="#,###"/>원</h6></div>
						</div>
		            </div>
				</div>
			</div>
 		</div>
 		<div class="border rounded" style="width: 1000px; margin: 30px;">
					<div class="col-sm-5 p-3">
						<select class="form-select" required="required">
							<option value="" selected disabled hidden>결제수단을 선택해주세요.</option>
							<option value="1">신용/체크카드 결제</option>
							<option value="2">포인트 결제</option>
						</select>
					</div>
					<div class="col-sm-8 p-3">
						<div >
							<div id="card" style="display: none;">
							<div class="row">
								<button type="button" id="html5_inicis" class="btn btn-primary col-sm-4 pay" style="margin: 5px;">일반결재(KG이니시스)</button>
								<button type="button" id="kakaopay" class="btn btn-primary col-sm-4 pay" style="margin: 5px;">간편결제(카카오페이)</button>
							</div>	
							</div>
							<div id="point" style="display: none;">
								<div class="form-group mb-3">
									<div class="form-control border border-end-0 ">보유 포인트 : ${loginMember.memberPoint }p</div>
								</div>
								<div id="message1" style="color: red; height: 20px; margin-bottom: 10px;"></div>
								<div class="input-group mb-3">
									<input type="text" class="form-control border border-end-0 " placeholder="사용하실 포인트 금액을 입력해주세요"/>
									<button type="button" class="btn btn-outline-primary">사용하기</button>
								</div>
								<div id="message2" style="color: red; height: 20px; margin-bottom: 10px;"></div>
							</div>
						</div>
						<div class="form-group mb-6">
							<div class="form-check" style="display: none;">
								<input class="form-check-input" type="checkbox" id="gridCheck">
								<label class="form-check-label" for="gridCheck">
								상기 내역을 확인하였습니다.
								</label>
							</div>
						</div>
					</div>
		</div>
	</div>
	

<!-- 총 결제 금액 + 결제 버튼 -->
<nav class="navbar-expand-sm rounded shadow bg-light fixed-bottom" style="height: 54px;">
	<div class="row">
		<div class="col-sm-6 col-lg-6"></div>
		<div class="col-sm-2 col-lg-2 align-self-center text-center">
			<h5>총 결제금액(세금포함) </h5>
		</div>
		<div class="col-sm-2 col-lg-2 align-self-center">
			<h5><fmt:formatNumber value="${resInfo.routePrice*resInfo.resPassengerCnt+65000+88535}" pattern="#,###"/> 원</h5>
		</div>
		<div class="col-sm-2 col-lg-2">
			<button type="submit" class="btn btn-primary w-75" id="payBtn" disabled>결제하기</button>
		</div>
	</div>
</nav>

<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
var availablePoints = parseInt('${loginMember.memberPoint}');
var totalAmount = 10; // 총 결제금액
 
 $('.form-select').change(function() {
	// 선택된 옵션의 값 확인
	var selectedOption = $(this).val();
	
	$('.form-check').show();
	// 만약 선택된 옵션이 1번인 경우
	if (selectedOption == 1) {
		// 아래 버튼들 보이기
		$('#card').show();
		$('#point').hide();
	} else if (selectedOption == 2) {
		// 아래 버튼들 숨기기
		$('#card').hide();
		$('#point').show();
			if (availablePoints < totalAmount) {
		    	$('#message1').text('보유하신 포인트가 부족합니다.').show(); // 메시지 출력
		    } else {
		    	$('#message1').hide(); // 메시지 숨기기
		    }
	}
});

$('#point button').click(function(){
var enteredAmount = parseInt($('#point input').val());
		if (enteredAmount > availablePoints) {
			$('#message2').text('보유하신 포인트 금액을 초과하였습니다.');
			$('#payBtn').prop('disabled', true);
		} else {
			$('#point input').css('color', '#007bff'); // 파란색으로 글자색 변경
            $(this).text('적용됨').css({ backgroundColor: '#007bff', color: 'white' }); // 버튼 스타일 변경
            $('#message2').hide(); // 메시지 숨기기
			handleCheckboxChange();
		}
		
});
 
function handleCheckboxChange() {
 $('#gridCheck').change(function() {
     // 체크박스가 체크되었는지 여부 확인
     if ($(this).is(':checked')) {
         // 체크되었다면 결제 버튼 활성화
         $('#payBtn').prop('disabled', false);
     } else {
         // 체크되지 않았다면 결제 버튼 비활성화
         $('#payBtn').prop('disabled', true);
     }
 });
}


//카드 결제
$(".pay").click(function() {
	    var pg = $(this).attr("id");
	    $(".pay").removeClass("selected");
	    $(this).addClass("selected");
	    //alert(pg);

	    handleCheckboxChange();

	    // 결제 버튼 클릭 시 실행할 동작
	    $("#payBtn").click(function() {
		var IMP=window.IMP;
		//IMP 객체 초기화 - 가맹점 식별코드
		IMP.init("imp28313821");
		
		//주문번호 - 주문테이블에서 제공된 값 사용
		var merchantUid="merchant_"+new Date().getTime();
		//결제금액 - 주문테이블에서 제공된 값 사용
		var paymentTotal=${resInfo.routePrice*resInfo.resPassengerCnt+65000+88535};
		
		//결제 전 주문번호와 결제금액을 세션에 저장하기 위한 페이지 요청
		// => 결제 후 결제정보와 비교하여 검증하기 위해 세션에 저장 
		$.ajax({
			type: "post",
			url: "<c:url value="/pay/payment/api"/>",
			contentType: "application/json",
			data: JSON.stringify({"merchantUid":merchantUid, "paymentTotal":paymentTotal}),
			dataType: "text",
			success: function(result) {
				if(result=="ok") {
					//결제를 요청하는 메소드 호출
					IMP.request_pay({
						// 결제 대행사 : kakaopay, html5_inicis, nice, jtnet, uplus, danal, payco 등
						pg : pg,
						// 결제 방식 : card(카드), samsung(삼성페이), trans(실시간계좌이체), vbank(가상계좌), phone(휴대폰소액결제)
						pay_method : "card",
						//주문번호
						merchant_uid : merchantUid,
						//결제금액
						amount : paymentTotal,
						//결제창에 보여질 제품명
						name: "스위프트Airline 항공권",
						//결제 사용자의 이메일 주소 
			            buyer_email: "${loginMember.memberEmail}",
			            buyer_name: "${loginMember.memberKorName}",//결제 사용자 이름
			            buyer_tel: "${loginMember.memberPhone}",//결제 사용자 전화번호
			            buyer_postcode: "123-456",//결제 사용자 우편번호
			            buyer_addr: "서울특별시 강남구 테헤란로 124 삼원타워",//결제 사용자 주소
						//m_redirect_url: "http://localhost:8000:auth/payment/pay",//모바일의 리다이렉트 URL 주소
					}, function(response) {//결제 관련 응답 결과를 제공받아 처리하는 함수
						//response : 응답결과를 저장한 Object 객체
						if (response.success) {//결제한 경우
							//결제금액을 검증하기 위한 페이지를 요청
							$.ajax({
								type: "post",
								url: "<c:url value="/pay/complete"/>",
								contentType: "application/json",
								data: JSON.stringify({"impUid": response.imp_uid, "merchantUid": response.merchant_uid
									,"paymentMemberNum": ${loginMember.memberNum}}),
								dataType: "text",
								success: function(result) {
									if(result == "success") {
										//결제 성공 페이지로 이동
										alert("결제 성공");
									} else {
										//결제 실패 페이지로 이동
										alert("결제 취소");
									}
								}, 
								error: function(xhr) {
									alert("에러 = "+xhr.status);
								}
							});
						}
					});
				}
			}, 
			error: function(xhr) {
				alert("에러 = "+xhr.status);
			}
      });
	 });
});




</script>
</body>
