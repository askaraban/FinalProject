<%@page import="swift.air.dto.Member"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!-- HEADER -->
<header class="header">
  <nav class="nav-menuzord navbar-sticky">
    <div class="container clearfix">
      <div id="menuzord" class="menuzord menuzord-responsive">
        <a href="<c:url value='/'/>" class="menuzord-brand">
        	<img alt="logo" src="<c:url value='/img/logo/swiftair3.png'/>">
        </a>
        <c:choose>
            <c:when test="${empty loginMember}">
                <div class="float-right btn-wrapper">
                    <a class="btn btn-outline-primary" href="<c:url value='/member/login'/>"><span>로그인/회원가입</span></a>
                </div>
            </c:when>
            <c:otherwise>
            	<div class="float-right btn-wrapper" style="padding-top: 10px;">
	                <span style="font-weight: bold;">[<a href="../mypage/" style="color: #2196f3;">${loginMember.memberKorName}</a>님, 환영합니다.]</span>&nbsp;&nbsp;
	               <a href="javascript:fn_logout()">로그아웃</a>&nbsp;&nbsp;
                </div>
            </c:otherwise>
        </c:choose>
        <ul class="menuzord-menu menuzord-right">
          <li class="active">
            <a href="javascript:0">예매</a>
            <ul class="dropdown">
              <li><a href='<c:url value="/reservation"/>'>항공권 예매</a></li>
              <!-- 
              <li><a href="index-2.html">포인트 예매</a></li>
               -->
              <li><a href="<c:url value="/event/main"/>">이벤트</a></li>
            </ul>
          </li>
          <li class="">
            <a href="javascript:0">조회</a>
            <ul class="dropdown">
              <li><a href="<c:url value="/search/reservation/pre"/>">예약 조회</a></li>
              <%-- 
              <li><a href="<c:url value="/search/destination"/>">출/도착 조회</a></li>
              <li><a href="<c:url value="/search/schedule"/>">운항 스케쥴</a></li>
               --%>
            </ul>
          </li>
          <li class="">
            <a href="javascript:0">스위트프 멤버스</a>
            <ul class="dropdown">
              <li><a href="<c:url value='/'/>">포인트 적립</a></li>
              <li><a href="<c:url value='/'/>">포인트 사용</a></li>
            </ul>
          </li>
          <li class="">
            <a href="javascript:0">기내</a>
            <ul class="dropdown">
              <li><a href="<c:url value='/'/>">클래스별 서비스</a></li>
              <li><a href="<c:url value='/'/>">기내 서비스</a></li>
              <li><a href="<c:url value='/'/>">기내 엔터테인먼트</a></li>
              <li><a href="<c:url value='/'/>">항공기 소개</a></li>
            </ul>
          </li>
          <li class="">
            <a href="javascript:0">서비스 안내</a>
            <ul class="dropdown">
              <li><a href="<c:url value="/notice/main"/>">공지사항</a></li>
              <li><a href="<c:url value="/faq/main"/>">자주 묻는 질문</a></li>
              <!-- <li><a href="index-2.html">출입국 규정 정보</a></li> -->
            </ul>
          </li>
          <li class="">
         	<c:choose>
         		<c:when test="${loginMember.memberStatus eq 9}">
	            <a href="javascript:0">관리자페이지</a>
	            <ul class="dropdown">
	              <li><a href="<c:url value='/admin'/>">관리자페이지로</a></li>
             <!--  <li><a href="contact-us.html">Contact Us</a></li>
              <li><a href="terms-of-services.html">Terms and Conditions</a></li>
              <li><a href="pricing-table.html">Pricing Table</a></li>
              <li><a href="how-it-works.html">How It Works</a></li>
              <li><a href="user-profile.html">User Profile</a></li>
              <li><a href="comming-soon.html">Coming Soon</a></li>
              <li><a href="404.html">404 Page</a></li> -->
            </ul>
          		</c:when>
          	</c:choose>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- (2) LoginWithNaverId Javscript SDK -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"></script>

<!-- (3) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
<script>
	
function fn_logout() {
			
	var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "8fLkAVTQU1u1IVb0YcMG"
			}
		);
	naverLogin.init();
	naverLogin.logout();
	
	var redirect = "http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/swiftair/member/logout";
	location.replace(redirect); 		
	
}

</script>




