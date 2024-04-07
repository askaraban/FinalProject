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

        <a href="index.html" class="menuzord-brand">
          <svg class="logo-svg" version="1.1" xmlns="http://www.w3.org/2000/svg" width="140" height="44">
            <path class="fill-primay" d="M0 44V0h139.813v44H0zM137.346 2.467H2.467v39.065h134.879V2.467z" />
            <path class="fill-primay"
              d="M120.927 22.389v11.095h-4.566V22.389a371.288 371.288 0 0 0-2.086-2.888 347.047 347.047 0 0 1-2.2-3.053 386.86 386.86 0 0 0-2.201-3.053c-.7-.959-1.395-1.922-2.086-2.888h5.617l5.255 7.287 5.222-7.287h5.649c.002 0-8.604 11.882-8.604 11.882zM98.034 33.484h-4.565V15.069h-6.372v-4.562h17.244v4.562h-6.306v18.415zm-21.908 0H71.56V15.069h-6.372v-4.562h17.244v4.562h-6.306v18.415zm-17.425-1.789c-.69.623-1.511 1.116-2.463 1.477-.953.361-1.987.542-3.104.542-1.007 0-1.982-.143-2.923-.427a10.814 10.814 0 0 1-2.661-1.214h.033a9.928 9.928 0 0 1-1.577-1.215 18.73 18.73 0 0 1-.953-.952l3.416-3.151c.153.197.399.432.739.706.339.274.728.537 1.166.788.44.253.902.467 1.38.64.481.175.941.262 1.379.262.372 0 .744-.044 1.117-.131.359-.082.703-.22 1.018-.41.305-.185.564-.437.755-.739.197-.306.296-.689.296-1.149 0-.175-.06-.366-.181-.574-.12-.208-.329-.432-.624-.673-.296-.241-.706-.498-1.232-.771a20.567 20.567 0 0 0-1.971-.87 25.42 25.42 0 0 1-2.562-1.132 8.896 8.896 0 0 1-2.053-1.428 5.903 5.903 0 0 1-1.347-1.871c-.317-.7-.476-1.51-.476-2.429 0-.94.175-1.822.526-2.642a6.21 6.21 0 0 1 1.494-2.133c.646-.602 1.423-1.072 2.332-1.412.908-.339 1.911-.509 3.006-.509.591 0 1.22.077 1.889.23.668.153 1.319.35 1.954.591a12.95 12.95 0 0 1 1.79.837c.558.317 1.023.64 1.396.968l-2.825 3.545a15.71 15.71 0 0 0-1.281-.788 10.316 10.316 0 0 0-1.281-.558 4.311 4.311 0 0 0-1.478-.263c-.919 0-1.637.181-2.151.542-.515.361-.772.881-.772 1.559 0 .307.093.586.279.837.186.252.438.482.756.689.348.225.717.417 1.1.574.416.176.854.34 1.314.492 1.314.504 2.42 1.013 3.318 1.526.898.514 1.62 1.062 2.168 1.642s.936 1.204 1.166 1.871c.23.668.345 1.395.345 2.183 0 .963-.197 1.871-.591 2.724a6.803 6.803 0 0 1-1.626 2.216zM34.839 10.507h4.532v22.977h-4.532V10.507zm-20.036 0h4.566v18.415h9.263v4.563H14.803V10.507z" />
          </svg>
        </a>
        <c:choose>
            <c:when test="${empty loginMember}">
                <div class="float-right btn-wrapper">
                    <a class="btn btn-outline-primary" href="<c:url value='/member/login'/>"><span>로그인</span></a>
		            <a class="btn btn-outline-primary" href="<c:url value='/member/join'/>"><span>회원가입</span></a>
                </div>
            </c:when>
            <c:otherwise>
                <span style="font-weight: bold;">[<a href="../mypage/" style="color: #43C4AE;">${loginMember.memberKorName}</a>님, 환영합니다.]</span>&nbsp;&nbsp;
                <a href="<c:url value = '/member/logout'/>">로그아웃</a>&nbsp;&nbsp;
            </c:otherwise>
        </c:choose>
        <ul class="menuzord-menu menuzord-right">
          <li class="active">
            <a href="javascript:0">예매</a>
            <ul class="dropdown">
              <li><a href='<c:url value="/reservation"/>'>항공권 예매</a></li>
              <li><a href="index-2.html">포인트 예매</a></li>
              <li><a href="index-3.html">이벤트</a></li>
            </ul>
          </li>
          <li class="">
            <a href="javascript:0">조회</a>
            <ul class="dropdown">
              <li><a href="<c:url value="/search/reservation"/>">예약 조회</a></li>
              <li><a href="<c:url value="/search/destination"/>">출/도착 조회</a></li>
              <li><a href="<c:url value="/search/schedule"/>">운항 스케쥴</a></li>
            </ul>
          </li>
          <li class="">
            <a href="javascript:0">스위트프 멤버스</a>
            <ul class="dropdown">
              <li><a href="index.html">포인트 적립</a></li>
              <li><a href="index-2.html">포인트 사용</a></li>
            </ul>
          </li>
          <li class="">
            <a href="javascript:0">기내</a>
            <ul class="dropdown">
              <li><a href="index.html">클래스별 서비스</a></li>
              <li><a href="index-2.html">기내 서비스</a></li>
              <li><a href="index-2.html">기내 엔터테인먼트</a></li>
              <li><a href="index-2.html">항공기 소개</a></li>
            </ul>
          </li>
          <li class="">
            <a href="javascript:0">서비스 안내</a>
            <ul class="dropdown">
              <li><a href="index.html">공지사항</a></li>
              <li><a href="index-2.html">자주 묻는 질문</a></li>
              <li><a href="index-2.html">출입국 규정 정보</a></li>
            </ul>
          </li>
          <li class="">
            <a href="javascript:0">Pages</a>
            <ul class="dropdown">
              <li><a href="contact-us.html">Contact Us</a></li>
              <li><a href="terms-of-services.html">Terms and Conditions</a></li>
              <li><a href="pricing-table.html">Pricing Table</a></li>
              <li><a href="how-it-works.html">How It Works</a></li>
              <li><a href="user-profile.html">User Profile</a></li>
              <li><a href="comming-soon.html">Coming Soon</a></li>
              <li><a href="404.html">404 Page</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>




