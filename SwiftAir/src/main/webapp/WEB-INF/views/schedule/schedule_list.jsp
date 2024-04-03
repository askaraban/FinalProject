<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

  <body id="body" class="body-wrapper boxed-menu">
      <div class="main-wrapper">

<!-- ====================================
———	MY BOOKINGS
===================================== -->
<section class="pb-8 pt-5 bg-light height100vh">
  <div class="container">

    <!-- Breadcrumb -->
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <h2 class="fw-normal mb-4 mb-md-0">운항일정 목록</h2>
    </nav>

    <!-- My Bookings -->
    <table id="my-booking" class="display nowrap table-data-default" style="width:100%">
      <thead style="text-align:center">
        <tr>
          <th>항공기명</th>
          <th>출발지</th>
          <th>도착지</th>
          <th>운항시간</th>
          <th>가격</th>
          <th>출발일</th>
          <th>도착일</th>
          <th>편집</th>
        </tr>
      </thead>
      <tbody>

        <tr>
          <td class="text-capitalize" style="text-align:center">SW1011</td>
          <td class="text-capitalize" style="text-align:center">서울/인천(ICN)</td>
          <td class="text-capitalize" style="text-align:center">로스앤젤레스(LAX)</td>
          <td class="text-capitalize" style="text-align:center">00시간 00분</td>
          <td class="text-capitalize" style="text-align:center">500,000원</td>
          <td class="text-capitalize" style="text-align:center">2024.02.10</td>
          <td class="text-capitalize" style="text-align:center">2024.02.11</td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="listing-event.html">
                <i class="fa fa-edit"></i>
                수정
              </a>
              <button class="btn btn-outline-danger btn-sm">
                <i class="fa fa-times" aria-hidden="true"></i>
                삭제
              </button>
            </div>
          </td>
        </tr>

        <tr>
          <td class="text-capitalize" style="text-align:center">SW1012</td>
          <td class="text-capitalize" style="text-align:center">로스앤젤레스(LAX)</td>
          <td class="text-capitalize" style="text-align:center">서울/인천(ICN)</td>
          <td class="text-capitalize" style="text-align:center">00시간 00분</td>
          <td class="text-capitalize" style="text-align:center">500,000원</td>
          <td class="text-capitalize" style="text-align:center">2024.02.10</td>
          <td class="text-capitalize" style="text-align:center">2024.02.11</td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="listing-event.html">
                <i class="fa fa-edit"></i>
                수정
              </a>
              <button class="btn btn-outline-danger btn-sm">
                <i class="fa fa-times" aria-hidden="true"></i>
                삭제
              </button>
            </div>
          </td>
        </tr>

        <tr>
          <td class="text-capitalize" style="text-align:center">SW2011</td>
          <td class="text-capitalize" style="text-align:center">서울/인천(ICN)</td>
          <td class="text-capitalize" style="text-align:center">방콕(BKK)</td>
          <td class="text-capitalize" style="text-align:center">00시간 00분</td>
          <td class="text-capitalize" style="text-align:center">500,000원</td>
          <td class="text-capitalize" style="text-align:center">2024.02.10</td>
          <td class="text-capitalize" style="text-align:center">2024.02.11</td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="listing-event.html">
                <i class="fa fa-edit"></i>
                수정
              </a>
              <button class="btn btn-outline-danger btn-sm">
                <i class="fa fa-times" aria-hidden="true"></i>
                삭제
              </button>
            </div>
          </td>
        </tr>

        <tr>
          <td class="text-capitalize" style="text-align:center">SW2012</td>
          <td class="text-capitalize" style="text-align:center">방콕(BKK)</td>
          <td class="text-capitalize" style="text-align:center">서울/인천(ICN)</td>
          <td class="text-capitalize" style="text-align:center">00시간 00분</td>
          <td class="text-capitalize" style="text-align:center">500,000원</td>
          <td class="text-capitalize" style="text-align:center">2024.02.10</td>
          <td class="text-capitalize" style="text-align:center">2024.02.11</td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="listing-event.html">
                <i class="fa fa-edit"></i>
                수정
              </a>
              <button class="btn btn-outline-danger btn-sm">
                <i class="fa fa-times" aria-hidden="true"></i>
                삭제
              </button>
            </div>
          </td>
        </tr>

        <tr>
          <td class="text-capitalize" style="text-align:center">SW3011</td>
          <td class="text-capitalize" style="text-align:center">서울/인천(ICN)</td>
          <td class="text-capitalize" style="text-align:center">도쿄/나리타(NRT)</td>
          <td class="text-capitalize" style="text-align:center">00시간 00분</td>
          <td class="text-capitalize" style="text-align:center">500,000원</td>
          <td class="text-capitalize" style="text-align:center">2024.02.10</td>
          <td class="text-capitalize" style="text-align:center">2024.02.11</td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="listing-event.html">
                <i class="fa fa-edit"></i>
                수정
              </a>
              <button class="btn btn-outline-danger btn-sm">
                <i class="fa fa-times" aria-hidden="true"></i>
                삭제
              </button>
            </div>
          </td>
        </tr>

        <tr>
          <td class="text-capitalize" style="text-align:center">SW3012</td>
          <td class="text-capitalize" style="text-align:center">도쿄/나리타(NRT)</td>
          <td class="text-capitalize" style="text-align:center">서울/인천(ICN)</td>
          <td class="text-capitalize" style="text-align:center">00시간 00분</td>
          <td class="text-capitalize" style="text-align:center">500,000원</td>
          <td class="text-capitalize" style="text-align:center">2024.02.10</td>
          <td class="text-capitalize" style="text-align:center">2024.02.11</td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="listing-event.html">
                <i class="fa fa-edit"></i>
                수정
              </a>
              <button class="btn btn-outline-danger btn-sm">
                <i class="fa fa-times" aria-hidden="true"></i>
                삭제
              </button>
            </div>
          </td>
        </tr>

        <tr>
          <td class="text-capitalize" style="text-align:center">SW1011</td>
          <td class="text-capitalize" style="text-align:center">서울/인천(ICN)</td>
          <td class="text-capitalize" style="text-align:center">로스앤젤레스(LAX)</td>
          <td class="text-capitalize" style="text-align:center">00시간 00분</td>
          <td class="text-capitalize" style="text-align:center">500,000원</td>
          <td class="text-capitalize" style="text-align:center">2024.02.10</td>
          <td class="text-capitalize" style="text-align:center">2024.02.11</td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="listing-event.html">
                <i class="fa fa-edit"></i>
                수정
              </a>
              <button class="btn btn-outline-danger btn-sm">
                <i class="fa fa-times" aria-hidden="true"></i>
                삭제
              </button>
            </div>
          </td>
        </tr>

        <tr>
          <td class="text-capitalize" style="text-align:center">SW1012</td>
          <td class="text-capitalize" style="text-align:center">로스앤젤레스(LAX)</td>
          <td class="text-capitalize" style="text-align:center">서울/인천(ICN)</td>
          <td class="text-capitalize" style="text-align:center">00시간 00분</td>
          <td class="text-capitalize" style="text-align:center">500,000원</td>
          <td class="text-capitalize" style="text-align:center">2024.02.10</td>
          <td class="text-capitalize" style="text-align:center">2024.02.11</td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="listing-event.html">
                <i class="fa fa-edit"></i>
                수정
              </a>
              <button class="btn btn-outline-danger btn-sm">
                <i class="fa fa-times" aria-hidden="true"></i>
                삭제
              </button>
            </div>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</section>


    </div> <!-- element wrapper ends -->
  </body>
