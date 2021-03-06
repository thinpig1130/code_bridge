<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<%@ include file="../include/head.jsp" %>
</head>
<body class="dark-edition">
 <div class="wrapper ">
    <%@ include file="../include/m_sidebar.jsp" %>
    <div class="main-panel">
      <%@ include file="../include/m_topbar.jsp" %>
      <div class="content">
        <div class="container-fluid col-md-10">
           <!-- your content here -->
           <div class="jumbotron">
				<h1 class="display-4">${content.title}</h1>
				<div class="lead">
					<div class="row container-fluid d-flex justify-content-around">
						<div>작성일 : ${content.regDate}</div>
						<div>${course.name} </div>
						<div> >> ${category.name} </div>
						<div> >> ${subcategory.name} </div>
											
						<div>
							<c:forEach var="i" begin="1" end="${4-content.importance}" step="1">
								<span class="material-icons">star_rate</span>
							</c:forEach>
						</div>
					</div>
				</div>
				<hr class="my-4">
				
				${content.contents}
				
				<div class="row container-fluid d-flex align-items-end">
					<form>
						<input type="hidden" name="code" value="${content.code}">
						<button type="submit" class="btn btn-primary btn-sm"  role="button">수정</button>
					</form>
				</div>
			</div>
			
          <div class=" col-md-12">
            <div class="card">
              <div class="card-header card-header-tabs card-header-primary">
                <div class="nav-tabs-navigation">
                  <div class="nav-tabs-wrapper">
                    <span class="nav-tabs-title"> 관련문제등록 </span>
                    <ul class="nav nav-tabs" data-tabs="tabs">
                      <li class="nav-item col-md-5">
                        <a class="nav-link active" href="#m_question" data-toggle="tab">
                          <i class="material-icons">bug_report</i> 객관식
                        </a>
                      </li>
                      <li class="nav-item col-md-5">
                        <a class="nav-link" href="#s_question" data-toggle="tab">
                          <i class="material-icons">code</i> 주관식
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <div class="tab-content">
                
                
                  <!-- 객관식  입력 폼 -->
                  <div class="tab-pane active" id="m_question">
                    <form action="/admin/questions/regist" method="POST">
                      
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <div class="form-group">
                            	<input type="hidden" name="type" value="M">
                            	<input type="hidden" name="stucode" value="${content.code}">
                              <label class="bmd-label-floating">문제를 입력합니다.</label>
                              <textarea name="question" class="form-control" rows="5"></textarea>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <!-- 보기입력 시작 -->
                      <div class="row">
                        <div class="col-md-12">
                          
                          <div class="row container-fluid">
                            <div class="form-check form-check-radio form-check-inline">
                              <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="correct" value="1" checked>
                                <span class="circle">
                                    <span class="check"></span>
                                </span>
                              </label>
                            </div>
                            <div class="col-md-10">
                              <div class="form-group">
                                <label class="bmd-label-floating">보기입력</label>
                                <input name="answer1" type="text" class="form-control">
                              </div>
                            </div>
                          </div>
                          
                          <div class="row container-fluid">
                            <div class="form-check form-check-radio form-check-inline">
                              <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="correct" value="2">
                                <span class="circle">
                                    <span class="check"></span>
                                </span>
                              </label>
                            </div>
                            <div class="col-md-10">
                              <div class="form-group">
                                <label class="bmd-label-floating">보기입력</label>
                                <input name="answer2" type="text" class="form-control">
                              </div>
                            </div>
                          </div>
                          
                          <div class="row container-fluid">
                            <div class="form-check form-check-radio form-check-inline">
                              <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="correct" value="3">
                                <span class="circle">
                                    <span class="check"></span>
                                </span>
                              </label>
                            </div>
                            <div class="col-md-10">
                              <div class="form-group">
                                <label class="bmd-label-floating">보기입력</label>
                                <input name="answer3" type="text" class="form-control">
                              </div>
                            </div>
                          </div>
                          
                          <div class="row container-fluid">
                            <div class="form-check form-check-radio form-check-inline">
                              <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="correct" value="4">
                                <span class="circle">
                                    <span class="check"></span>
                                </span>
                              </label>
                            </div>
                            <div class="col-md-10">
                              <div class="form-group">
                                <label class="bmd-label-floating">보기입력</label>
                                <input name="answer4" type="text" class="form-control">
                              </div>
                            </div>
                          </div>
                          
                        </div>
                      </div>
                      
                      <button type="submit" class="btn btn-primary pull-right">등록</button>

                    </form>
                  </div>
                  
                  
                  <!-- 주관식 입력 폼 -->
                  <div class="tab-pane" id="s_question">
                    <form action="/admin/questions/regist" method="POST">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <div class="form-group">
                            	<input type="hidden" name="type" value="S">
                            	<input type="hidden" name="stucode" value="${content.code}">
                              <label class="bmd-label-floating">문제를 입력합니다.</label>
                              <textarea name="question" class="form-control" rows="5"></textarea>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group">
                            <label class="bmd-label-floating">답변입력</label>
                            <input name="answer" type="text" class="form-control">
                          </div>
                        </div>
                      </div>
                      <button type="submit" class="btn btn-primary pull-right">등록</button>
                      <div class="clearfix"></div>
                    </form>
                  </div>
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
