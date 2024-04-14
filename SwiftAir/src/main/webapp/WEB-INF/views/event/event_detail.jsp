<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>    
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<body id="body" class="up-scroll">
<!-- ====================================
———	LISTING SINGLE HEADING
===================================== -->
<section class="py-7 pt-md-9 pb-md-8">
    <div class="container">
        <div class="col-lg-12">
        <div class="mb-2 mb-lg-0">
            <span class="badge text-bg-primary fs-6 mb-2" style="line-height: 1.2">${eventdetail.eventStatus == 0 ? '진행중' : '종료됨'}</span>
            <h2 class="fw-bolder lh-base">
         		${eventdetail.eventTitle}
            </h2>
            <span class="meta-date" style="font-size: 1.025rem;">
            	<fmt:parseDate var="startDate" value="${eventdetail.eventStart}" pattern="yyyy-MM-dd HH:mm:ss" />
                <fmt:parseDate var="endDate" value="${eventdetail.eventEnd}" pattern="yyyy-MM-dd HH:mm:ss" />
                <fmt:formatDate pattern='yyyy-MM-dd' value='${startDate}' /> ~ 
                <fmt:formatDate pattern='yyyy-MM-dd' value='${endDate}' />
            </span>
            <hr>
        </div>
        </div>
    </div>
</section>

<!-- ====================================
———	MAIN CONTENT
===================================== -->
<section class="pt-4 pb-4 pb-md-8">
    <div class="container">
        <div class="row">
            <div class="col-md-5 col-lg-4">
            <div class="card border-0 bg-transparent">
                <img class="card-img rounded-5 mt-sm-5" src="<c:url value='/img/event/${fn:split(eventdetail.eventImg2, \"_\")[1]}'/>">
            </div>
        </div>
      <!--======= Sidebar =======-->
        <div class="col-md-7 col-lg-8">
            <div class="px-6 py-5 mb-5">
                <h2 class="fw-bolder mb-6 ms-3">이벤트 안내</h2>
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="fw-bolder lh-base" style="width: 15%;">운영기간</td>
                                <td class="px-6">
                            		<fmt:parseDate var="startDate" value="${eventdetail.eventStart}" pattern="yyyy-MM-dd HH:mm:ss" />
					               	<fmt:parseDate var="endDate" value="${eventdetail.eventEnd}" pattern="yyyy-MM-dd HH:mm:ss" />
					               	<fmt:formatDate pattern='yyyy-MM-dd' value='${startDate}' /> ~ 
					               	<fmt:formatDate pattern='yyyy-MM-dd' value='${endDate}' />
                                </td>
                            </tr>
                            <tr>
                                <td class="fw-bolder lh-base">행사내용</td>
                                <td class="px-6">
                                ${eventdetail.eventContent}
                                </td>
                            </tr>
                            <tr>
                                <td class="fw-bolder lh-base">유의사항</td>
                                <td class="px-6">
                                ${eventdetail.eventNotice}
                                </td>
                            </tr>
                        </tbody>
                    </table>
            </div>
        </div>
        </div>
       <div class="row justify-content-center">
           <div class="col-sm-8 col-lg-8 ms-md-6"></div>
           <div class="col-sm-4 col-lg-3">
               <a href ="<c:url value="/event/main"/>" class="btn btn-primary w-100">목록으로</a>
           </div>
       </div>
    </div>
</section>

</body>
