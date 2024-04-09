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
<title>포인트 상세</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

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
									<strong>${loginMember.memberFirstName} ${loginMember.memberLastName}</strong> 님의 보유 포인트
								</h4>
								<h3 class="fw-normal mb-4">${loginMember.memberPoint }p</h3>
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
										data-src=<c:url value="/img/mypage/point_saving.png"/>
										src=<c:url value="/img/mypage/point_saving.png"/> alt="Image">
									</a>
									<h3>탑승 후 적립</h3>
								</div>
								<div>
									<a href="pointGuide" class="btn btn-white btn-lg">
										<img class="img" data-src=<c:url value="/img/mypage/point_guide.png"/>
										src=<c:url value="/img/mypage/point_guide.png"/> alt="Image">
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
								<button type="button" class="btn btn-success btn-xs" style="color:white;">전체</button>
								<button type="button"
									class="btn btn-success btn-xs dropdown-toggle"
									data-bs-toggle="dropdown">
									<b class="caret"></b>
								</button>
								<div class="dropdown-menu dropdown-menu-end">
									<a href="javascript:filterPoints(-1);" class="dropdown-item">전체</a> 
									<a href="javascript:filterPoints(0);" class="dropdown-item">적립</a>
									<a href="javascript:filterPoints(1);" class="dropdown-item">사용</a>
									<a href="javascript:filterPoints(2);" class="dropdown-item">환불</a>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-inverse" data-sortable-id="ui-widget-2" style="margin: 5px;">
						<div class="panel-heading">
							<div class="btn-group my-n1">
								<button type="button" class="btn btn-success btn-xs" style="color:white;">최신순</button>
								<button type="button" class="btn btn-success btn-xs dropdown-toggle" data-bs-toggle="dropdown">
									<b class="caret"></b>
								</button>
								<div class="dropdown-menu dropdown-menu-end">
									<a href="javascript:filterPoints(3);" class="dropdown-item">최신순</a>
									<a href="javascript:filterPoints(4);" class="dropdown-item">오래된순</a>
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

								<div class="table-responsive" id="pointTableDiv">
									<table class="table" id="pointTable">
										<thead>
											<tr>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="point" items="${pointDetail}">
											<tr>
												<td>${point.pointDate.substring(0,10) }</td>
												<td>${point.routeDeparture } - ${point.routeDestination }(왕복)</td>
												<td>${point.pointAmount}</td>
												<c:choose>
													<c:when test="${point.pointStatus == 0}">
														<td>적립</td>
													</c:when>
													<c:when test="${point.pointStatus == 1}">
														<td>사용</td>
													</c:when>
													<c:otherwise>
														<td>소멸</td>
													</c:otherwise>
												</c:choose>
											</tr>
										</c:forEach>
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
						<p style="color: black;">🛈유의사항</p>
						<p>
							- 적립 금액은 각종 프로모션, 쿠폰 적용 후의 항공권 결제 금액만을 기준으로 하며
							유류할증료, 공항사용료, 세금, 부가서비스 결제 금액은 적립에서 제외됩니다.<br> - 포인트로 구매한 항공권에
							대해서는 포인트가 적립되지 않습니다.<br> - 이벤트, 특가 항공권 등 포인트 적립이 되지 않는 클래스가
							존재합니다.<br> - 실제 탑승 후 탑승자 본인 명의의 계정으로 적립되며 탑승하지 않았을 경우 포인트는
							적립되지 않습니다.<br> - 좌석을 점유하지 않는 유아(0~2세)용 항공권은 포인트가 적립되지 않습니다.<br>
							- 포인트의 유효기간은 탑승일 기준 3년입니다.
						</p>
					</div>
				</div>
			</div>

		</div>
	</section>

	<!-- #modal-without-animation -->
	<!-- <div class="modal" id="modal-without-animation" style="background-color: rgba(0,0,0,0.4);"> -->
	<!-- <div class="modal" id="modal-without-animation">
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
	</div> -->
	
<script>
var pointStatus=-1;
var sort="point_date desc";

function filterPoints(status) {
	if(status >= -1 && status <= 2) {
		pointStatus=status;
	} else if(status == 3) {
		sort="point_date desc";
	} else if(status == 4) {
		sort="point_date asc";
	}
	
    $.ajax({
        url: "<c:url value="/mypage/pointDetail"/>",
        type: 'post',
        data: { "pointStatus": pointStatus, "sort" : sort },
        dataType: "json",
        success: function(result) {
        	if(result.length == 0) {//검색된 포인트 내역이 없는 경우
				var html="<table class='table' id='pointTable'>";
				html+="<tr>";
				html+="<th width='800'>포인트 이용 내역이 없습니다.</th>";
				html+="</tr>";
				html+="</table>"
				$("#pointTableDiv").html(html);
				return;
			}	
        	
        	var html="<table class='table' id='pointTable'>";
			html+="<thead>";
			html+="<tr>";
			html+="<th></th>";
			html+="<th></th>";
			html+="<th></th>";
			html+="<th></th>";
			html+="</tr>";
			html+="</thead>";
			
			
			$(result).each(function() {
				html+="<tbody>";
				html+="<tr>";
				html+="<td>"+this.pointDate.substring(0, 10)+"</td>";
				html+="<td>"+this.routeDeparture+" - "+this.routeDestination+"(왕복))</td>";
				html+="<td>"+this.pointAmount+"</td>";
				 if (this.pointStatus == 0) { 
				        html += "<td>적립</td>";
				    } else if (this.pointStatus == 1) {
				        html += "<td>사용</td>";
				    } else {
				        html += "<td>환불</td>";
				    }
				 html+="</tr>";
				 html+="</tbody>";
			});
			html+="</table>";

			$("#pointTableDiv").html(html);
			
			//페이지 번호를 출력하는 함수 호출
			//pageNumberDisplay(result.pager);
        },
        error: function(xhr) {
            alert(xhr.status) 
        }
    });

}

</script>
</body>
</html>