<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>포인트 상세</title>

<style>
.img {
	max-width: 100px;
	max-height: 100px;
}
</style>
</head>
<body id="body" class="body-wrapper boxed-menu">
	<!-- js-loader -->
	<div id="js-loader"></div>

	<!-- ====================================
———	MY PROFILE
===================================== -->
	<!-- <section class="bg-light py-5 height100vh"> -->
	<section style="width: 100%; margin: 20px;">
		<div class="container">
			<h2 class="fw-normal mb-4 mb-md-0">포인트</h2>

			<div class="col-md-7 col-lg-8"
				style="width: 100%; margin-top: 20px; margin-bottom: 40px;">
				<div class="card">
					<div class="card-body p-6"
						style="display: flex; flex-direction: row; align-items: center;">
						<div class="col-md-5 col-lg-4" style="margin: 10px;">
							<div class="custom-file" style="text-align: left;">
								<h4 class="fw-normal mb-4">
									<strong>SUMIN KIM</strong> 님의 보유 포인트
								</h4>
								<h3 class="fw-normal mb-4">0pp</h3>
							</div>
						</div>
						<div class="col-md-5 col-lg-4" style="margin: 10px;">
							<div class="custom-file" style="text-align: left;"></div>
						</div>
						<div class="col-md-5 col-lg-4" style="float: right;">
							<div class="card-profile-img py-6" style="text-align: center;">
								<div>
									<a href="#modal-without-animation" class="btn btn-white btn-lg"
										data-toggle="modal"> <img class="img"
										data-src="../mypage/point_saving.png"
										src="../mypage/point_saving.png" alt="Image">
									</a>
									<h3>탑승 후 적립</h3>
								</div>
								<div>
									<a href="pricing-table.html" class="btn btn-white btn-lg">
										<img class="img" data-src="../mypage/point_guide.png"
										src="../mypage/point_guide.png" alt="Image">
									</a>
									<h3>사용 가이드</h3>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>

			<div
				style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
				<div>
					<h3>포인트 내역</h3>
				</div>

				<div
					style="display: flex; flex-direction: row; justify-content: flex-end;">
					<div class="panel panel-inverse" data-sortable-id="ui-widget-2"
						style="margin: 5px;">
						<div class="panel-heading">
							<div class="btn-group my-n1">
								<button type="button" class="btn btn-success btn-xs">전체</button>
								<button type="button"
									class="btn btn-success btn-xs dropdown-toggle"
									data-bs-toggle="dropdown">
									<b class="caret"></b>
								</button>
								<div class="dropdown-menu dropdown-menu-end">
									<a href="javascript:;" class="dropdown-item">전체</a> <a
										href="javascript:;" class="dropdown-item">적립</a> <a
										href="javascript:;" class="dropdown-item">사용</a> <a
										href="javascript:;" class="dropdown-item">환불</a>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-inverse" data-sortable-id="ui-widget-2"
						style="margin: 5px;">
						<div class="panel-heading">
							<div class="btn-group my-n1">
								<button type="button" class="btn btn-success btn-xs">최신순</button>
								<button type="button"
									class="btn btn-success btn-xs dropdown-toggle"
									data-bs-toggle="dropdown">
									<b class="caret"></b>
								</button>
								<div class="dropdown-menu dropdown-menu-end">
									<a href="javascript:;" class="dropdown-item">최신순</a> <a
										href="javascript:;" class="dropdown-item">오래된순</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="tab-content panel p-3 rounded">
				<div class="tab-pane fade active show" id="default-tab-1">
					<div class="table-responsive">
						<div class="panel panel-inverse" data-sortable-id="table-basic-4">

							<div class="panel-body">

								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>2023.01.01</td>
												<td>ICN - SFO</td>
												<td>+3000PP</td>
												<td>적립</td>
											</tr>
											<tr>
												<td>2022.01.01</td>
												<td>LAX - ICN</td>
												<td>-200PP</td>
												<td>사용</td>
											</tr>
											<tr>
												<td>2021.01.01</td>
												<td>ICN - LAX</td>
												<td>-1000PP</td>
												<td>환불</td>
											</tr>
											<tr>
												<td>2019.01.01</td>
												<td>SFO - ICN</td>
												<td>100000PP</td>
												<td>적립</td>
											</tr>
										</tbody>
									</table>
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>

			<div id="유의사항">
				<div class="card-body p-6" style="padding: 10px;">
					<div class="col-md-5 col-lg-4" style="width: 100%;">
						<p>
							🛈유의사항<br> 적립 금액은 각종 프로모션, 쿠폰 적용 후의 항공권 결제 금액만을 기준으로 하며
							유류할증료, 공항사용료, 세금, 부가서비스 결제 금액은 적립에서 제외됩니다.<br> 포인트로 구매한 항공권에
							대해서는 포인트가 적립되지 않습니다.<br> 이벤트, 특가 항공권 등 포인트 적립이 되지 않는 클래스가
							존재합니다.<br> 실제 탑승 후 탑승자 본인 명의의 계정으로 적립되며 탑승하지 않았을 경우 포인트는
							적립되지 않습니다.<br> 좌석을 점유하지 않는 유아(0~2세)용 항공권은 포인트가 적립되지 않습니다.<br>
							포인트의 유효기간은 탑승일 기준 3년입니다.
						</p>
					</div>
				</div>
			</div>

		</div>
	</section>

	<!-- #modal-without-animation -->
	<!-- <div class="modal" id="modal-without-animation" style="background-color: rgba(0,0,0,0.4);"> -->
	<div class="modal" id="modal-without-animation">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">Modal Without Animation</h4>
				</div>
				<div class="modal-body">Modal body content here...</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-sm btn-white"
						data-dismiss="modal">Close</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>