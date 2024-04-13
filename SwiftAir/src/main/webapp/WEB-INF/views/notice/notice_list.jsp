<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="en">
<style>
.table-data-default tbody td:first-child {
    border-left: 1px solid #e5e5e5;
    padding-left: 0px;
}
</style>
  <head>
 
    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NOTICE - list</title>

  </head>

  <body id="body" class="body-wrapper boxed-menu">
      <div class="main-wrapper">

<!-- ==================================================== -->
<section class="pb-8 pt-5 bg-light height100vh">
  <div class="container">

    <!-- Breadcrumb -->
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <h2 class="fw-normal mb-4 mb-md-0">공지사항 목록</h2>
    </nav>

    <!-- My Bookings -->
    <table id="my-booking" class="display nowrap table-data-default" style="width:100%">
      <thead style="text-align:center">
        <tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성일</td>
			<td>편집</td>
        </tr>
      </thead>
      <tbody style="text-align:center">
		<c:forEach var="notice" items="${noticeList}">
        <tr>
          <td class="text-capitalize">${notice.noticeId}</td>
          <td class="text-capitalize">${notice.noticeTitle}</td>
          <td class="text-capitalize">${notice.noticeDate}</td>
          <td class="td-buttons-2">
            <div class="d-flex justify-content-center flex-column flex-lg-row">
	              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="<c:url value="/notice/modify"/>?noticeId=${notice.noticeId}">
	                <i class="fa fa-edit"></i>
	                수정</a>
	             
	              <a class="btn btn-outline-danger btn-sm" href="<c:url value="/notice/delete"/>?noticeId=${notice.noticeId}">
	                <i class="fa fa-times" aria-hidden="true"></i>
	                삭제
	              </a>
	         </div>
          </td>
        </tr>
	  </c:forEach>
      </tbody>
    </table>
    
    <div style="text-align: center;">
						<%-- 페이지 번호 출력 --%>
						<c:choose>
							<c:when test="${pager.startPage > pager.blockSize }">
								<a href="<c:url value="/notice/list"/>?pageNum=${pager.prevPage}">[이전]</a>
							</c:when>
							<c:otherwise>
								[이전]
							</c:otherwise>
						</c:choose>
						
						<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
							<c:choose>
								<c:when test="${pager.pageNum != i }">
									<a href="<c:url value="/notice/list"/>?pageNum=${i}">[${i}]</a>
								</c:when>
								<c:otherwise>
									[${i}]
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pager.endPage != pager.totalPage }">
								<a href="<c:url value="/notice/list"/>?pageNum=${pager.nextPage}">[다음]</a>
							</c:when>
							<c:otherwise> 
								[다음]
							</c:otherwise>
						</c:choose>
					</div>
    
  </div>
  
</section>


    </div> <!-- element wrapper ends -->

  </body>
</html>

