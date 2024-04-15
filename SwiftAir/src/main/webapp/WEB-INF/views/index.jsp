<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
  <body id="body" class="up-scroll">
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	<div class="form-group mb-6">
      		<div class="d-flex justify-content-between align-items-center flex-wrap mb-5">
      			<span class="font-weight-bold">탑승 인원</span>
      				<div class="count-input">
      					<a class="incr-btn" data-action="decrease" href="#">–</a>
      						<input class="quantity" type="text" value="1">
                		<a class="incr-btn" data-action="increase" href="#">+</a>
              		</div>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!-- MAP SECTION -->
<section class="banner" style="background-image: url('<c:url value="/img/background/banner-img1.jpg"/>');">
<div class="container">
    <div class="row text-center align-items-center justify-content-center" style="height:624px;">
      <div class="col-12">
        <!-- Banner Info -->
        <div class="banner-info">
          <h1 class="text-uppercase text-white mb-4">
            swfit air
          </h1>
          <p class="lead text-white">
            Redefining travel with speed, convenience, and modernity.
          </p>
        </div>
<!-- ====================================
———	LOCATION SEARCH ONE
===================================== -->

<div class="py-7 py-md-0 bg-light">
  <div class="container position-relative px-md-0">
    <!-- 
    <div class="search-box">
      <form method="GET" action="listings-half-screen-map-list.html">
        <div class="select-default" style="padding: 10px;">
          <select class="select-location">
            <option>출발지</option>
            <option>서울/인천(ICN)</option>
            <option>샌프란시스코(SFO)</option>
            <option>로스앤젤레스(LAX)</option>
            <option>뉴욕/뉴어크 리버티(EWR)</option>
            <option>로스앤젤레스(LAX)</option>
            <option>방콕(BKK)</option>
            <option>도쿄/나리타(NRT)</option>
          </select>
        </div>
        <div class="select-default" style="padding: 10px;">
          <select class="select-location">
            <option>도착지</option>
            <option>서울/인천(ICN)</option>
            <option>샌프란시스코(SFO)</option>
            <option>로스앤젤레스(LAX)</option>
            <option>뉴욕/뉴어크 리버티(EWR)</option>
            <option>로스앤젤레스(LAX)</option>
            <option>방콕(BKK)</option>
            <option>도쿄/나리타(NRT)</option>
          </select>
        </div>
	    <div class="form-group mb-6" style="padding-top: 30px;">
	       <input type="text" class="form-control double-date">
	    </div>
        Button trigger modal
		<button type="button"  class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
		  탑승인원
		</button>
        <button type="submit" class="btn btn-primary">
          Search
        </button>
      </form>
    </div>
       -->
  </div>
</div>
</div>
</div>
</div>
</section>

<!-- ====================================
———	BROWSER CATEGORI AREA
===================================== -->
<section class="pt-8 pb-4 pt-md-10 sec-pb-70 bg-light">
	<div class="container">

    <!-- Section Title -->
		<div style="display: flex; justify-content: space-between;">
			<div><h3 style="color: mediumaquamarine;">Event</h3></div>
			<div><span style="color: gray; font-size: 15px;"><a href='<c:url value="/event/main"/>'>더보기</a></span></div>
		</div>
		<div class="row">
			<c:forEach var="i" begin="0" end="2">
			<div class="col-sm-4 col-xs-12">
		        <div class="card border-0 bg-transparent">
					<a href="<c:url value="/event/main"/>">
						<img class="card-img-top rounded lazyestload" data-src="<c:url value='/img/event/${fn:split(eventList[i].eventImg1, \"_\")[1]}'/>" src="<c:url value='/img/event/${fn:split(eventList[i].eventImg1, \"_\")[1]}'/>" alt="Card image cap">
					</a>
		         	<div class="card-body p-0 pt-5">
			            <div class="meta-post" style="display: flex; justify-content: space-between;">
			              <date class="meta-date">
			              <fmt:parseDate var="startDate" value="${eventList[i].eventStart}" pattern="yyyy-MM-dd HH:mm:ss" />
                          <fmt:parseDate var="endDate" value="${eventList[i].eventEnd}" pattern="yyyy-MM-dd HH:mm:ss" />
			              <fmt:formatDate pattern='yyyy-MM-dd' value='${startDate }' /> ~  
			              <fmt:formatDate pattern='yyyy-MM-dd' value='${endDate }' />
			              </date>
			              <span class="badge text-bg-primary fs-6">진행 중</span>
			            </div>
						<h4 class="card-title" style="font-weight: bold;">
							<a href="<c:url value="/event/main"/>">${eventList[i].eventTitle }</a>
						</h4>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</section>

<!-- ====================================
———	LISTING
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<div class="panel-body" style="text-align: center; vertical-align: middle;">
			<div style="display: flex; justify-content: space-between;">
				<div><h3 style="color: mediumaquamarine;">Notice</h3></div>
				<div><span style="color: gray; font-size: 15px;"><a href="<c:url value="/notice/main"/>">더보기</a></span></div>
			</div>
			<hr>
			<table class="table">
			    <tbody>
			        <tr>
			            <td style="text-align: left;">
							<h4>예약 확인 지연 양해 요청</h4>
				            <p style="font-size: 0.9375rem; color: grey;">프로모션 오픈으로 인한 시스템 과부하로 일부 예약 건들의 확인이 지연되고 있습니다. 시스템 과부하로 인해 발생한 오류 사항에 관해 양해 부탁드립니다.</p>
				        </td>
			            <td>2024.04.21</td>
			        </tr>
			        <tr>
			            <td style="text-align: left;">
							<h4>[중요]국내선 Swift Air 항공 시스템 점검 안내</h4>
				            <p style="font-size: 0.9375rem; color: grey;">Swift Air 항공 시스템 점검안내 입니다.</p>
				        </td>
			            <td>2024.04.15</td>
			        </tr>
			        <tr>
			            <td style="text-align: left;">
							<h4>국제선 결제(발권) 이후 24시간 이내 환불 처리 방침 변경 안내</h4>
				            <p style="font-size: 0.9375rem; color: grey;">안녕하세요! Swiftair입니다. 항상 Swiftair 항공을 이용하여 주시는 고객님께 깊은 감사를 드리며 하기와 같이 일부 항공사의 결제(발권) 이후 취소 및 환불 규정이 다음과 같이 변경되어 안내드립니다.</p>
				        </td>
			            <td>2024.04.15</td>
			        </tr>
			        <tr>
			            <td style="text-align: left;">
							<h4>미사용 항공권 환불 관련 안내</h4>
				            <p style="font-size: 0.9375rem; color: grey;">SwiftAir를 이용해주신 고객 여러분께 진심으로 감사드리며, 미사용 항공권 환불 관련하여 안내드립니다. </p>
				        </td>
			            <td>2024.04.12</td>
			        </tr>
			    </tbody>
			</table>
		</div>
	</div>
</section>