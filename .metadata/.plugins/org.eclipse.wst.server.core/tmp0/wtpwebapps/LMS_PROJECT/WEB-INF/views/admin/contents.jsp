<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<%@ include file="../include/head.jsp"%>
	<script>
		$(document).ready(function() {
			
			$('#select_course').on('change',function(){
				location.href="/admin/contents?course="+this.value;
			});
			
			$('#select_category').on('change',function(){
				let str = "/admin/contents?course=${cur_course.code}&category="+this.value;
				location.href=str;
			});
			
			$('#select_subcategory').on('change',function(){
				let str = "/admin/contents?course=${cur_course.code}&category=${cur_category.code}&subcategory="+this.value;
				location.href=str;
			});
			
		});
	</script>
</head>
<body class="dark-edition">
	<div class="wrapper ">
		<%@ include file="../include/m_sidebar.jsp"%>
		<div class="main-panel">
			<%@ include file="../include/m_topbar.jsp"%>
			<div class="content">
				<div class="container-fluid">
					<!-- your content here -->
					<form method="post">
						<div class="row container-fluid">
							<div class="form-group col-md-3">
								<label for="inputState">과정선택</label> <select id="select_course"
									name="cocode" class="form-control">
									<option value="" selected disabled hidden>== 과정 선택 ==</option>
									<c:forEach items="${courses}" var="course">
										<option value="${course.code}"
											${cur_course.code==course.code?"selected":""}>(
											${course.code} ) ${course.name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="inputState">대분류</label> <select id="select_category"
									name="cacode" class="form-control">
									<option value="" selected disabled hidden>== 분류 선택 ==</option>
									<c:forEach items="${categorys}" var="category">
										<option value="${category.code}"
											${cur_category.code==category.code?"selected":""}>(
											${category.code} ) ${category.name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group col-md-3">
								<label for="inputState">소분류</label> <select
									id="select_subcategory" name=subcacode class="form-control">
									<option value="" selected disabled hidden>== 소분류 선택 ==</option>
									<c:forEach items="${sub_categorys}" var="subcategory">
										<option value="${subcategory.code}" ${cur_subcategory.code==subcategory.code?"selected":""}>
											(${subcategory.code} ) ${subcategory.name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="form-group col-md-2">
								<a href="/admin/contents_form?course=${cur_course.code}&category=${cur_category.code}&subcategory=${cur_subcategory.code}" class="btn btn-primary pull-right">
									새 학습 등록
								</a>
							</div>
						</div>
					</form>

					<div class="col-md-12">
						<div class="card card-plain">
							<div class="card-header card-header-primary">
								<div class="row container-fluid">
									<h4 class="card-title mt-0">선택된과정(COR12345) &nbsp;&nbsp;>>
										&nbsp;&nbsp;</h4>
									<h4 class="card-title mt-0">선택된분류(CMS65789) &nbsp;&nbsp;>>
										&nbsp;&nbsp;</h4>
									<h4 class="card-title mt-0">선택된 소분류(SUB78788)</h4>
								</div>
								<div class="row container-fluid">
									<p class="card-category">선택된 정보에 등록된 학습 목록을 보여줍니다.</p>
								</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover">
										<thead class="">
											<th>과정명</th>
											<th>분류명</th>
											<th>소분류명</th>
											<th>학습제목</th>
											<th>문제수</th>
										</thead>
										<tbody>
											<c:forEach items="${contentsList}" var="contents">
											<tr>
												<td>정보처리기사</td>
												<td>응용소프트웨어 엔지니어링</td>
												<td>${contents.subCode}</td>
												<td><a href="/admin/question_form"> ${contents.title} </a>
												</td>
												<td>4</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					page ${page}

					<div class="row container-fluid d-flex justify-content-center">
						<a class="btn btn-primary btn-sm btn-round">1</a> <a
							class="btn btn-primary btn-sm btn-link">2</a> <a
							class="btn btn-primary btn-sm btn-link">3</a>
					</div>

				</div>
			</div>
			<%@ include file="../include/m_footer.jsp"%>
		</div>
	</div>
	<%@ include file="../include/corejs.jsp"%>
</body>
</html>
