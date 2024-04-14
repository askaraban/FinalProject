<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>포인트 사용 안내</title>
</head>
<body id="body" class="up-scroll">
	<!-- js-loader -->
	<div id="js-loader"></div>

	<section class="py-7 py-md-10">
		<div class="container">
			<h1>포인트 사용 안내</h1>
			<p class="mb-7">적립한 포인트로 항공권 구매가 가능합니다.</p>

			<div class="py-6">
				<p class="h4" style="font-weight: 600;">포인트로 항공권 구매하기</p>
				<p style="color: black;">
					포인트를 사용하여 국제선 항공권 구매가 가능합니다.<br> 포인트 항공권의 가격은 포인트 캘린더에서 확인
					가능하며, 해당 편의 좌석 상황에 따라 실시간으로 변경됩니다.
				</p>
				<a href="../reservation" class="btn btn-white btn"
					style="border-color: #2196f3; color: black; font-weight: 500;">항공권 예매하러가기</a>
			</div>

			<div class="py-6">
				<h3 class="h4" style="font-weight: 600;">포인트 항공권 발급 조건</h3>
				<p style="color: black;">
					·포인트 항공권은 발급 후 취소만 가능합니다.<br> ·공항세, 유류할증료 등의 각종 수수료는 본인이 부담하셔야
					합니다.<br> ·왕복 항공권의 경우, 출발편 항공권 미사용 시(출발일 이후-No Show) 전체 여정은 자동
					취소됩니다.(돌아오는 편까지 모두 취소)<br> ·왕복 항공권의 경우, 최초 여정의 순서로 사용이 이루어져야
					합니다.(역순사용불가)<br> ·포인트 사용인 본인의 계정에 적립된 포인트만 사용이 가능합니다.(유아 제외)<br>
					·유아는 법정 대리인과 동일 여정에 탑승 시, 법정 대리인의 포인트를 양도 받아 사용할 수 있습니다.<br>
				</p>
			</div>

			<div class="py-6">
				<h3 class="h4" style="font-weight: 600;">유아 및 소아</h3>
				<p style="color: black;">·예약 센터(1800-2626)를 통해 유아 및 소아의 포인트 항공권
					구매가 가능합니다. ·좌석을 점유하는 유아 및 소아는 성인과 동일한 포인트 요금이 공제됩니다. ·좌석을 점유하지 않는
					유아는 성인의 약 10% 포인트를 공제하나, 노선별로 상이할 수 있으므로 예약 센터를 통해 문의 바랍니다.</p>
			</div>

			<div class="py-6">
				<h3 class="h4" style="font-weight: 600;">포인트 항공권 위약금 안내</h3>
				<p style="color: black;">포인트 항공권에 대해 환불 신청 시, 예매하신 포인트 항공권에 해당하는
					포인트를 공제한 후 잔여 포인트를 환급하여 드립니다.</p>
				<p class="mb-0" style="text-align: right;">단위:(포인트)</p>
				<div class="panel panel-inverse" data-sortable-id="table-basic-5"
					style="text-align: center;">
					<div class="panel-body">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th rowspan="3" valign=middle
										style="background: #2196f3; color: white;">구분</th>
									<th colspan="2" style="background: #2196f3; color: white;">환불
										수수료</th>
									<th rowspan="3" valign=middle
										style="background: #2196f3; color: white;">노쇼(No-show)</th>
								</tr>
								<tr>
									<th colspan="2" style="background: #2196f3; color: white;">출발
										전</th>
								</tr>
								<tr>
									<th style="background: #2196f3; color: white;">91이전</th>
									<th style="background: #2196f3; color: white;">91이내</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>동남아</td>
									<td>무료</td>
									<td>12,000</td>
									<td>25,000</td>
								</tr>
								<tr>
									<td>동북아</td>
									<td>무료</td>
									<td>7,000</td>
									<td>15,000</td>
								</tr>
								<tr>
									<td>미주/유럽</td>
									<td>무료</td>
									<td>6,000</td>
									<td>10,000</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<div class="py-6">
					<p class="mb-0">
						※항공기 출발시간 이전까지 확약 된 항공편의 취소를 통보하지 않은 고객 (No-show penalty)<br>
					</p>
					<p style="color: black; font-weight: 400">
						·각 승객에게 부과되는 비용입니다.<br> ·취소는 출발 1시간 전까지 가능합니다.<br> ·항공편
						운항 취소 등 고객 사정에 따른 환불이 아닌 경우 수수료가 부과되지 않습니다.<br> ·예약 당일(24시간
						내) 미사용 항공권 전체를 환불할 경우 수수료가 부과되지 않습니다.<br>
					</p>
				</div>
			</div>
		</div>
	</section>
</body>
</html>