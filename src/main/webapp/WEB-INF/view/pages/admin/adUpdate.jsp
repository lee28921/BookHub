<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>광고 정보 수정</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.card-header {
	background-color: #343a40;
	color: white;
}

.btn-submit {
	width: 100%;
}
</style>
</head>
<body>

	<%@ include file="/WEB-INF/view/pages/admin/layout/header.jsp"%>

	<!-- Header Start -->
	<div class="container-fluid bg-dark py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h3 class="display-5 text-white animated slideInDown">배너광고 수정</h3>
				</div>
			</div>
		</div>
	</div>

	<div class="container mt-5 mb-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header bg-dark text-white">광고 정보 수정</div>
					<input type="hidden" id="bannerid" value="${banner.id}">
					<div class="card-body">
						<form action="/ad/edit/${banner.id}" id="edit-btn" method="post"
							enctype="multipart/form-data">
							<input type="hidden" name="_method" value="put" /> <input
								type="hidden" name="id" value="${banner.id}" />

							<div class="form-group">
								<label for="username">제목</label> <input type="text"
									class="form-control" id="title" name="title"
									value="${banner.title}" required>
								<div id="titleFeedback" class="invalid-feedback"></div>
							</div>

							<div class="form-group">
								<label for="content">URL</label> <input type="text"
									class="form-control" id="content" name="content"
									value="${banner.content}" required>
							</div>
							<div class="form-group">
								<label for="name">광고주</label> <input type="text"
									class="form-control" id="writer" name="writer"
									value="${banner.writer}" required>
							</div>
							<div class="form-group">
								<label for="bannerImage">이미지 업로드</label> <input type="file"
									class="form-control" id="bannerImage" name="bannerImage">
								<div class="card mt-3">
									<div class="card-header bg-warning">현재 이미지</div>
									<div class="card-body">

										<div class="text-center">
											<img src="/images/upload/${banner.uploadFileName}"
												style="width: 70%; height: 70%;">
										</div>
									</div>
								</div>
							</div>

							<!-- 수정된 이미지 미리보기 -->
							<div class="card mt-3" id="updatedImagePreview"
								style="display: none;">
								<div class="card-header bg-success text-white">수정된 이미지
									미리보기</div>
								<div class="card-body">
									<div class="text-center">
										<img id="updatedImage" src="#"
											style="max-width: 100%; max-height: 200px;">
									</div>
								</div>
							</div>



							<div class="form-group">
								<label>광고여부</label><br>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="postYn"
										id="Y" value="Y"
										<c:if test="${banner.postYn == 'Y'}">checked</c:if>> <label
										class="form-check-label" for="Y">광고시작</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="postYn"
										id="N" value="N"
										<c:if test="${banner.postYn == 'N'}">checked</c:if>> <label
										class="form-check-label" for="N">광고중단</label>
								</div>
							</div>



							<button type="submit" class="btn btn-primary btn-submit mb-3">수정하기</button>

						</form>


						<form id="delete-btn" action="/ad/delete/${banner.id}"
							method="post">
							<input type="hidden" name="_method" value="delete" />
							<button type="submit" class="btn btn-danger btn-submit">광고삭제</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/view/pages/admin/layout/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="/js/admin/adUpdate.js"></script>

</body>

<script>
$(document).ready(function() {
    $('#bannerImage').change(function() {
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#updatedImage').attr('src', e.target.result); // 이미지 미리보기 업데이트
                $('#updatedImagePreview').show(); // 수정된 이미지 미리보기 표시
            }
            reader.readAsDataURL(this.files[0]); // 파일을 읽어서 데이터 URL로 변환하여 이미지 미리보기에 삽입
        }
    });
});
</script>
</html>
