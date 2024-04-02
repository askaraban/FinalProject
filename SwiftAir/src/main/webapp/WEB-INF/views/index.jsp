<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<!DOCTYPE html>
<html lang="en">

  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Swift Air</title>

    <!-- PLUGINS CSS STYLE -->
    <link href='resources/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href='resources/assets/plugins/listtyicons/style.css' rel='stylesheet'>
    <link href='resources/assets/plugins/menuzord/css/menuzord.css' rel='stylesheet'>
    <link href='resources/assets/plugins/selectric/selectric.css' rel='stylesheet'>
    <link href='resources/assets/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>
    <link href='resources/assets/plugins/daterangepicker/daterangepicker.css' rel='stylesheet'>
    <link href='resources/assets/plugins/map/css/map.css' rel='stylesheet'>
    
    <!-- GOOGLE FONT --><!-- font-family: 'Mulish', sans-serif; --><!-- font-family: 'Poppins', sans-serif; -->
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;300;400;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link href="resources/assets/css/style.css" rel="stylesheet" id="option_style">

    <!-- <link rel="stylesheet" href="assets/css/default.css" id="option_color"> -->

    <!-- FAVICON -->
    <link href="resources/assets/img/favicon.png" rel="shortcut icon">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  </head>

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
    <!-- Preloader -->
    <div id="preloader" class="smooth-loader-wrapper">
      <div class="smooth-loader">
        <div class="loader1">
          <div class="loader-target">
            <div class="loader-target-main"></div>
            <div class="loader-target-inner"></div>
          </div>
        </div>
      </div>
    </div>

    <div class="main-wrapper">
      <!-- HEADER -->
      <header class="header">
        <nav class="nav-menuzord navbar-sticky">
          <div class="container clearfix">
            <div id="menuzord" class="menuzord menuzord-responsive">

              <a href="index.html" class="menuzord-brand">
                <svg class="logo-svg" version="1.1" xmlns="http://www.w3.org/2000/svg" width="140" height="44">
                  <path class="fill-primay" d="M0 44V0h139.813v44H0zM137.346 2.467H2.467v39.065h134.879V2.467z" />
                  <path class="fill-primay"
                    d="M120.927 22.389v11.095h-4.566V22.389a371.288 371.288 0 0 0-2.086-2.888 347.047 347.047 0 0 1-2.2-3.053 386.86 386.86 0 0 0-2.201-3.053c-.7-.959-1.395-1.922-2.086-2.888h5.617l5.255 7.287 5.222-7.287h5.649c.002 0-8.604 11.882-8.604 11.882zM98.034 33.484h-4.565V15.069h-6.372v-4.562h17.244v4.562h-6.306v18.415zm-21.908 0H71.56V15.069h-6.372v-4.562h17.244v4.562h-6.306v18.415zm-17.425-1.789c-.69.623-1.511 1.116-2.463 1.477-.953.361-1.987.542-3.104.542-1.007 0-1.982-.143-2.923-.427a10.814 10.814 0 0 1-2.661-1.214h.033a9.928 9.928 0 0 1-1.577-1.215 18.73 18.73 0 0 1-.953-.952l3.416-3.151c.153.197.399.432.739.706.339.274.728.537 1.166.788.44.253.902.467 1.38.64.481.175.941.262 1.379.262.372 0 .744-.044 1.117-.131.359-.082.703-.22 1.018-.41.305-.185.564-.437.755-.739.197-.306.296-.689.296-1.149 0-.175-.06-.366-.181-.574-.12-.208-.329-.432-.624-.673-.296-.241-.706-.498-1.232-.771a20.567 20.567 0 0 0-1.971-.87 25.42 25.42 0 0 1-2.562-1.132 8.896 8.896 0 0 1-2.053-1.428 5.903 5.903 0 0 1-1.347-1.871c-.317-.7-.476-1.51-.476-2.429 0-.94.175-1.822.526-2.642a6.21 6.21 0 0 1 1.494-2.133c.646-.602 1.423-1.072 2.332-1.412.908-.339 1.911-.509 3.006-.509.591 0 1.22.077 1.889.23.668.153 1.319.35 1.954.591a12.95 12.95 0 0 1 1.79.837c.558.317 1.023.64 1.396.968l-2.825 3.545a15.71 15.71 0 0 0-1.281-.788 10.316 10.316 0 0 0-1.281-.558 4.311 4.311 0 0 0-1.478-.263c-.919 0-1.637.181-2.151.542-.515.361-.772.881-.772 1.559 0 .307.093.586.279.837.186.252.438.482.756.689.348.225.717.417 1.1.574.416.176.854.34 1.314.492 1.314.504 2.42 1.013 3.318 1.526.898.514 1.62 1.062 2.168 1.642s.936 1.204 1.166 1.871c.23.668.345 1.395.345 2.183 0 .963-.197 1.871-.591 2.724a6.803 6.803 0 0 1-1.626 2.216zM34.839 10.507h4.532v22.977h-4.532V10.507zm-20.036 0h4.566v18.415h9.263v4.563H14.803V10.507z" />
                </svg>
              </a>
              <div class="float-right btn-wrapper">
                <a class="btn btn-outline-primary" href="add-listings.html">+ <span>Add listing</span></a>
              </div>
              <ul class="menuzord-menu menuzord-right">
                <li class="active">
                  <a href="javascript:0">예매</a>
                  <ul class="dropdown">
                    <li><a href="index.html">항공권 예매</a></li>
                    <li><a href="index-2.html">포인트 예매</a></li>
                    <li><a href="index-3.html">이벤트</a></li>
                  </ul>
                </li>
                <li class="">
                  <a href="javascript:0">조회</a>
                  <ul class="dropdown">
                    <li><a href="res_search.html">예약 조회</a></li>
                    <li><a href="index-2.html">출/도착 조회</a></li>
                    <li><a href="index-3.html">운항 스케쥴</a></li>
                  </ul>
                </li>
                <li class="">
                  <a href="javascript:0">스위트프 멤버스</a>
                  <ul class="dropdown">
                    <li><a href="index.html">포인트 적립</a></li>
                    <li><a href="index-2.html">포인트 사용</a></li>
                  </ul>
                </li>
                <li class="">
                  <a href="javascript:0">기내</a>
                  <ul class="dropdown">
                    <li><a href="index.html">클래스별 서비스</a></li>
                    <li><a href="index-2.html">기내 서비스</a></li>
                    <li><a href="index-2.html">기내 엔터테인먼트</a></li>
                    <li><a href="index-2.html">항공기 소개</a></li>
                  </ul>
                </li>
                <li class="">
                  <a href="javascript:0">서비스 안내</a>
                  <ul class="dropdown">
                    <li><a href="index.html">공지사항</a></li>
                    <li><a href="index-2.html">자주 묻는 질문</a></li>
                    <li><a href="index-2.html">출입국 규정 정보</a></li>
                  </ul>
                </li>
                <li class="">
                  <a href="javascript:0">Pages</a>
                  <ul class="dropdown">
                    <li><a href="contact-us.html">Contact Us</a></li>
                    <li><a href="terms-of-services.html">Terms and Conditions</a></li>
                    <li><a href="pricing-table.html">Pricing Table</a></li>
                    <li><a href="how-it-works.html">How It Works</a></li>
                    <li><a href="user-profile.html">User Profile</a></li>
                    <li><a href="comming-soon.html">Coming Soon</a></li>
                    <li><a href="404.html">404 Page</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </header>


<!-- MAP SECTION -->
<section class="banner" style="background-image: url('resources/assets/img/background/banner-img1.jpg');">
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
						<img class="card-img-top rounded lazyestload" data-src="resources/assets/img/blog/blog-article-1.jpg" src="resources/assets/img/blog/blog-article-1.jpg" alt="Card image cap">
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
					<img class="card-img-top rounded lazyestload" data-src="resources/assets/img/blog/blog-article-2.jpg" src="resources/assets/img/blog/blog-article-2.jpg" alt="Card image cap">
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
						<img class="card-img-top rounded lazyestload" data-src="resources/assets/img/blog/blog-article-3.jpg" src="resources/assets/img/blog/blog-article-3.jpg" alt="Card image cap">
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
</div> <!-- element wrapper ends -->

    <!-- footer -->
    <footer class="pt-7 pt-md-10 bg-white">
      <div class="container">
        <div class="row">
          <div class="col-sm-7 col-xs-12">
            <a class="d-inline-block mb-6" href="index.html">
              <svg class="logo-svg" version="1.1" xmlns="http://www.w3.org/2000/svg" width="140" height="44">
                <path class="fill-primay" d="M0 44V0h139.813v44H0zM137.346 2.467H2.467v39.065h134.879V2.467z" />
                <path class="fill-primay"
                  d="M120.927 22.389v11.095h-4.566V22.389a371.288 371.288 0 0 0-2.086-2.888 347.047 347.047 0 0 1-2.2-3.053 386.86 386.86 0 0 0-2.201-3.053c-.7-.959-1.395-1.922-2.086-2.888h5.617l5.255 7.287 5.222-7.287h5.649c.002 0-8.604 11.882-8.604 11.882zM98.034 33.484h-4.565V15.069h-6.372v-4.562h17.244v4.562h-6.306v18.415zm-21.908 0H71.56V15.069h-6.372v-4.562h17.244v4.562h-6.306v18.415zm-17.425-1.789c-.69.623-1.511 1.116-2.463 1.477-.953.361-1.987.542-3.104.542-1.007 0-1.982-.143-2.923-.427a10.814 10.814 0 0 1-2.661-1.214h.033a9.928 9.928 0 0 1-1.577-1.215 18.73 18.73 0 0 1-.953-.952l3.416-3.151c.153.197.399.432.739.706.339.274.728.537 1.166.788.44.253.902.467 1.38.64.481.175.941.262 1.379.262.372 0 .744-.044 1.117-.131.359-.082.703-.22 1.018-.41.305-.185.564-.437.755-.739.197-.306.296-.689.296-1.149 0-.175-.06-.366-.181-.574-.12-.208-.329-.432-.624-.673-.296-.241-.706-.498-1.232-.771a20.567 20.567 0 0 0-1.971-.87 25.42 25.42 0 0 1-2.562-1.132 8.896 8.896 0 0 1-2.053-1.428 5.903 5.903 0 0 1-1.347-1.871c-.317-.7-.476-1.51-.476-2.429 0-.94.175-1.822.526-2.642a6.21 6.21 0 0 1 1.494-2.133c.646-.602 1.423-1.072 2.332-1.412.908-.339 1.911-.509 3.006-.509.591 0 1.22.077 1.889.23.668.153 1.319.35 1.954.591a12.95 12.95 0 0 1 1.79.837c.558.317 1.023.64 1.396.968l-2.825 3.545a15.71 15.71 0 0 0-1.281-.788 10.316 10.316 0 0 0-1.281-.558 4.311 4.311 0 0 0-1.478-.263c-.919 0-1.637.181-2.151.542-.515.361-.772.881-.772 1.559 0 .307.093.586.279.837.186.252.438.482.756.689.348.225.717.417 1.1.574.416.176.854.34 1.314.492 1.314.504 2.42 1.013 3.318 1.526.898.514 1.62 1.062 2.168 1.642s.936 1.204 1.166 1.871c.23.668.345 1.395.345 2.183 0 .963-.197 1.871-.591 2.724a6.803 6.803 0 0 1-1.626 2.216zM34.839 10.507h4.532v22.977h-4.532V10.507zm-20.036 0h4.566v18.415h9.263v4.563H14.803V10.507z" />
              </svg>
            </a>
            <p class="text-muted pt-1 pb-3">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
              labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
              ea commodo consequat. Duis aute irure dolor</p>
            <ul class="list-unstyled text-muted">
              <li class="mb-3">
                <i class="fas fa-phone-alt me-3" aria-hidden="true"></i>
                <a class="text-muted" href="tel:+088-657-524-332">+88 657 524 332</a>
              </li>
              <li class="mb-3">
                <i class="fas fa-envelope me-3" aria-hidden="true"></i>
                <a class="text-muted" href="mailto:info@listy.com">info@listy.com</a>
              </li>
            </ul>
          </div>

          <div class="col-sm-3 col-xs-12">
            <div class="mb-4 mt-4 mt-md-0">
              <h2 class="h4">Links</h2>
            </div>
            <ul class="list-unstyled list-gray">
              <li class="mb-3">
                <a href="index.html">Home</a>
              </li>
              <li class="mb-3">
                <a href="sign-up.html">Create Account</a>
              </li>
              <li class="mb-3">
                <a href="login.html">Login</a>
              </li>
              <li class="mb-3">
                <a href="add-listings.html">Add Listing</a>
              </li>
              <li class="mb-3">
                <a href="edit-listings.html">Edit Listing</a>
              </li>
            </ul>
          </div>

          <div class="col-sm-2 col-xs-12">
            <div class="mb-4 mt-4 mt-md-0">
              <h2 class="h4">Company</h2>
            </div>
            <ul class="list-unstyled list-gray">
              <li class="mb-3">
                <a href="contact-us.html">Contact Us</a>
              </li>
              <li class="mb-3">
                <a href="terms-of-services.html">Terms and Conditions</a>
              </li>
              <li class="mb-3">
                <a href="how-it-works.html">How It Works</a>
              </li>
              <li class="mb-3">
                <a href="payment-process.html">Payment</a>
              </li>
              <li class="mb-3">
                <a href="pricing-table.html">Pricing</a>
              </li>
            </ul>
          </div>
        </div>

        <hr>

        <div class="row pb-md-6">

          <div class="col-sm-7 col-xs-12 align-self-center order-3 order-md-0">
            <p class="copy-right mb-0 pb-4 pb-md-0 text-center text-md-start">
              Copyright &copy; <span id="copy-year"></span>. All Rights Reserved by
              <a href="http://www.iamabdus.com/" target="_blank"> Abdus</a>
            </p>
          </div>

          <div class="col-sm-5 col-xs-12 d-flex align-items-center">
            <div class="ms-md-auto mx-auto mx-md-0 mt-3 mb-5 my-md-0">
              <a class="icon-sm icon-default icon-border hover-bg-primary hover-border-primary rounded-circle ms-0" href="#facebook">
                <i class="fab fa-facebook-f" aria-hidden="true"></i>
              </a>
              <a class="icon-sm icon-default icon-border hover-bg-primary hover-border-primary rounded-circle ms-2" href="#twitter">
                <i class="fab fa-twitter" aria-hidden="true"></i>
              </a>
              <a class="icon-sm icon-default icon-border hover-bg-primary hover-border-primary rounded-circle ms-2" href="#pinterest">
                <i class="fab fa-pinterest-p" aria-hidden="true"></i>
              </a>
              <a class="icon-sm icon-default icon-border hover-bg-primary hover-border-primary rounded-circle ms-2" href="#linkedin">
                <i class="fab fa-linkedin-in" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>

      </div>
    </footer>

    <!-- JAVASCRIPTS -->
    <script src='resources/assets/plugins/jquery/jquery-3.4.1.min.js'></script>
    <script src='resources/assets/plugins/bootstrap/js/bootstrap.bundle.js'></script>
    <script src='resources/assets/plugins/menuzord/js/menuzord.js'></script>

    <script src='resources/assets/plugins/selectric/jquery.selectric.min.js'></script>
    <script src='resources/assets/plugins/dzsparallaxer/dzsparallaxer.js'></script>
    
    <script src='resources/assets/plugins/smoothscroll/SmoothScroll.js'></script>
    <script src='resources/assets/plugins/lazyestload/lazyestload.js'></script>
    
    <script src='resources/assets/plugins/map/js/markerclusterer.js'></script>
    <script src='resources/assets/plugins/map/js/rich-marker.js'></script>
    <script src='resources/assets/plugins/map/js/infobox_packed.js'></script>
    
    <script src='resources/assets/plugins/velocity/velocity.min.js'></script>
    <script src='resources/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src='resources/assets/plugins/daterangepicker/moment.min.js'></script>
    <script src='resources/assets/plugins/daterangepicker/daterangepicker.js'></script>
    <script src='resources/assets/plugins/daterangepicker/package.js'></script>
    <script src='resources/assets/plugins/owl-carousel/owl.carousel.min.js'></script>
    <script src='resources/assets/plugins/rateyo/jquery.rateyo.min.js'></script>
    
    <script>
      var d = new Date();
      var year = d.getFullYear();
      document.getElementById("copy-year").innerHTML = year;
    </script>
    <script type="text/javascript">
	    const myModal = document.getElementById('myModal')
	    const myInput = document.getElementById('myInput')
	
	    myModal.addEventListener('shown.bs.modal', () => {
	      myInput.focus()
	    })
    </script>
    <script src='resources/assets/js/listty.js'></script>
  </body>
</html>

