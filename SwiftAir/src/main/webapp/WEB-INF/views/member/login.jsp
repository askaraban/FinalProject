<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
 .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
    
#search {
	margin-top: 10px;
	margin-bottom: 20px;
	text-align: center;
}


a:hover {
	color: black;
	text-decoration: underline;
}

.btn-primary {
    background-color: navy;
    border-color: navy;
}

label {
	display: -webkit-box;
}

#simple {

text-align: center;
}

</style>

<form  action=""
	method="post" id="loginForm" name="loginForm">
	<input type="hidden" name="url" value="">
	
 <div class="container">
   <div class="input-form-backgroud row" style="margin-left: 320px; width: 40% !important;">
      <div class="input-form col-md-12 mx-auto">

               <div class="form-group">
                     <label for="id">아이디</label>
                     <input type="text" class="form-control" name = "id" id="id" value="" >
               </div>
               
                   <div class="form-group">
                      <label for="passwd">비밀번호</label>
                      <input type="password" class="form-control" name = "passwd" id="passwd" >
              	   </div>
              	   
               <button type="button" id = "login_btn" class="btn btn-primary btn-block" >로그인</button>
            
		<div id="search">
			<a>아이디 찾기</a> |
			<a>비밀번호 찾기</a>
		</div>
		<p id = "simple">-간편 로그인-</p>
		<a><img src="naver.png" alt="naver" width="110" height = "50"></a>
		<a><img src="kakao.png" alt="kakao" width="130" height = "50"></a>
		<a><img src="google.png" alt="google" width="130" height = "50"></a>
		
            </div>
        </div>
    </div>
 </form>   

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

$("#login_btn").click(function() {
	if($("#id").val()=="") {
		alert("아이디를 입력하세요");
		$("#id").focus();
		return;
	}	
	
	if($("#passwd").val()=="") {
		alert("비밀번호를 입력해 주세요.");
		$("#passwd").focus();
		return;
	}	
	
	$("#loginForm").submit();
});
</script>