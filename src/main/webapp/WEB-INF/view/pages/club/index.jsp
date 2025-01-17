<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="/WEB-INF/view/layout/header.jsp"%>
<!-- 추가 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="/css/club/index.css" rel="stylesheet">


<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h3 class="display-5 text-white animated slideInDown">독서모임</h3>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->
	
<!-- Main Start -->

<!-- Hero Start -->
       <div class="container-fluid py-5 mb-5 hero-header">
           <div class="container py-5">
               <div class="row g-5 align-items-center">
                   <div class="col-md-12 col-lg-7">
                       <h4 class="mb-3 text-secondary">독서와 무제한으로 친해지기</h4>
                       <h1 class="mb-5 display-3 text-primary">BookHub</h1>
                       <div class="position-relative mx-auto">
                           <form action="/club/searchList" method="get">
                           	<!-- index페이지는 input에 value값 설정할 필요없다 -->
                           	<!-- class는 -- 쓰고 id는 camel 쓰네 -->
                            <input id="searchInput" class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill" name="keyword" type="text" placeholder="모임검색">
                            <button type="submit" class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100" style="top: 0; right: 25%;">검색</button>
                       	</form>
                       </div>
                   </div>
                   <div class="col-md-12 col-lg-5">
                   	   <!-- data-bs-interval 속성으로 슬라이드 시간 조절하기 ex) 3000은 3초 -->
                       <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel" data-bs-interval="3000">
                           <div class="carousel-inner" role="listbox">
                               <div class="carousel-item active rounded">
                                   <img src="/img/club/index/3월 독서모임.png" class="img-fluid w-100 h-100 bg-secondary rounded" alt="First slide">
                                   <a href="#" class="btn px-4 py-2 text-white rounded"></a>
                               </div>
                               <div class="carousel-item rounded">
                                   <img src="/img/club/index/책을 읽습니다.png" class="img-fluid w-100 h-100 rounded" alt="Second slide">
                                   <a href="#" class="btn px-4 py-2 text-white rounded"></a>
                               </div>
                               <div class="carousel-item rounded">
                                   <img src="/img/club/index/금융 리터러시.png" class="img-fluid w-100 h-100 rounded" alt="Second slide">
                                   <a href="#" class="btn px-4 py-2 text-white rounded"></a>
                               </div>
                               <div class="carousel-item rounded">
                                   <img src="/img/club/index/인터뷰.png" class="img-fluid w-100 h-100 rounded" alt="Second slide">
                                   <a href="#" class="btn px-4 py-2 text-white rounded"></a>
                               </div>
                           </div>
                           <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                               <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                               <span class="visually-hidden">Previous</span>
                           </button>
                           <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                               <span class="carousel-control-next-icon" aria-hidden="true"></span>
                               <span class="visually-hidden">Next</span>
                           </button>
                       </div>
                   </div>
               </div>
           </div>
       </div>
<!-- Hero End -->


       <!-- Featurs Section Start -->
       <div class="container-fluid featurs py-5">
           <div class="container py-5">
               <div class="row g-4">
                   <div class="col-md-6 col-lg-3">
                   	<a href="/club/list/1">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="mb-5 mx-auto">
                                <i class="fas fa-laptop-code fa-3x text-primary"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>커리어 성장</h5>
                            </div>
                        </div>
                       </a>
                   </div>
                   <div class="col-md-6 col-lg-3">
                    <a href="/club/list/2">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="mb-5 mx-auto">
                                <i class="fas fa-music fa-3x text-primary"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>예술과 문학</h5>
                            </div>
                        </div>
                   	</a>
                   </div>
                   <div class="col-md-6 col-lg-3">
                    <a href="/club/list/3">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="  mb-5 mx-auto">
                                <i class="fas fa-chart-line fa-3x text-primary"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>금융/경제/투자</h5>
                            </div>
                        </div>
                    </a>
                   </div>
                   <div class="col-md-6 col-lg-3">
                    <a href="/club/list/4">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="mb-5 mx-auto">
                                <i class="fa fa-video-camera fa-3x text-primary"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>영화와 책</h5>
                            </div>
                        </div>
                    </a>
                   </div>
                   <div class="col-md-6 col-lg-3">
                    <a href="/club/list/5">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="mb-5 mx-auto">
                                <i class="fa  fa-rocket fa-3x text-primary"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>과학과 철학</h5>
                            </div>
                        </div>
                       </a>
                   </div>
                   <div class="col-md-6 col-lg-3">
                    <a href="/club/list/6">
                        <div class="featurs-item text-center rounded bg-light p-4">
                            <div class="mb-5 mx-auto">
                                <i class="fa fa-handshake fa-3x text-primary"></i>
                            </div>
                            <div class="featurs-content text-center">
                                <h5>기타</h5>
                            </div>
                        </div>
                       </a>
                   </div>
               </div>
           </div>
       </div>
       <!-- Featurs Section End -->


       <!-- Fruits Shop Start-->
       <div class="container-fluid fruite py-5">
           <div class="container py-5">
               <div class="tab-class text-center">
                   <div class="row g-4"> <!-- 이 div 안에서는 div가 가로 배치 가능함 -->
                       <div class="col-lg-4 text-start">
                           <h4>총 ${clubCount}개<h4>
                       </div>
                       <div class="col-lg-8 text-end">
                           <ul class="nav nav-pills d-inline-flex text-center mb-5">
                               <li class="nav-item">
                                   <a class="d-flex m-2 py-2 bg-light rounded-pill active" data-bs-toggle="pill" href="#tab-1">
                                       <span class="text-dark" style="width: 130px;">전체</span>
                                   </a>
                               </li>
                               <li class="nav-item">
                                   <a id="tab2--button" class="d-flex py-2 m-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-2">
                                       <span class="text-dark" style="width: 130px;">인기모임</span>
                                   </a>
                               </li>
                               <li class="nav-item">
                                   <a class="d-flex m-2 py-2 bg-light rounded-pill" data-bs-toggle="pill" href="#tab-3">
                                       <span class="text-dark" style="width: 130px;">마감임박</span>
                                   </a>
                               </li>
                               
                           </ul>
                       </div>
                   </div>
                   <div class="tab-content">
                       <div id="tab-1" class="tab-pane fade show p-0 active">
                           <div class="row g-4">
                               <div class="col-lg-12">
                                   <div class="row g-4">
                                   
                                   <!-- 반복문 시작 -->
                                   <c:forEach var="club" items= "${clubList}">
                                   <!-- 한줄에 4개씩 차지해서 col-xl-3을 수정 -->
                       			   <div class="col-md-6 col-lg-4 col-xl-3">
                              			<a href="/club/view/${club.id}">
                                           <div class="rounded position-relative fruite-item">
                                               <div class="fruite-img">
                                               		<!-- 첨부 파일에 따라 이미지 크기가 달라져서 height 값 고정함 -->
                                                   <img src="${club.setupClubImage()}" class="img-fluid w-100 rounded-top" style="height: 380px;" alt="">
                                               </div>
                                               <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                                               	   <!-- clubName 길이에 따라 카드 크기 달라져서 height 고정값 줌 --> 	
                                                   <h4 style="height: 50px;">${club.clubName}</h4>
                                                   <h6>${club.host}</h6>
                                                   <!-- descript 길이에 따라 카드 크기 달라져서 height 고정값 줌 -->
                                                   <p style="height: 60px;">${club.descript}</p>
                                                   <div class="d-flex justify-content-between flex-lg-wrap">
                                                   		<!-- Club의 cDate 타입이 Timestamp라 바로 출력이 안되서 포멧해줘야함(문자열로) -->
					                                    <p class="text-dark fs-5 fw-bold mb-0" style="margin-top: 5%;">${club.formatCDate()}</p>
					                                    <!-- principal 값 null이면 자바스크립트로 바로 로그인 화면으로 이동시키기 -->
					                                    <!-- name 속성 줘서 getElementsByName 이용 -->
					                                    <!-- button안에 i태그 있으니까 클릭할 때 e.target으로 data-id값을 잘 못 가져오더라, 버튼태그 빼니까 해결 -->
					                                    <!-- i태그에 클릭 이벤트 하기, 커서모양 디폴트로함 -->
					                                    <i data-id="${club.id}" data-principal="${principal }" name="wishButton" class="bi-heart" style="font-size: 50px; cursor: default;"></i>
                                                   </div>
                                               </div>
                                           </div>
                                       	</a>
                           		   </div>
                                   </c:forEach>
                                   <!-- 반복문 끝 -->
                                       
                                       
                                   </div>
                               </div>
                           </div>
                       </div>
                       <!-- 2번탭-->
                       <!-- active는 index페이지 뜰 때 뜨는것이므로 삭제 -->
                   	   <div id="tab-2" class="tab-pane fade show p-0">
                           <div class="row g-4">
                               <div class="col-lg-12">
                               		<!-- 자바스크립트로 동적으로 생성한 html을 id 값을 이용하여 추가 -->	   
                               		<div id="clubList" class="row g-4">
                                    <!-- 반복문 시작 -->
                                   
                                    <!-- 반복문 끝 -->
                                   </div>
                               </div>
                           </div>
                        </div>
                        <!--2번탭-->
                   </div>
               </div>      
           </div>
       </div>
       <!-- Fruits Shop End-->


       


       


      


       


       

<!-- Main End -->
<!-- 모달 시작 -->
<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        검색어를 입력하세요
      </div>
    </div>
  </div>
</div>
<!-- 모달 끝 -->
<!--  스크립트 경로는 하나만 적용할 수 있음!!!! -->	
<script src="/js/club/index.js"></script>

<%@ include file="/WEB-INF/view/layout/footer.jsp"%>
