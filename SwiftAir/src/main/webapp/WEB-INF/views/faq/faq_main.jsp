<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<style>
.paging ul {
    display: flex;
    justify-content: center;
}
ol, ul, li {
    list-style: none;
}
html, body, header, nav, section, article, aside, footer, table, th, td, div, dl, dt, dd, ol, ul, li, a, button, input, img, select, textarea, fieldset, form, label, legend, h1, h2, h3, h4, h5, h6, p, span, i, b, strong, em, sub, figcaption, figure {
    margin: 0;
    padding: 0;
    font-family: "NotoSans", "Malgun Gothic", "dotum", "verdana", sans-serif;
    font-style: normal;
    text-transform: none;
    vertical-align: baseline;
    border: 0;
}
* {
    box-sizing: border-box;
}
ul {
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    unicode-bidi: isolate;
}

.tabBtn {
    display: flex;
}

.rud .tabBtn .btn {
    margin: 5px;
    padding: 0 0.75rem;
    font-size: 0.875rem;
    text-align: center;
    font-weight: 500;
    border-radius: 3.75rem;
    cursor: pointer;
}

.rud .tabBtn .btn.on {
    color: #fff;
    background: #0c2340;
}

.qusList {
    padding: 1.875rem 0;
    border-bottom: 0.0625rem solid #ccc;
}
.qus {
    margin-top: 3.75rem;
    padding: 0.875rem 0;
    border-top: 0.0625rem solid #222;
    border-bottom: 0.0625rem solid #ccc;
}

.qusList .qst {
    width: 100%;
    padding-left: 3.75rem;
    padding-bottom: 1.875rem;
    position: relative;
    text-align: left;
}

.qusList .asr {
    /* padding-top: 1.875rem; */
    width: 100%;
    padding-left: 3.75rem;
    position: relative;
    text-align: left;
}

.qusList .qst::before{
    position: absolute;
    top: 0;
    left: 1.25rem;
    font-family: "Premia", "NotoSanas", "sans-serif";
    font-weight: 700;
    white-space: pre-wrap;
    content: "Q";
    color: gray;
}

.qusList .qst .tglFtb {
    font-size: 1.25rem;
    font-weight: 700;
}




.qusList .asr::before{
    content: "A";
    color: orange;
    position: absolute;
    top: 0;
    left: 1.25rem;
    font-family: "Premia", "NotoSanas", "sans-serif";
    font-weight: 700;
    /* font-size: 2.5rem; */
    white-space: pre-wrap;
}
}


</style>
  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>공지사항</title>

    <!-- PLUGINS CSS STYLE -->
    <link href='assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href='assets/plugins/listtyicons/style.css' rel='stylesheet'>
    <link href='assets/plugins/menuzord/css/menuzord.css' rel='stylesheet'>
    <link href='assets/plugins/selectric/selectric.css' rel='stylesheet'>
    <link href='assets/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>
    <link href='assets/plugins/daterangepicker/daterangepicker.css' rel='stylesheet'>
    <link href='assets/plugins/map/css/map.css' rel='stylesheet'>
    
    <!-- GOOGLE FONT --><!-- font-family: 'Mulish', sans-serif; --><!-- font-family: 'Poppins', sans-serif; -->
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@200;300;400;600;700;800;900&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <!-- CUSTOM CSS -->
    <link href="assets/css/style.css" rel="stylesheet" id="option_style">

    <!-- <link rel="stylesheet" href="assets/css/default.css" id="option_color"> -->

    <!-- FAVICON -->
    <link href="assets/img/favicon.png" rel="shortcut icon">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  </head>


<body id="body" class="up-scroll" >
<section class="py-7 py-md-10">
	<div class="container">
		<div class="layout" style="padding: 3.75rem 2.5rem 12.5rem;">
		 
         <div class="comTitle">
                <div class="flex">
                    <h1 class="subTit">
                      자주 묻는 질문
                    </h1>
                </div>
         </div>
            
            <div class="tabMenu rud">
              <div class="tabBtn" style="margin-top: 50px;" id="faqList">
	             <input type="hidden" id="category" value="">
				 <button class="btn on" onclick="fn_changeCategory(this.value);" value="0">전체</button>
	             <button class="btn on" onclick="fn_changeCategory(this.value);" value="1">예약</button>
	             <button class="btn on" onclick="fn_changeCategory(this.value);" value="2">결제</button>
	             <button class="btn on" onclick="fn_changeCategory(this.value);" value="3">변경취소</button>
	             <button class="btn on" onclick="fn_changeCategory(this.value);" value="4">공항</button>

              </div>
            </div>
            
           <div class="qus">
                
                <span>전체&nbsp;<strong id="totalItems">${faqCount}</strong>건</span>
           </div>
            
           <c:forEach var="faq" items="${faqList}"> 
           <div class="tabCont" id="FaqList">
					<div class="mainSecNotice qust">
						<div class="qusWrap tgLWrap">
							<!-- 데이터 표출하는 곳 -->
							<div class="qusList tgList">
								<div class="qst tgBtn">
									
									<p class="tglFtb">${faq.faqTitle}</p>
								</div>
								<div class="asr tgCont" style="">
									<p>${faq.faqContent }</p>
								</div>
							</div>
							
							
						</div>
					</div>
					<input name="pageIndex" id="pageIndex" type="hidden" value="1">
           </div>
           </c:forEach>
            
  	    	<div style="text-align: center;">
						<%-- 페이지 번호 출력 --%>
						<c:choose>
							<c:when test="${pager.startPage > pager.blockSize }">
								<a href="<c:url value="/faq/main"/>?pageNum=${pager.prevPage}">[이전]</a>
							</c:when>
							<c:otherwise>
								[이전]
							</c:otherwise>
						</c:choose>
						
						<c:forEach var="i" begin="${pager.startPage }" end="${pager.endPage }" step="1">
							<c:choose>
								<c:when test="${pager.pageNum != i }">
									<a href="<c:url value="/faq/main"/>?pageNum=${i}">[${i}]</a>
								</c:when>
								<c:otherwise>
									[${i}]
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${pager.endPage != pager.totalPage }">
								<a href="<c:url value="/faq/main"/>?pageNum=${pager.nextPage}">[다음]</a>
							</c:when>
							<c:otherwise> 
								[다음]
							</c:otherwise>
						</c:choose>
					</div>
					
	    </div>
	</div>
</section>


    <!-- JAVASCRIPTS -->

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
    
    <script>
    function fn_changeCategory(categoryId) {
        location="<c:url value="/faq/main"/>?categoryId="+categoryId;
        
    }
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


  </body>
</html>