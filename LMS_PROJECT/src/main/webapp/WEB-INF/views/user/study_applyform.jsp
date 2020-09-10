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
          <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">선택한 과정명 정보 표시 </h4>
                  <p class="card-category">총 모듈로 이루어 졌는지. 하루 4시간을 기준으로 몇일을 공부해야 하는지 등의 계획에 참고할 만한 정보...</p>
                </div>
                <div class="card-body">
                  <form>
                  	<div class="row">
                  		<div class="col-md-3">
                  			<label> 학습 요일 선택&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</label>
                  		</div>
                  		<div class="col-md-8">
                  			<div class="form-check form-check-inline">
							  <label class="form-check-label">
							    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1" checked> 월
							    <span class="form-check-sign">
							        <span class="check"></span>
							    </span>
							  </label>
							</div>&nbsp;&nbsp;&nbsp;
							<div class="form-check form-check-inline">
							  <label class="form-check-label">
							    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2" checked> 화
							    <span class="form-check-sign">
							        <span class="check"></span>
							    </span>
							  </label>
							</div>&nbsp;&nbsp;&nbsp;
							<div class="form-check form-check-inline">
							  <label class="form-check-label">
							    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2" checked> 수
							    <span class="form-check-sign">
							        <span class="check"></span>
							    </span>
							  </label>
							</div>&nbsp;&nbsp;&nbsp;
							<div class="form-check form-check-inline">
							  <label class="form-check-label">
							    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1" checked> 목
							    <span class="form-check-sign">
							        <span class="check"></span>
							    </span>
							  </label>
							</div>&nbsp;&nbsp;&nbsp;
							<div class="form-check form-check-inline">
							  <label class="form-check-label">
							    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2" checked> 금
							    <span class="form-check-sign">
							        <span class="check"></span>
							    </span>
							  </label>
							</div>&nbsp;&nbsp;&nbsp;
							<div class="form-check form-check-inline">
							  <label class="form-check-label">
							    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2"> 토
							    <span class="form-check-sign">
							        <span class="check"></span>
							    </span>
							  </label>
							</div>&nbsp;&nbsp;&nbsp;
							<div class="form-check form-check-inline">
							  <label class="form-check-label">
							    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> 일
							    <span class="form-check-sign">
							        <span class="check"></span>
							    </span>
							  </label>
							</div>
                  		</div>
                  	</div>
                  	
                  	<div class="row">
                  		<div class="col-md-3">
                  			<label> 학습 범위 선택&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</label>
                  		</div>
                  		<div class="form-check form-check-radio form-check-inline">
						  <label class="form-check-label">
						    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 중요 한 것만 
						    <span class="circle">
						        <span class="check"></span>
						    </span>
						  </label>
						</div>
						<div class="form-check form-check-radio form-check-inline">
						  <label class="form-check-label">
						    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 중요 한 것 부터
						    <span class="circle">
						        <span class="check"></span>
						    </span>
						  </label>
						</div>
						<div class="form-check form-check-radio form-check-inline">
						  <label class="form-check-label">
						    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2" checked> 정석 대로 차근차근
						    <span class="circle">
						        <span class="check"></span>
						    </span>
						  </label>
						</div>
                  	</div>
                  	
                  	<div class="row">
                  		<div class="col-md-3">
                  			<label> 기간 선택&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;</label>
                  		</div>
                  		<div class="form-check form-check-radio form-check-inline">
						   시작일    ~ 종료일
						</div>
                  	</div>
                  	
              
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">Company (disabled)</label>
                          <input type="text" class="form-control" disabled>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Username</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email address</label>
                          <input type="email" class="form-control">
                        </div>
                      </div>
                    </div>
                    
                    
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Fist Name</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Last Name</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Adress</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">City</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Country</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Postal Code</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <label>About Me</label>
                          <div class="form-group">
                            <label class="bmd-label-floating"> Lamborghini Mercy, Your chick she so thirsty, I'm in that two seat Lambo.</label>
                            <textarea class="form-control" rows="5"></textarea>
                          </div>
                        </div>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary pull-right">계획 저장 </button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>          
        </div>
      </div>
      <%@ include file="../include/footer.jsp" %>
    </div>
  </div>
<%@ include file="../include/corejs.jsp" %>
</body>
</html>