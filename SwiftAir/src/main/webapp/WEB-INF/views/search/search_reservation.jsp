<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>



<!-- ====================================
———	MY BOOKINGS
===================================== -->
<section class="pb-8 pt-5 bg-light height100vh">
  <div class="container">

    <!-- Breadcrumb -->
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <h2 class="fw-normal mb-4 mb-md-0">예약 조회</h2>
      <ul class="list-unstyled d-flex p-0 m-0">
        <li class="breadcrumb-item active" aria-current="page">다가오는 여정</li>
        <li class="breadcrumb-item"><a href="dashboard-user.html">지난 여정</a></li>
      </ul>
    </nav>

    <!-- My Bookings -->
    
    <c:if test=""></c:if>
    
    <table id="my-booking" class="display nowrap table-data-default" style="width:100%">
      <thead>
        <tr>
          <th  style="padding: 15px; padding-left: 20px;">예약번호</th>
          <th style="padding-left: 20px;">여정</th>
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