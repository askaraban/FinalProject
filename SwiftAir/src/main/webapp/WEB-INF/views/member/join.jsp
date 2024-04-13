<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>




<form id = "join" action="<c:url value="/member/joinAction"/>" method="post">

<body id="body" class="up-scroll">

<section class="py-7 py-md-10">
  <div class="container">
      <div class="col-12">
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				
				<div class="col-sm-8">
		            <div class="form-group col-sm-12">
		            	<div class="input-group mb-2">
		            	
		            		<div class="input-group-text col-sm-2 text-center">아이디</div>
		            		<input type="text" class="form-control" name = "memberId" id = "memberId" >
		            	</div>
		            	<label id="idCheck"></label>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">비밀번호</div>
		            		<input type="password" class="form-control" name = "memberPswd" id = "memberPswd">
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">이름</div>
		            		<input type="text" class="form-control" name = "memberKorName" id = "memberKorName">
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">영어 성</div>
		            		<input type="text" class="form-control" name = "memberFirstName" id = "memberFirstName">
		            	</div>
		            </div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">영어 이름</div>
		            		<input type="text" class="form-control" name = "memberLastName" id = "memberLastName">
		            	</div>
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">이메일</div>
		            		<input type="text" class="form-control" name = "memberEmail" id = "memberEmail">
		            	</div>
		            	
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">핸드폰 번호</div>
		            		<input type="text" class="form-control" name = "memberPhone" id = "memberPhone">
		            	</div>
		            	
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">성별</div>
		            		 <input type="radio" name="memberGender" id = "memberGender" value="1">남
		  					<input type="radio" name="memberGender" id = "memberGender" value="2">여
		            	</div>
		            	
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">생년월일</div>
		            		<input type="text" class="form-control" name = "memberBirth" id = "memberBirth">
		            	</div>
		            	
		            	<div class="form-group" style="text-align: center;">
					        <button type="submit" class="btn btn-primary" >회원가입</button>
					    </div>
		           
		            </div>
				</div>
			</div>
 		</div>

      </div>
</section>

</body>
</form>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

<script type="text/javascript">

$(document).ready(function() {
	
	$("#memberId").on("focusout", function() {
	
		var memberId = $("#memberId").val();
		
    	$.ajax({
    		url : '<c:url value="/member/confirmId"/>',
    		data : {
    			memberId : memberId
    		},
    		type : 'POST',
    		dataType : 'json',
    		success : function(result) {
    			if (result == true) {
    				$("#idCheck").css("color", "black").text("사용 가능한 ID 입니다.");
    			} else{
    				$("#idCheck").css("color", "red").text("사용 불가능한 ID 입니다.");
    				$("#memberId").val('');
    			}
    		}
    	}); 
});


$(function() {
	  $('#memberBirth').daterangepicker({
	    showDropdowns: true,
	    singleDatePicker: true,
	    minYear: 1900,
	    maxYear: parseInt(moment().format('YYYY'),10),
	    locale: {
	      format: 'YYYY-MM-DD'
	    }
	  });
	});
	
	
    $('#join').submit(function(e) {
    	   var idRegex = /^[a-zA-Z]\w{5,19}$/g;
           var passwordRegex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
           
           
           var id = $('#memberId').val();
           var password = $('#memberPswd').val();
           var email = $('memberEmail').val();
    	 
        if ($('#memberId').val() === "") {
            alert("아이디를 입력하세요.");
            $('#memberId').focus();
            return false;
        }
        
     /*
        if (!idRegex.test(id)) {
            alert("아이디는 영문자로 시작하는 영문자와 숫자를 포함한 6~20자리로 입력해야 합니다.");
            $('#memberId').focus();
            return false;
        }
     */
        
        if ($('#memberPswd').val() === "") {
            alert("비밀번호를 입력하세요.");
            $('#memberPswd').focus();
            return false;
        }
        
        /*
        
        if (!passwordRegex.test(password)) {
            alert("비밀번호는 영문자, 숫자, 특수문자를 각각 하나 이상 포함한 6~20자리로 입력해야 합니다.");
            $('#memberPswd').focus();
            return false;
        }
        */
        
        if ($('#memberKorName').val() === "") {
            alert("이름을 입력하세요.");
            $('#memberKorName').focus();
            return false;
        }
        if ($('#memberEmail').val() === "") {
            alert("이메일을 입력하세요.");
            $('#memberEmail').focus();
            return false;
        }
        
        if ($('#memberPhone').val() === "") {
            alert("핸드폰 번호를 입력하세요.");
            $('#memberPhone').focus();
            return false;
        }
      
       
       
        return true;
    });
});
</script>






