<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<%@ include file="../include/head.jsp" %>
</head>
<body class="dark-edition">
 <div class="wrapper ">
    <%@ include file="../include/sidebar.jsp" %>
    <div class="main-panel">
      <%@ include file="../include/topbar.jsp" %>
      <div class="content">
        <div class="container-fluid">
          <!-- your content here -->
          <div class="row">
          <c:forEach items="${courseArr}" var="course"> 
          <div class="col-md-4 d-flex justify-content-center">
           	<div class="card">
                  	<table class="table">
                  		<thead>
                   			<th>
			  					<div class="container-fluid alert alert-primary">
			  						<form action="/user/study/apply">
	                  					<h4> &nbsp; ${ course.name } </h4>
	                  					<input type="hidden" name="course" value="${course.code}">
	                  					<button type="submit" class="btn btn-info btn-round pull-right"> 신청하기 </button>
                  					</form>
                  				</div>
                     		</th>
                     	</thead>
                     		<tr>
                          		<td>
                          			<h6>&nbsp;&nbsp; * 학습 목록 살펴보기 !</h6>
                          		</td>			                        	
                        	</tr>
                   			<tr>
                          		<td>
                          			<ul class="list-group">
			                        	<c:forEach items="${course.categoryArr}" var="category">
		                          			<a href="#view${category.code}" data-toggle="collapse">
			                          			<li class="list-group-item d-flex justify-content-between align-items-center">
												    ${ category.name }
												    <span> =============== </span>
												 </li>
										   	</a>
		                          			<div id="view${category.code}" class="collapse">
						               		<li class="list-group-item">
						               			<ul class="list-group">
						               				<c:forEach items="${category.subCategoryArr}" var="subcategory">
							               				<li class="list-group-item d-flex justify-content-between align-items-center">
														    ${ subcategory.name }
														    <span class="badge badge-primary badge-pill">${subcategory.countCon}</span>
														</li>
													</c:forEach>
            				
						               			</ul>
						               		</li>
				               				</div>
				               			</c:forEach>
				               		</ul>
                          		</td>			                        	
                        	</tr>
                        	
                        </tbody>
               		</table>
               		
               	</div>
            </div>
        	</c:forEach>
        	</div>
        </div>
      </div>
      <%@ include file="../include/footer.jsp" %>
    </div>
  </div>
<%@ include file="../include/corejs.jsp" %>
</body>
</html>
