<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
  <body id="body" class="up-scroll">
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
      	<div class="form-group mb-6">
      		<div class="d-flex justify-content-between align-items-center flex-wrap mb-5">
      			<span class="font-weight-bold">Adults</span>
      				<div class="count-input">
      					<a class="incr-btn" data-action="decrease" href="#">–</a>
      						<input class="quantity" type="text" value="1">
                		<a class="incr-btn" data-action="increase" href="#">+</a>
              		</div>
            </div>
        	<div class="d-flex justify-content-between align-items-center flex-wrap mb-5">
	            <span class="font-weight-bold">Children</span>
	              	<div class="count-input">
	                	<a class="incr-btn" data-action="decrease" href="#">–</a>
	                		<input class="quantity" type="text" value="1">
	                	<a class="incr-btn" data-action="increase" href="#">+</a>
	              	</div>
            </div>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

<!-- MAP SECTION -->
<section class="banner" style="background-image: url('<c:url value="/img/background/banner-img1.jpg"/>');">
<div class="container">
    <div class="row text-center align-items-center justify-content-center" style="height:624px;">
      <div class="col-12">
        <!-- Banner Info -->
        <div class="banner-info">
          <h1 class="text-uppercase text-white mb-4">
            swfit air
          </h1>
          <p class="lead text-white">
            Redefining travel with speed, convenience, and modernity.
          </p>
        </div>
<!-- ====================================
———	LOCATION SEARCH ONE
===================================== -->
<div class="py-7 py-md-0 bg-light">
  <div class="container position-relative px-md-0">
    <div class="search-box">
      <form method="GET" action="listings-half-screen-map-list.html">
        <div class="select-default" style="padding: 10px;">
          <select class="select-location">
            <option>출발지</option>
            <option>서울/인천(ICN)</option>
            <option>샌프란시스코(SFO)</option>
            <option>로스앤젤레스(LAX)</option>
            <option>뉴욕/뉴어크 리버티(EWR)</option>
            <option>로스앤젤레스(LAX)</option>
            <option>방콕(BKK)</option>
            <option>도쿄/나리타(NRT)</option>
          </select>
        </div>
        <div class="select-default" style="padding: 10px;">
          <select class="select-location">
            <option>도착지</option>
            <option>서울/인천(ICN)</option>
            <option>샌프란시스코(SFO)</option>
            <option>로스앤젤레스(LAX)</option>
            <option>뉴욕/뉴어크 리버티(EWR)</option>
            <option>로스앤젤레스(LAX)</option>
            <option>방콕(BKK)</option>
            <option>도쿄/나리타(NRT)</option>
          </select>
        </div>
	    <div class="form-group mb-6" style="padding-top: 30px;">
	       <input type="text" class="form-control double-date">
	    </div>
        <!-- Button trigger modal -->
		<button type="button"  class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
		  성인 1
		</button>
        <button type="submit" class="btn btn-primary">
          Search
        </button>
      </form>
    </div>
  </div>
</div>
</div>
</div>
</div>
</section>
<!-- ====================================
———	BROWSER CATEGORI AREA
===================================== -->
<section class="pt-8 pb-4 pt-md-10 sec-pb-70 bg-light">
	<div class="container">

    <!-- Section Title -->
		<div style="display: flex; justify-content: space-between;">
			<div><h3 style="color: mediumaquamarine;">Event</h3></div>
			<div><span style="color: gray; font-size: 15px;">더보기</span></div>
		</div>
		<div class="row">
			<div class="col-sm-4 col-xs-12">
				<div class="card border-0 bg-transparent">
					<a href="blog-details.html">
						<img class="card-img-top rounded lazyestload" data-src="<c:url value="/img/blog/blog-article-1.jpg"/>" src="<c:url value="/img/blog/blog-article-1.jpg"/>" alt="Card image cap">
					</a>
         			 <div class="card-body p-0 pt-5">
						<div class="meta-post" style="display: flex; justify-content: space-between;">
							<date class="meta-date">Jan 22, 2021</date>
							<span class="badge text-bg-primary fs-6">진행 중</span>
						</div>
						<h3 class="card-title">
							<a href="blog-details.html"> Lorem ipsum dolor sit amet	</a>
						</h3>
						<p >Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed eiusmod tempor incididunt  labore et dolore magna aliqua.</p>
					</div>
				</div>
			</div>

			<div class="col-sm-4 col-xs-12">
	        	<div class="card border-0 bg-transparent">
				<a href="blog-details.html">
					<img class="card-img-top rounded lazyestload" data-src="<c:url value="/img/blog/blog-article-2.jpg"/>" src="<c:url value="/img/blog/blog-article-2.jpg"/>" alt="Card image cap">
				</a>
				<div class="card-body p-0 pt-5">
	            	<div class="meta-post" style="display: flex; justify-content: space-between;">
	              		<date class="meta-date">Jan 20, 2021</date>
	              		<span class="badge text-bg-primary fs-6">진행 중</span>
	            	</div>
					<h3 class="card-title">
						<a href="blog-details.html"> Ut Enim Ad Minim Veniam.</a>
					</h3>
           	 		<p>Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit</p>
				</div>
				</div>
			</div>
			<div class="col-sm-4 col-xs-12">
		        <div class="card border-0 bg-transparent">
					<a href="blog-details.html">
						<img class="card-img-top rounded lazyestload" data-src="<c:url value="/img/blog/blog-article-3.jpg"/>" src="<c:url value="/img/blog/blog-article-3.jpg"/>" alt="Card image cap">
					</a>
		         	<div class="card-body p-0 pt-5">
			            <div class="meta-post" style="display: flex; justify-content: space-between;">
			              <date class="meta-date">Jan 17, 2021</date>
			              <span class="badge text-bg-primary fs-6">진행 중</span>
			            </div>
						<h3 class="card-title">
							<a href="blog-details.html"> Velit Esse Cillum Dolore Eu Fugiat	</a>
						</h3>
		            	<p >Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- ====================================
———	LISTING
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<div class="panel-body" style="text-align: center; vertical-align: middle;">
			<div style="display: flex; justify-content: space-between;">
				<div><h3 style="color: mediumaquamarine;">Notice</h3></div>
				<div><span style="color: gray; font-size: 15px;">더보기</span></div>
			</div>
			<hr>
			<table class="table">
			    <tbody>
			        <tr>
			            <td style="text-align: left;">
							<h4>국제선 운임 안내 (2024년 4월)</h4>
				            <p style="font-size: 0.9375rem; color: grey;">누구나 누릴 수 있는 편안함, 에어프레미아에서 국제선 운임을 안내드립니다.</p>
				        </td>
			            <td>2024.03.19</td>
			        </tr>
			        <tr>
			            <td style="text-align: left;">
							<h4>2024년 4월 국제선 유류할증료 안내</h4>
				            <p style="font-size: 0.9375rem; color: grey;">에어프레미아에서 2024년 4월 국제선 유류할증료 안내드립니다.</p>
				        </td>
			            <td>2024.03.19</td>
			        </tr>
			        <tr>
			            <td style="text-align: left;">
							<h4>2024년 05월 20일 인천(ICN) ↔ 샌프란시스코(SFO) YP111/112편 스케줄 변경 안내</h4>
				            <p style="font-size: 0.9375rem; color: grey;">2024년 05월 20일 인천(ICN) ↔ 샌프란시스코(SFO) YP111/112편 스케줄 변경 안내드립니다.</p>
				        </td>
			            <td>2024.03.08</td>
			        </tr>
			        <tr>
			            <td style="text-align: left;">
							<h4>2024년 05월 18,20,25일 인천(ICN) ↔ 도쿄/나리타(NRT) YP731/732편 스케줄 변경 안내</h4>
				            <p style="font-size: 0.9375rem; color: grey;">2024년 05월 18,20,25일 인천(ICN) ↔ 도쿄/나리타(NRT) YP731/732편 스케줄 변경 안내드립니다.</p>
				        </td>
			            <td>2024.03.07</td>
			        </tr>
			    </tbody>
			</table>
		</div>
	</div>
</section>