<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<body id="body" class="up-scroll">
<!-- ====================================
———	LISTING SINGLE HEADING
===================================== -->
<section class="py-7 pt-md-9 pb-md-8">
    <div class="container">
        <div class="col-lg-12">
        <div class="mb-2 mb-lg-0">
            <span class="badge text-bg-primary fs-6 mb-2" style="line-height: 1.2">진행중</span>
            <h2 class="fw-bolder lh-base">
            당장 떠나기 좋은
            <br>
            방콕 노선 임박특가
            </h2>
            <date class="meta-date" style="font-size: 1.025rem;">2024.03.25 ~ 2024.03.31</date>
            <hr>
        </div>
        </div>
    </div>
</section>

<!-- ====================================
———	MAIN CONTENT
===================================== -->
<section class="pt-4 pb-4 pb-md-8">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-lg-4">
            <div class="card border-0 bg-transparent">
                <img class="card-img rounded-5 mt-sm-5" data-src="../assets/img/event/BKsale2.jpg" src="../assets/img/event/BKsale2.jpg" alt="Card image cap">
            </div>
            </div>

      <!--======= Sidebar =======-->
        <div class="col-md-7 col-lg-8">
            <div class="px-6 py-5 mb-5">
                <h2 class="fw-bolder mb-6 ms-3">이벤트 안내</h2>
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="fw-bolder lh-base">운영기간</td>
                                <td class="px-6">2024.03.25 ~ 2024.03.31</td>
                            </tr>
                            <tr>
                                <td class="fw-bolder lh-base">행사내용</td>
                                <td class="px-6">
                                <p>
                                프로모션 코드 입력란에 'BKKMARCH' 입력하면 전 좌석 15% 즉시 할인
                                <br>
                                (인천<->방콕 노선 이코노미 탑승자 대상)
                                <br>
                                본 프로모션은 한정된 좌석으로, 판매 기간 이전에 선착순 조기 마감될 수 있습니다.
                                <br>
                                항공권 구매 후 날짜 변경 시에 프로모션이 종료된 경우 프로모션의 재적용이 불가 합니다.
                                </p>
                                </td>
                            </tr>
                            <tr>
                                <td class="fw-bolder lh-base">유의사항</td>
                                <td class="px-6">
                                <p>
                                스위프트에어 공식 홈페이지 결제 시 사용 가능합니다.
                                <br>
                                본 프로모션은 선착순 조기 마감될 수 있습니다.
                                <br>
                                해당 프로모션 혜택은 항공 운임(공항 시설사용료,유류할증료 제외)에 적용됩니다.
                                <br>
                                항공권 구매 후 날짜 변경 시에 프로모션이 소진된 경우 프로모션의 재적용이 불가합니다.
                                <br>
                                항공 스케줄은 정부인가 조건이며, 예고 없이 변경될 수 있습니다.
                                <br>
                                본 프로모션은 소아 운임도 적용 가능합니다.
                                <br>
                                본 프로모션은 한국 출발편만 적용 가능합니다.
                                </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
            </div>
            <div class="row">
                <div class="col-sm-8 col-lg-8 ms-md-6"></div>
                <div class="col-sm-4 col-lg-3">
                    <button type="submit" class="btn btn-primary w-100">목록으로</button>
                </div>
            </div>
        </div>
        </div>
    </div>
</section>

</body>
