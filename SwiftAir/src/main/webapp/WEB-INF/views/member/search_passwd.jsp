<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>




<form action="<c:url value="/member/searchPasswdAction"/>" method="post">


<body id="body" class="up-scroll">

<section class="py-7 py-md-10">
  <div class="container">
      <div class="col-12">
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				
				<div class="col-sm-8">
		            <div class="form-group col-sm-12">
		            	<div class="input-group mb-2">
		            	
		            	
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">아이디</div>
		            		<input type="text" class="form-control" name = "memberId" id = "memberId">
		            	</div>
		            	
		            	<div class="input-group mb-2">
		            		<div class="input-group-text col-sm-2 text-center">이메일</div>
		            		<input type="text" class="form-control" name = "memberEmail" id = "memberEmail">
		            	</div>
		            	
		            	<div class="form-group" style="text-align: center;">
					        <button type="submit" class="btn btn-primary" >비밀번호 찾기</button>
					    </div>
		            	
		            </div>
				</div>
			</div>
 		</div>

      </div>
</section>

</body>
</form>




