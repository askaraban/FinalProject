<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
							<!-- <div class="row g-2"> -->
							<!-- <div class="col-lg-6"> -->
							<h2 class="h3 mb-6">포인트</h2>
							<div class="form-group mb-6">
								<input type="text" class="form-control border border-end-0 "
									placeholder="보유 포인트">
							</div>
							<!-- </div> -->

							<!-- <div class="col-lg-6"> -->
							<div class="input-group mb-6">
								<input type="text" class="form-control border border-end-0 "
									placeholder="사용 포인트">
								<!-- <span class="input-group-text bg-transparent">
                    <i class="far fa-question-circle" aria-hidden="true"></i>
                  </span> -->
								<!-- button -->
								<button type="button" class="btn btn-outline-success">
									적용</button>
							</div>
							<!-- </div> -->
							<!-- </div> -->

			<div class="form-group mb-6">
              <div class="form-check">
                <input class="form-check-input" type="checkbox" id="gridCheck">
                <label class="form-check-label" for="gridCheck">
                  By confirming you agree to Listty
                  <a href="terms-of-services.html">
                    Terms of Service
                  </a>
                </label>
              </div>
            </div>

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
							<div style="float: right;">260,000 PP</div>
						</div>
						<!-- <span class="text-primary" style="font-size: 1.25rem;">$1550.00</span> -->
						<div>
							<div style="float: left;">공항시설 사용료</div>
							<div style="float: right;">64,000 PP</div>
						</div>

						<div>
							<div style="float: left;">유류할증료</div>
							<div style="float: right;">64,000 PP</div>
						</div>

						<div>
							<div style="float: left;">부가서비스 추가 금액</div>
							<div style="float: right;">60,000 PP</div>
						</div>
						<hr>
						<div>
							<div style="float: left;">
								<strong>총 결제 금액</strong>
							</div>
							<div style="float: right;">50,000 PP</div>
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