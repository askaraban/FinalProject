<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<head>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
	<link href='<c:url value="/plugins_a/jquery-ui/themes/base/minified/jquery-ui.min.css"/>' rel='stylesheet'>
	<link href='<c:url value="/plugins_a/bootstrap/css/bootstrap.min.css"/>' rel='stylesheet'>
	<link href='<c:url value="/plugins_a/font-awesome/css/font-awesome.min.css"/>' rel='stylesheet'>
	<link href='<c:url value="/css_a/animate.min.css"/>' rel='stylesheet'>
	<link href='<c:url value="/css_a/style.min.css"/>' rel='stylesheet'>
	<link href='<c:url value="/css_a/style-responsive.min.css"/>' rel='stylesheet'>
	<link href='<c:url value="/css_a/theme/default.css"/>' rel='stylesheet' id="theme">
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src=<c:url value="/plugins_a/pace/pace.min.js"/>></script>
	<!-- ================== END BASE JS ================== -->
</head>

<style>
#search {
	margin-top: 10px;
	margin-bottom: 20px;
	text-align: center;
}


</style>

<body class="pace-top">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	
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
                <form action="<c:url value="/member/loginAction"/>" method="post"  class="margin-bottom-0">
                    <div class="form-group m-b-20">
                        <input type="text"  name = "memberId" id = "memberId" class="form-control input-lg" placeholder="Id" />
                    </div>
                    <div class="form-group m-b-20">
                        <input type="password"  name = "memberPswd" id = "memberPswd" class="form-control input-lg" placeholder="Password" />
                    </div>
                   
                    <div class="login-buttons">
                        <button type="submit" id = "login_btn" class="btn btn-success btn-block btn-lg">Log in</button>
                    </div>
                    <div class="m-b-20 m-t-20">
                    	<div class="row">
                    <div id="search">
						<a href="<c:url value = '/member/searchId'/>">아이디 찾기</a> |
						<a href="<c:url value = '/member/searchPasswd'/>">비밀번호 찾기</a>
					</div>	
					
					<div class="text-center">
						<div id="naverIdLogin"><a id="naverIdLogin_loginButton" href="#" role="button"><img src="https://static.nid.naver.com/oauth/big_g.PNG" width=320></a></div>
	                    		<%-- <a href="#"><img src='<c:url value="/img_a/sns_icon/google_rac.png"/>' style="width: 36px; margin-right: 10px;"></a>
	                    		<a href="#"><img src='<c:url value="/img_a/sns_icon/kakao_rac.png"/>' style="width: 36px; margin-right: 10px;"></a>
	                    		<a href="#"><img src='<c:url value="/img_a/sns_icon/naver_rac.png"/>' style="width: 36px; margin-right: 10px;"></a> --%>
                    </div>
            
                    	</div>
                    </div>
                    <div class="m-t-20"  style="color: black;" >
                        아직도 회원이 아니라면 <a href="<c:url value = '/member/join'/>">여기</a> 를 눌러서 회원가입하세요.
                    </div>
                </form>
            </div>
        </div>
        <!-- end login -->
	</div>
	<!-- end page container -->	
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src='<c:url value="/plugins_a/jquery/jquery-1.9.1.min.js"/>'></script>
	<script src='<c:url value="/plugins_a/jquery/jquery-migrate-1.1.0.min.js"/>'></script>
	<script src='<c:url value="/plugins_a/jquery-ui/ui/minified/jquery-ui.min.js"/>'></script>
	<script src='<c:url value="/plugins_a/bootstrap/js/bootstrap.min.js"/>'></script>

	<script src='<c:url value="/plugins_a/slimscroll/jquery.slimscroll.min.js"/>'></script>
	<script src='<c:url value="/plugins_a/jquery-cookie/jquery.cookie.js"/>'></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src='<c:url value="/js_a/login-v2.demo.min.js"/>'></script>
	<script src='<c:url value="/js_a/apps.min.js"/>'></script>
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
			App.init();
			LoginV2.init();
			
		});
	
		$("#login_btn").click(function() {
			if($("#memberId").val()=="") {
				alert("아이디를 입력하세요");
				$("#memberId").focus();
				return;
			}	
			
			if($("#memberPswd").val()=="") {
				alert("비밀번호를 입력해 주세요.");
				$("#memberPswd").focus();
				return;
			}	
			
			$("#loginForm").submit();
		});
		
		
	</script>
	
	<script src="https://code.jquery.com/jquery-1.12.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<!-- (2) LoginWithNaverId Javscript SDK -->
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js"></script>
	<!-- <script type="text/javascript" src="/pms/js/dvpms/naveridlogin_js_sdk_2.0.2.js"></script> -->

	<!-- (3) LoginWithNaverId Javscript 설정 정보 및 초기화 -->
	<script>
		window.name='opener';
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "8fLkAVTQU1u1IVb0YcMG",
				callbackUrl: "http://" + window.location.hostname + ((location.port==""||location.port==undefined)?"":":" + location.port) + "/swiftair/member/naverLogin",
				/* callbackUrl: "http://127.0.0.1:8080/pms/index.do", */
				isPopup: true,
				loginButton: {color: "green", type: 3, height: 60}
			}
		);
		/* (4) 네아로 로그인 정보를 초기화하기 위하여 init을 호출 */
		naverLogin.init();
		
		/* (4-1) 임의의 링크를 설정해줄 필요가 있는 경우 */
		$("#gnbLogin").attr("href", naverLogin.generateAuthorizeUrl());

		/* (5) 현재 로그인 상태를 확인 */
		window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					/* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
					setLoginStatus();
				}
			});
		});

		/* (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. */
		function setLoginStatus() {
			var age = naverLogin.user.getAge(); 
			var birthDay = naverLogin.user.getBirthday();
			var birthYear = naverLogin.user.getBirthyear();
			var email = naverLogin.user.getEmail();
			var gender = naverLogin.user.getGender();
			var mobile = naverLogin.user.getMobile();
			var name = naverLogin.user.getName();
			var profileImage = naverLogin.user.getProfileImage();
			var nickName = naverLogin.user.getNickName();
			var id = naverLogin.user.getId();
			
			console.log("age : " + age + "/ birthDay : " + birthDay + " / birthYear : " + birthYear);
			console.log("email : " + email + "/ gender : " + gender + " / mobile : " + mobile);
			console.log("name : " + name + "/ profileImage : " + profileImage + " / nickName : " + nickName + " / id : " + id);
			
			console.log(naverLogin);
			
   			var redirect = "http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/swiftair/member/naverLoginAction";
				redirect += "?age=" + age + "&birthDay=" + birthDay + "&birthYear=" + birthYear;
				redirect += "&email=" + email + "&gender=" + gender + "&mobile=" + mobile;
				redirect += "&name=" + name + "&nickName=" + nickName;
				redirect += "&id=" + id;
				
			location.replace(redirect); 
				
			var imageViewer = '';
			if (profileImage) {
				imageViewer += '<br><br><img src="' + profileImage + '" height=50 /> <p>';
			}
			$("#naverIdLogin_loginButton").html(imageViewer + nickName + id + '님 반갑습니다.</p>');
			$("#gnbLogin").html("Logout");
			$("#gnbLogin").attr("href", "#"); 
			
			
			/* (7) 로그아웃 버튼을 설정하고 동작을 정의합니다. */
			$("#gnbLogin").click(function (e) {
				e.preventDefault();
				naverLogin.logout();
				location.replace('/swiftair/index');
			});
		}
	</script>	
</body>
