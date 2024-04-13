<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


<!-- ====================================
———	MY BOOKINGS
===================================== -->
<section class="pb-8 pt-5 bg-light height100vh2">
  <div class="container">
<!-- Breadcrumb -->
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <h3 class="fw-normal mb-4 mb-md-0">출/도착 조회</h3>
    </nav>
<!-- Breadcrumb -->
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item"><a href="dashboard-user.html">구간 조회</a></li>
        <li class="breadcrumb-item active" aria-current="page">편명 조회</li>
      </ul>
    </nav>
<!-- 출/도착 조회 -->
  <div class="py-7 py-md-0 bg-light">
  	<div class="container position-relative px-md-0">
  	 <div class="search-box2">
      <form method="post" action="<c:url value="/search/destination" />">
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
        <button type="submit" class="btn btn-primary">
          Search
        </button>
      </form>
 	 </div>
   </div>
 </div>
</div>
</section>
<section class="pb-8 pt-5 bg-light height100vh">
  <div class="container">
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <h3 class="fw-normal mb-4 mb-md-0">ICN - NRT</h3>
    </nav>
    <!-- My Bookings -->
    <table id="my-booking" class="display nowrap table-data-default" style="width:100%">
      <thead>
        <tr>
          <th  style="padding: 7px;">예약번호</th>
          <th>여정</th>
          <th>노선</th>
          <th>일정</th>
          <th>상태</th>
        </tr>
      </thead>
      <tbody>

        <tr>
          <td>
            <span>A3UFPC</span>
          </td>
          <td class="text-capitalize" style="padding: 20px;">
            <a class="text-hover-primary text-muted" href="listing-rental.html">think Coffee</a>
          </td>
          <td class="text-capitalize">Eat & Drink</td>
          <td class="test-capitalize">
            01 Aug 19 11.00 PM
          </td>
          <td class="test-capitalize">
            08 Aug 2019, 4:30 PM 5 Persons
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</section>