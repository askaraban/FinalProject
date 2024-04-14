<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>항공권 결제</title>
</head>
 <body>
<!-- ====================================
———	PAYMENT PROCESS
===================================== -->
	<section class="py-7 py-md-10 bg-light height100vh">
		<div class="container">
			<div class="border p-6 p-lg-9 bg-white">
				<div class="row">
					<div class="col-md-6 col-xs-12 border-md-right pe-md-6 pe-lg-9">
						<form>
							<h2 class="h3 mb-6">결제 방법</h2>
							<div class="form-group mb-6">
								<select class="form-select" required="required">
									<option value="" selected disabled hidden>결제수단을 선택해주세요.</option>
									<option value="1">신용/체크카드</option>
									<option value="2">해외 발행 신용카드</option>
									<option value="3">카카오페이</option>
								</select>
							</div>

							<div class="input-group mb-6">
								<select class="form-select" required="required">
									<option value="" selected disabled hidden>카드사 선택</option>
									<option value="1">롯데카드</option>
									<option value="2">삼성카드</option>
									<option value="3">현대카드</option>
									<option value="4">비씨카드(우리카드,시티카드)</option>
									<option value="5">신한카드</option>
									<option value="6">국민카드</option>
									<option value="7">NH농협</option>
									<option value="8">하나카드</option>
								</select>
								<span class="input-group-text bg-transparent px-3">
								<i class="far fa-credit-card" aria-hidden="true"></i>
								</span>
							</div>

							<!-- <div class="col-lg-6"> -->
							<div class="form-group mb-6">
								<select class="form-select" required="required">
									<option value="1" selected>일시불</option>
									<option value="2">2개월</option>
									<option value="3">3개월</option>
									<option value="4">4개월</option>
									<option value="5">5개월</option>
									<option value="6">6개월</option>
									<option value="7">12개월</option>
								</select>
							</div>
							<!-- </div> -->

							<!-- <div class="col-lg-6"> -->
							<!--  <div class="input-group mb-6">
                  <input type="text" class="form-control border border-end-0 " placeholder="쿠폰 코드 입력">
                  <span class="input-group-text bg-transparent">
                    <i class="far fa-question-circle" aria-hidden="true"></i>
                  </span>
                  button
				  <button type="button" class="btn btn-outline-success">
					  적용
				  </button>
                </div> -->
							<!-- </div> -->
							<!-- </div> -->


							<div class="form-group mb-6">
								<button type="submit" class="btn btn-success py-2 px-4"
									style="width: 100%; height: 100%">결제</button>
							</div>

							<hr class="my-7 d-md-none">
						</form>
					</div>

					<div class="col-md-6 col-xs-12 ps-md-6 ps-lg-9"
						style="display: flex; flex-direction: column;">
						<h2 class="h3 mb-6">결제 금액</h2>
						<div>
							<div style="float: left;">항공운임</div>
							<div style="float: right;">
								<fmt:formatNumber value="${${resinfo.paymentTotal + 187000}}" pattern="#,###"/> KRW
							</div>
						</div>
						<!-- <span class="text-primary" style="font-size: 1.25rem;">$1550.00</span> -->
						<div>
							<div style="float: left;">공항시설 사용료</div>
							<div style="float: right;">67,000 KRW</div>
						</div>

						<div>
							<div style="float: left;">유류할증료</div>
							<div style="float: right;">120,000 KRW</div>
						</div>

						<!-- <div>
							<div style="float: left;">부가서비스 추가 금액</div>
							<div style="float: right;">60,000 KRW</div>
						</div> -->
						<hr>
						<div>
							<div style="float: left;">
								<strong>총 결제 금액</strong>
							</div>
							<div style="float: right;">
								<fmt:formatNumber value="${${resinfo.paymentTotal + 187000}}" pattern="#,###"/> KRW
							</div>
						</div>
						<div>
							<div style="float: left;"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>