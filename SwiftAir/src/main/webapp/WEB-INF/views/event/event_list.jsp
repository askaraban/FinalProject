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
      <h2 class="fw-normal mb-4 mb-md-0">이벤트 목록</h2>
    </nav>

    <!-- My Bookings -->
    <table id="my-booking" class="display nowrap table-data-default" style="width:100%">
      <thead style="text-align:center">
        <tr>
          <th>제목</th>
          <th>작성일</th>
          <th>시작일</th>
          <th>종료일</th>
          <th>진행상태</th>
          <th>편집</th>
        </tr>
      </thead>
      <tbody>

        <tr>
          <td class="text-capitalize">
              당장 떠나기 좋은
              방콕 노선 임박 특가
          </td>
          <td class="text-capitalize" style="text-align:center">2024.03.25</td>
          <td class="text-capitalize" style="text-align:center">2024.03.25</td>
          <td class="text-capitalize" style="text-align:center">2024.03.31</td>
          <td style="text-align:center">
            <span class="badge text-bg-primary px-2 py-1">진행중</span>
          </td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="modify">
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
          <td class="text-capitalize">
              스위프트에어가 준비한
              샌프란시스코 20% 할인
          </td>
          <td class="text-capitalize" style="text-align:center">2024.03.13</td>
          <td class="text-capitalize" style="text-align:center">2024.03.13</td>
          <td class="text-capitalize" style="text-align:center">2024.03.31</td>
          <td style="text-align:center">
            <span class="badge text-bg-primary px-2 py-1">진행중</span>
          </td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="modify">
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
          <td class="text-capitalize">
              설레는 봄, 벚꽃특가
              도쿄 노선 15% 할인
          </td>
          <td class="text-capitalize" style="text-align:center">2024.03.07</td>
          <td class="text-capitalize" style="text-align:center">2024.03.07</td>
          <td class="text-capitalize" style="text-align:center">2024.03.31</td>
          <td style="text-align:center">
            <span class="badge text-bg-primary px-2 py-1">진행중</span>
          </td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="modify">
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
          <td class="text-capitalize">
              누적 탑승객 100만명 기념
              회원가입 이벤트
          </td>
          <td class="text-capitalize" style="text-align:center">2024.03.01</td>
          <td class="text-capitalize" style="text-align:center">2024.03.01</td>
          <td class="text-capitalize" style="text-align:center">2024.03.31</td>
          <td style="text-align:center">
            <span class="badge text-bg-primary px-2 py-1">진행중</span>
          </td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="modify">
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
          <td class="text-capitalize">
              스위프트에어
              샌프란시스코 신규 취항 특가
          </td>
          <td class="text-capitalize" style="text-align:center">2024.02.14</td>
          <td class="text-capitalize" style="text-align:center">2024.02.14</td>
          <td class="text-capitalize" style="text-align:center">2024.02.21</td>
          <td style="text-align:center">
            <span class="badge bg-danger px-2 py-1">종료됨</span>
          </td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="modify">
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
          <td class="text-capitalize">
              나리타 노선
              취항 1주년 기념 특가
          </td>
          <td class="text-capitalize" style="text-align:center">2023.12.21</td>
          <td class="text-capitalize" style="text-align:center">2023.12.21</td>
          <td class="text-capitalize" style="text-align:center">2023.12.27</td>
          <td style="text-align:center">
            <span class="badge bg-danger px-2 py-1">종료됨</span>
          </td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="modify">
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
          <td class="text-capitalize">
              크리스마스를 제대로 즐기는 방법?
              스위프트에어와 떠나자
          </td>
          <td class="text-capitalize" style="text-align:center">2023.11.08</td>
          <td class="text-capitalize" style="text-align:center">2023.11.08</td>
          <td class="text-capitalize" style="text-align:center">2023.11.15</td>
          <td style="text-align:center">
            <span class="badge bg-danger px-2 py-1">종료됨</span>
          </td>

          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="modify">
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
          <td class="text-capitalize">
              에어프레미아 특가
              유럽 여행의 시작
          </td>
          <td class="text-capitalize" style="text-align:center">2023.10.30</td>
          <td class="text-capitalize" style="text-align:center">2023.10.30</td>
          <td class="text-capitalize" style="text-align:center">2023.11.06</td>
          <td style="text-align:center">
            <span class="badge bg-danger px-2 py-1">종료됨</span>
          </td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="modify">
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
  