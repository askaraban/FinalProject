<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">

<section class="bg-light py-8">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb" style="--bs-breadcrumb-divider: '>';">
      <h2 class="fw-normal mb-4 mb-md-0" style="font-size: 40px;">항공권 예매</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="">Home</a></li>
        <li class="breadcrumb-item">일정</li>
      </ul>
    </nav>
  </div>
</section>

<!-- ====================================
———	BANNER SECTION (TRAVEL)
===================================== -->
<section class="py-7 py-md-10" style="height: 624px;">
  <div class="container">
    <div class="row">
      <div class="col-12">

        <!-- 항공권예매 검색박스 -->
        <div class="search-box-2">
          <form class="row g-2 justify-content-center" id="resScheduleSellection" action="<c:url value="/reservation/seatgrade" />" method="POST">

            <div class="form-group col-md-3 col-lg-2 mb-0">
              <div class="select-default">
         		 <select class="select-location" name="resDeparture">
		            <option>출발지</option>
		            <option value="ICN">서울/인천(ICN)</option>
		            <option value="LAX">로스앤젤레스(LAX)</option>
		            <option value="BKK">방콕(BKK)</option>
		            <option value="NRT">도쿄/나리타(NRT)</option>
		          </select>
        		</div>
            </div>
            
             <div class="form-group col-md-3 col-lg-2 mb-0">
              <div class="select-default">
		          <select class="select-location" name="resDestination">
		            <option>도착지</option>
		            <option value="ICN">서울/인천(ICN)</option>
		            <option value="LAX">로스앤젤레스(LAX)</option>
		            <option value="BKK">방콕(BKK)</option>
		            <option value="NRT">도쿄/나리타(NRT)</option>
		          </select>
		        </div>
            </div>

			<div class="form-group col-md-3 col-lg-4 mb-0">
				<input type="text" class="form-control double-date" name="resDuration">
			</div>
			
            <div class="form-group col-md-3 col-lg-2 mb-0">
				<input type="text" class="form-control" name="resNumofPassengers" id="resNumofPassengers" value="성인 : 1" data-bs-toggle="modal" data-bs-target="#exampleModal">
            </div>
            
            <div class="form-group col-md-3 col-lg-2 mb-0">
              <button type="submit" class="btn btn-primary w-100">항공권 검색
                <i class="fas fa-search" aria-hidden="true"></i>
              </button>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- 모달 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">탑승인원을 선택해주세요.</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	<div class="form-group mb-6">
      		<div class="d-flex justify-content-between align-items-center flex-wrap mb-5">
      			<span class="font-weight-bold">성인</span>
      				<div class="count-input">
      					<a class="incr-btn" data-action="decrease" href="#">–</a>
      						<input class="quantity" type="text" id="adultCnt" value="1">
                		<a class="incr-btn" data-action="increase" href="#">+</a>
              		</div>
            </div>
        	<div class="d-flex justify-content-between align-items-center flex-wrap mb-5">
	            <span class="font-weight-bold">소아</span>
	              	<div class="count-input">
	                	<a class="incr-btn" data-action="decrease" href="#">–</a>
	                		<input class="quantity" type="text" id="childCnt" value="0">
	                	<a class="incr-btn" data-action="increase" href="#">+</a>
	              	</div>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-primary" id="applyPpl">적용</button>
      </div>
    </div>
  </div>
</div>

<!-- 모달 실행이 안되서 jQuery 스크립트 추가 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
// 모달이 열릴 때마다 실행
$('#exampleModal').on('show.bs.modal', function (e) {
    // 모달 외부 입력값을 가져와서 모달 내 입력값으로 설정
    var resNumofPassengersValue = $('#resNumofPassengers').val();
    $('#adultCnt').val(resNumofPassengersValue);
    $('#childCnt').val(resNumofPassengersValue);
});

// 적용 버튼 클릭 시 실행
$('#applyPpl').click(function() {
    // 모달 내 입력값을 가져와서 모달 외부 입력값으로 설정
    var adultCntValue = $('#adultCnt').val();
    var childCntValue = $('#childCnt').val();
    $('#resNumofPassengers').val('성인 : ' + adultCntValue + ', 소아 : ' + childCntValue);
    
    $('#exampleModal').modal('hide');
});
</script>
</body>
