<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<%@ include file="../include/head.jsp" %>
<body class="dark-edition">
 <div class="wrapper ">
    <%@ include file="../include/m_sidebar.jsp" %>
    <div class="main-panel">
      <%@ include file="../include/m_topbar.jsp" %>
      <div class="content">
        <div class="container-fluid">
          <!-- your content here -->
          	<div class="row">
          		<div class="alert alert-primary col-md-3 d-flex justify-content-center align-items-center" role="alert">
  					<h4>( ${cur_course.code} ) ${cur_course.name } </h4> 
  				</div>
  				<div class="col-md-1 d-flex justify-content-center align-items-center">
  					<h1> ▷ </h1>
  				</div>
  				<div class="col-md-4 d-flex justify-content-center">
	            	<div class="card">
	                	<div class="card-header card-header-primary">
	                  		<h4 class="card-title ">대분류</h4>
	                  		<p class="card-category"> (추가할 대분류 정보를 입력합니다.)</p>
	                	</div>
		                <div class="card-body">
		  					<form action="/admin/regist_category" method="post">
				          		<div class="form-group">
				               		<label class="bmd-label-floating">대분류코드 / ex) CAT23401</label>
				                   	<input type="text" class="form-control" name="code">
				                </div>
				                <div class="form-group">
				                   	<label class="bmd-label-floating">분류명 / ex) SQL응용 </label>
				                   	<input type="text" class="form-control" name="name">
				                   	<input type="hidden" name="cocode" value="${cur_course.code}">
				                </div>
				          		<button type="submit" class="btn btn-primary pull-right">등록</button>
				          	</form>
		                </div>
	              	</div>
  				</div>
  				<div class="col-md-4 d-flex justify-content-center">
	            	<div class="card">
	                	<div class="card-header card-header-primary">
	                  		<h4 class="card-title ">소분류</h4>
	                  		<p class="card-category"> (추가할 대분류 정보를 입력합니다.)</p>
	                	</div>
		                <div class="card-body">
		  					<form action="/admin/regist_subcategory" method="post">
				          		<div class="form-group">
				               		<label class="bmd-label-floating">소분류코드 / ex) SUB34001 </label>
				                   	<input type="text" class="form-control" name="code">
				                </div>
				                <div class="form-group">
				                   	<label class="bmd-label-floating">분류명 / ex) SQL 문법 </label>
				                   	<input type="text" class="form-control" name="name">
				                   	<input type="hidden" name="cacode" value="${cur_category.code}">
				                   	<input type="hidden" name="cocode" value="${cur_course.code}">
				                </div>
				          		<button type="submit" class="btn btn-primary pull-right">등록</button>
				          	</form>
		                </div>
	              	</div>
  				</div>
          	</div>
          	<div class="row">
          		<!-- 과정선택 List -->
          		<div class="col-md-4">
              		<div class="card card-stats">
                		<div class="card-header card-header-success card-header-icon">
                  			<div class="card-icon">
                    			<i class="material-icons">store</i> 과정선택
                  			</div>
                  			<p class="card-category">( 과정코드 ) 과정명 </p>
                  			<h3 class="card-title">( ${cur_course.code} ) ${cur_course.name } </h3>
	                	</div>
		                <div class="card-footer">
		                  	<div class="card-body table-responsive">
		                    	<table class="table table-hover">
<!-- 		                      		<thead class=" text-primary">
				                    	<th>( 과정코드 ) 과정명</th>
 -->				                     </thead>
		                      		<tbody>
		                      			<c:forEach items="${courses}" var="course">
		                      			<tr>
			                          		<td><a href="/admin/categorys?course=${course.code}">
                		
			                          			( ${course.code} ) ${course.name}
			                          			</a>
			                          		</td>			                        	
			                        	</tr>
			                        	</c:forEach>
			                        </tbody>
		                   		</table>
		                  	</div>
                        <tbody>
		                </div>
              		</div>
            	</div>
            	<!-- 대분류선택 List -->
          		<div class="col-md-4">
              		<div class="card card-stats">
                		<div class="card-header card-header-success card-header-icon">
                  			<div class="card-icon">
                    			<i class="material-icons">store</i> 대분류
                  			</div>
                  			<p class="card-category">( 과정코드 ) 과정명 </p>
                  			<h3 class="card-title">과정</h3>
	                	</div>
		                <div class="card-footer">
		                  	<div class="card-body table-responsive">
		                    	<table class="table table-hover">
<!-- 		                      		<thead class=" text-primary">
				                    	<th>( 과정코드 ) 과정명</th>
 -->				                     </thead>
		                      		<tbody>
		                      			<c:forEach items="${categorys}" var="category">
		                      			<tr>
			                          		<td><a href="/admin/categorys?course=${cur_course.code}&category=${category.code}">
			                          			( ${category.code} ) &nbsp; ${category.name}
			                          			</a>
			                          		</td>			                        	
			                        	</tr>
			                        	</c:forEach>
			                        </tbody>
		                   		</table>
		                  	</div>
                        <tbody>
		                </div>
              		</div>
            	</div>
            	<!-- 대분류선택 List -->
          		<div class="col-md-4">
              		<div class="card card-stats">
                		<div class="card-header card-header-success card-header-icon">
                  			<div class="card-icon">
                    			<i class="material-icons">store</i> 소분류
                  			</div>
                  			<p class="card-category">( 과정코드 ) 과정명 </p>
                  			<h3 class="card-title">과정</h3>
	                	</div>
		                <div class="card-footer">
		                  	<div class="card-body table-responsive">
		                    	<table class="table table-hover">
<!-- 		                      		<thead class=" text-primary">
				                    	<th>( 과정코드 ) 과정명</th>
 -->				                     </thead>
		                      		<tbody>
		                      			<c:forEach items="${sub_categorys}" var="sub_category">
		                      			<tr>
			                          		<td><a href="/admin/categorys?course=${sub_category.code}">
			                          			( ${sub_category.code} ) ${sub_category.name}
			                          			</a>
			                          		</td>			                        	
			                        	</tr>
			                        	</c:forEach>
			                        </tbody>
		                   		</table>
		                  	</div>
                        <tbody>
		                </div>
              		</div>
            	</div>
	      	</div>
        </div>
      </div>
      <%@ include file="../include/m_footer.jsp" %>
    </div>
  </div>
<%@ include file="../include/corejs.jsp" %>
</body>
</html>