<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/layout/header.jsp"%>

<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5 page-header">
	<div class="container py-5">
		<div class="row justify-content-center">
			<div class="col-lg-10 text-center">
				<h3 class="display-5 text-white animated slideInDown">문의하기</h3>
			</div>
		</div>
	</div>
</div>
<!-- Header End -->

<section id="cs">

	<div class="csMainContainer">

		<%-- <%@ include file="/WEB-INF/view/pages/cs/layout/aside.jsp"%> --%>

		<div class="container">

			<div>
				<h2>문의하기</h2>
				<div class="input-group" style="margin-bottom: 7px">
					<select name="searchType">
						<option value="prodName">전체</option>
						<option value="prodNo">제목+내용</option>
						<option value="company">작성자</option>
					</select>
					<div class="form-outline">
						<input type="search" id="form1" class="form-control"
							placeholder="Search" />
					</div>
					<button type="button" class="btn btn-primary">
						<i class="fas fa-search"></i>
					</button>
				</div>
				<div class="btn-group" role="group"
					aria-label="Basic outlined example" style="display: flex;">
					<button type="button" class="btn btn-outline-primary" id="btnInsert"
						style="flex: none;"></a>등록</button>
					<button type="button" class="btn btn-outline-primary"
						style="flex: none;">나의 문의내역</button>
					<button type="button" class="btn btn-outline-primary"
						style="flex: none;">전체 문의내역</button>
				</div>
			</div>
			<table class="table table-hover">
				<thead class="thead-light text-center">
					<tr>
						<th>No</th>
						<th>Q&A Title</th>
						<th>Writer</th>
						<th>Date</th>
						<th>Answer</th>
					</tr>
				</thead>
				<tbody class="text-center">
					<c:forEach var="list" items="${qnaList}">
						<tr  class="page-click" id="${list.id}">
							<td>${list.id}</td>
							<td class="text-left" width="50%">
								<div class="panel-cs-container">
									<p class="panel-cs-title">${list.title}</p>
								</div>
							</td>
							<td>${list.writer}</td>
							<!-- 작성자 마킹처리 -->
							<td>${list.rdate}</td>

							<c:if test="${list.answerComplete eq 1}">
								<td>답변완료</td>
							</c:if>
							<c:if test="${list.answerComplete eq 0}">
								<td>미답변</td>
							</c:if>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<!-- 페이징 처리 -->
			<div class="qna pagination">
				<c:if test="${page > 1}">
					<li class="page-item"><a href="?page=1&size=${size}"
						class="page-link">&laquo; 첫 페이지</a></li>
					<li class="page-item"><a href="?page=${page - 1}&size=${size}"
						class="page-link">&laquo; Prev</a></li>
				</c:if>
				<c:forEach begin="${startPage}" end="${endPage}" var="i">
					<c:choose>
						<c:when test="${i eq page}">
							<li class="page-item active"><a
								href="?page=${i}&size=${size}" class="page-link">${i}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a href="?page=${i}&size=${size}"
								class="page-link">${i}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${page < totalPages}">
					<li class="page-item"><a href="?page=${page + 1}&size=${size}"
						class="page-link">Next &raquo;</a></li>
					<li class="page-item"><a
						href="?page=${totalPages}&size=${size}" class="page-link">마지막
							페이지 &raquo;</a></li>
				</c:if>
			</div>

		</div>
	</div>
	</div>
</section>

<script src="/js/cs/csQna.js"></script>
<%@ include file="/WEB-INF/view/layout/footer.jsp"%>

