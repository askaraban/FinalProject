<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>마이 페이지</title>

<style type="text/css">
.pagination.active a {
	background: #242a30 !important;
	border-color: #242a30 !important;
	z-index: 2;
	color: #fff;
	cursor: default;
}

.pageNumDiv {
	text-align: center;
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
			<h2 class="fw-normal mb-4 mb-md-0">마이페이지</h2>

			<div class="col-md-7 col-lg-8" style="width: 100%; margin-top: 20px;">
				<div class="card">
					<div class="card-body p-6"
						style="display: flex; flex-direction: row; align-items: center;">
						<div class="col-md-5 col-lg-4">
							<!-- <div class="card card-profile"> -->
							<div>
								<!-- <div class="card-profile-img py-6" style="text-align: center;">  -->
								<div style="text-align: center;">
									<img class="lazyestload"
										data-src=<c:url value="/img/mypage/user.png"/>
										src=<c:url value="/img/mypage/user.png"/>
										alt="Image"
										style="width: 40%; height: 40%; border-color: gray;">
								</div>
							</div>
						</div>
						<div class="col-md-5 col-lg-4" style="margin: 10px;">
							<div class="custom-file" style="text-align: left;">
								<h2 class="fw-normal mb-4">${loginMember.memberFirstName} ${loginMember.memberLastName}</h2>
								<h4 class="fw-normal mb-4">(회원번호: ${loginMember.memberNum} )</h4>
								<h5 class="fw-normal mb-4" style="color: gray;">${loginMember.memberEmail}</h5>
								<a href="<c:url value = '/member/modifyMember'/>" class="btn btn-secondary btn mb-3">회원 정보 변경</a>
								<a href="<c:url value = '/member/removeMember'/>" class="btn btn-secondary btn mb-3" id = "withdraw">회원 탈퇴</a>
							</div>
						</div>
						<div class="col-md-5 col-lg-4">
							<div class="card-profile-img py-6" style="text-align: center;">
								<div style="margin: 10px;">
									<h3>나의 등급</h3>
									<!-- <a href="mgrade" class="btn btn-white btn-lg mb-3"> -->
									<a href="<c:url value="/mypage/mgrade"/>" class="btn btn-white btn-lg mb-3">
										<c:if test="${loginMember.memberPoint<4000}">
										<span>> BLUE</span>
										</c:if>
										<c:if test="${loginMember.memberPoint>=4000 && loginMember.memberPoint<9000}">
										<span>> GOLD</span>
										</c:if>
										<c:if test="${loginMember.memberPoint>=9000}">
										<span>> DIAMOND</span>
										</c:if>
									</a>
								</div>

								<div style="margin: 10px;">
									<h3>포인트</h3>
									<a href="point" class="btn btn-white btn-lg mb-3">
										> ${loginMember.memberPoint }P</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div>
				<ul class="nav nav-pills">
					<li class="nav-item" style="margin: 5px;">
						<a href="javascript:journeyTableDisplay(1, 1);" class="nav-link active">다가오는 여정</a>
					</li>
					<li class="nav-item" style="margin: 5px;">
						<a href="javascript:journeyTableDisplay(1, 2);" class="nav-link active">지난 여정</a>
				</ul>

				<div class="tab-content panel p-3 rounded">
					<div class="tab-pane fade active show" id="nav-pills-tab-1">
						<div class="table-responsive">
							<div class="panel panel-inverse" data-sortable-id="table-basic-4">
								<div class="panel-body">
									<div class="table-responsive" id="journeyTableDiv"></div>
									<div class="pageNumDiv" id="pageNumDiv">
									
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>		
	</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
function formatDate(dateString) {
    var date = new Date(dateString);
    var year = date.getFullYear();
    var month = ("0" + (date.getMonth() + 1)).slice(-2); // 월은 0부터 시작하므로 +1 필요
    var day = ("0" + date.getDate()).slice(-2);
    return year + "/" + month + "/" + day;
}

var page=1;
journeyTableDisplay(page, 1);

function journeyTableDisplay(pageNum, journey) {
	page=pageNum;
	$.ajax({
        url: '<c:url value="/mypage/journeyTable"/>',
        type: 'get',
        data: { "pageNum" : pageNum, "journey":journey},
        dataType: "json",
        success: function(result) {
        	if(result.list.length == 0 ) {//검색된 여정이 없는 경우
				var html="<table class='table' style='text-align: center;' id='journeyTable'>";
				html+="<thead>";
				html+="<tr>";
				html+="<th>예약번호</th>";
				html+="<th nowrap>여정</th>";
				html+="<th nowrap>노선</th>";
				html+="<th nowrap>일정</th>";
				html+="</tr>";
				html+="</thead>";
				html+="<tbody>";
				html+="<tr>";
				html+="<td colspan='4'>다가오는 여정이 없습니다.</td>";
				html+="</tr>";
				html+="</tbody>";
				html+="</table>"
				$("#journeyTableDiv").html(html);
				return;
			}	
        	
        	var html="<table class='table' style='text-align: center;' id='journeyTable'>";
			html+="<thead>";
			html+="<tr>";
			html+="<th>예약번호</th>";
			html+="<th nowrap>여정</th>";
			html+="<th nowrap>노선</th>";
			html+="<th nowrap>일정</th>";
			html+="</tr>";
			html+="</thead>";
			
			$(result.list).each(function() {
				html+="<tbody>";
				html+="<tr>";
				html+="<td>"+this.PAYMENT_ID+"</td>";
				html+="<td>"+this.SCHEDULE_FLIGHT+"</td>";
				html+="<td>"+this.ROUTE_DEPARTURE+" - "+this.ROUTE_DESTINATION+"</td>";
				html+="<td>"+formatDate(this.SCHEDULE_DEPARTURE_DATE)+" - "+formatDate(this.SCHEDULE_ARRIVAL_DATE)+"</td>";
				html+="</tr>";
				html+="</tbody>";
			});
			
			html+="</table>";
		
			html+="<div id='pageNumDiv' style='text-align:center;'>"
			if(result.pager.startPage > result.pager.blockSize) {
				html+="<a href='javascript:journeyTableDisplay("+result.pager.prevPage+","+ journey +");'>[이전]</a>";
			} else {
				html+="[이전]";
			}
			
			for(i = result.pager.startPage ; i <= result.pager.endPage ; i++) {
				if(result.pager.pageNum != i) {
					html+="<a href='javascript:journeyTableDisplay("+ i +","+journey+");'>["+i+"]</a>";
				} else {
					html+="["+i+"]";
				}
			}
			
			if(result.pager.endPage < result.pager.totalPage) {
				html+="<a href='javascript:journeyTableDisplay("+ result.pager.nextPage +","+journey+");'>[다음]</a>";
			} else {
				html+="[다음]";
			}
			html+="</div>"
			$("#journeyTableDiv").html(html); 
			
        },
        error: function(xhr) {
            alert("에러코드(여정 검색) ="+xhr.status) 
        }
    });
}

$('#withdraw').click(function(event) {
   
    event.preventDefault();
    
   
    var userResponse = confirm("정말로 회원 탈퇴를 하시겠습니까?");
    
    if (userResponse) {
       
        window.location.href = "/swiftair3/member/removeMember";
    } else {
        
    }
});


</script>
	
</body>
</html>