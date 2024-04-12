<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NOTICE - add</title>

</head>

<body id="body" class="up-scroll">

<!-- ====================================
———	공지사항 등록
===================================== -->
<section class="py-7 py-md-10">
	<div class="container">
		<form action="<c:url value="/notice/add"/>" method="post">
		<h2 class="fw-normal mb-4 mb-md-5">NOTICE 등록</h2>
		<div class="col-12">

        
        <div class="border rounded px-6 py-5 mb-6">
			<div class="row">
				<div class="col-sm-4">
					<h5>NOTICE</h5>
				</div>
				<div class="col-sm-8">
					
          
					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">제목</div>
						<input type="text" class="form-control" name="noticeTitle" value="${notice.noticeTitle}">
					</div>

					<div class="mb-4">
						<div class="col-sm-2 mb-1 fw-bold">내용</div>
						<textarea class="form-control" rows="5" name="noticeContent">${notice.noticeContent}</textarea>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div style="float: right">
			<a href ="<c:url value="/notice/list"/>" type="button" class="btn btn-primary ms-1">목록</a>
			<a href ="<c:url value="/notice/list"/>" type="button" class="btn btn-primary ms-1">취소</a>
			<button type="submit" class="btn btn-primary ms-1" >등록</button>
		</div>
		</form>
	</div>
</section>


<!-- JAVASCRIPTS -->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>


<script>
    $(document).ready(function() {
        // 폼이 제출될 때의 이벤트 처리
        $("form").submit(function(event) {
            event.preventDefault(); // 폼 제출 막기
            
            // 제목과 내용 값 가져오기
            var title = $("input[name='noticeTitle']").val();
            var content = $("textarea[name='noticeContent']").val();
            
            // 제목 또는 내용이 비어있는 경우
            if (title.trim() === '' || content.trim() === '') {
                alert("제목과 내용을 모두 입력하세요.");
                if (title.trim() === '') {
                    $("input[name='noticeTitle']").focus();
                } else {
                    $("textarea[name='noticeContent']").focus();
                }
                return; // 함수 종료
            }
            
            // Ajax를 사용하여 등록 요청 보내기
            $.ajax({
                type: "POST",
                url: "<c:url value='/notice/add'/>",
                data: $(this).serialize(), // 폼 데이터 직렬화하여 전송
                success: function(data) {
                    alert("등록되었습니다."); // 등록 성공 알림
                    window.location.href = "<c:url value='/notice/list'/>"; // 페이지 이동
                },
                error: function(xhr, status, error) {
                    console.error(xhr.responseText);
                    alert("등록에 실패했습니다. 다시 시도해주세요."); // 등록 실패 알림
                }
            });
        });
    });
</script>

</body>
</html>