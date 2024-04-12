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

.d-flex {
    justify-content: center;
}


</style>

  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>faq - list</title>

  </head> 

  <body id="body" class="body-wrapper boxed-menu">
      <div class="main-wrapper">

<!-- ====================================
———	MY BOOKINGS
===================================== -->
<section class="pb-8 pt-5 bg-light height100vh">
  <div class="container">

    <!-- Breadcrumb -->
    <nav class="bg-transparent breadcrumb breadcrumb-2 px-0 mb-5" aria-label="breadcrumb">
      <h2 class="fw-normal mb-4 mb-md-0">FAQ 목록</h2>
    </nav>

    <!-- My Bookings -->
    <table id="my-booking" class="display nowrap table-data-default" style="width:100%">
      <thead style="text-align:center">
        <tr>
          <td style="background: white;">번호</td>
          <th>제목</th>
          <th>작성일</th>
          <th>편집</th>
        </tr>
      </thead>
      
      <tbody>
	  <c:forEach var="faq" items="${faqList}">
        <tr>
          <td class="text-capitalize" style="text-align:center">

          	${faq.faqId}

          </td>
        	
          <td class="text-capitalize" style="text-align:center">

				${faq.faqTitle}
            
          </td>
          
          <td class="text-capitalize" style="text-align:center">${faq.faqDate}</td>
          
          
          <td class="td-buttons-2">
            <div class="d-flex flex-column flex-lg-row">
              <a class="btn btn-outline-primary btn-sm me-lg-3 mb-2" href="<c:url value="/faq/modify"/>?faqId=${faq.faqId}">
                <i class="fa fa-edit"></i>
                수정
              </a>
              <a class="btn btn-outline-danger btn-sm" href="<c:url value="/faq/delete"/>?faqId=${faq.faqId}">
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
								<a href="<c:url value="/faq/list"/>?pageNum=${pager.prevPage}">[이전]</a>
							</c:when>
							<c:otherwise>
								[이전]
							</c:otherwise>
						</c:choose>
						
						<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
							<c:choose>
								<c:when test="${pager.pageNum != i }">
									<a href="<c:url value="/faq/list"/>?pageNum=${i}">[${i}]</a>
								</c:when>
								<c:otherwise>
									[${i}]
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pager.endPage != pager.totalPage }">
								<a href="<c:url value="/faq/list"/>?pageNum=${pager.nextPage}">[다음]</a>
							</c:when>
							<c:otherwise> 
								[다음]
							</c:otherwise>
						</c:choose>
					</div>
    
  </div>

</section>


    </div> <!-- element wrapper ends -->

	
    <script src='../assets/js/listty.js'></script>
  </body>
</html>

