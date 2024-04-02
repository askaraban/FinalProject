<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Color Admin | Login Page</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href="assets_admin/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet" />
	<link href="assets_admin/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets_admin/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="assets_admin/css/animate.min.css" rel="stylesheet" />
	<link href="assets_admin/css/style.min.css" rel="stylesheet" />
	<link href="assets_admin/css/style-responsive.min.css" rel="stylesheet" />
	<link href="assets_admin/css/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets_admin/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<div class="login-cover">
	    <div class="login-cover-image"><img src="assets_admin/img/login-bg/bg-1.jpg" data-id="login-cover-image" alt="" /></div>
	    <div class="login-cover-bg"></div>
	</div>
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
	    <!-- begin login -->
        <div class="login login-v2" data-pageload-addclass="animated fadeIn">
            <!-- begin brand -->
            <div class="login-header">
                <div class="brand">
                    <span class="logo"></span> Swift Air
                    <small>Redefining travel with speed, convenience, and modernity.</small>
                </div>
                <!-- 
                <div class="icon">
                    <i class="fa fa-plane"></i>
                </div>
                 -->
            </div>
            <!-- end brand -->
            <div class="login-content">
                <form action="index.html" method="POST" class="margin-bottom-0">
                    <div class="form-group m-b-20">
                        <input type="text" class="form-control input-lg" placeholder="Id" />
                    </div>
                    <div class="form-group m-b-20">
                        <input type="text" class="form-control input-lg" placeholder="Password" />
                    </div>
                    <div class="checkbox m-b-20">
                        <label>
                            <input type="checkbox" /> 로그인 유?지
                        </label>
                    </div>
                    <div class="login-buttons">
                        <button type="submit" class="btn btn-success btn-block btn-lg">Log in</button>
                    </div>
                    <div class="m-b-20 m-t-20">
                    	<div class="row">
                    		<div class="text-center">
	                    		<a href="#"><img src="assets_admin/img/sns_icon/google_rac.png" style="width: 36px; margin-right: 10px;"></a>
	                    		<a href="#"><img src="assets_admin/img/sns_icon/kakao_rac.png" style="width: 36px; margin-right: 10px;"></a>
	                    		<a href="#"><img src="assets_admin/img/sns_icon/naver_rac.png" style="width: 36px; margin-right: 10px;"></a>
                    		</div>
                    	</div>
                    </div>
                    <div class="m-t-20">
                        아직도 회원이 아니라면 <a href="#">여기</a> 를 눌러서 회원가입하셈.
                    </div>
                </form>
            </div>
        </div>
        <!-- end login -->
        
        <ul class="login-bg-list">
            <li class="active"><a href="#" data-click="change-bg"><img src="assets_admin/img/login-bg/bg-1.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets_admin/img/login-bg/bg-2.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets_admin/img/login-bg/bg-3.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets_admin/img/login-bg/bg-4.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets_admin/img/login-bg/bg-5.jpg" alt="" /></a></li>
            <li><a href="#" data-click="change-bg"><img src="assets_admin/img/login-bg/bg-6.jpg" alt="" /></a></li>
        </ul>
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets_admin/plugins/jquery/jquery-1.9.1.min.js"></script>
	<script src="assets_admin/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
	<script src="assets_admin/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
	<script src="assets_admin/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
		<script src="assets/crossbrowserjs/html5shiv.js"></script>
		<script src="assets/crossbrowserjs/respond.min.js"></script>
		<script src="assets/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="assets_admin/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets_admin/plugins/jquery-cookie/jquery.cookie.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="assets_admin/js/login-v2.demo.min.js"></script>
	<script src="assets_admin/js/apps.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			LoginV2.init();
		});
	</script>
</body>
</html>
