<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="./assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
     weLEarn - 배우고 ! 익히고 !
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="/resources/assets_home/css/material-kit.css?v=2.0.7" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="/resources/assets_home/demo/demo.css" rel="stylesheet" />
  <style type="text/css">
    hr.line {
      border-top: 1px solid rgb(182, 181, 181);
    }    
  </style>
</head>

<body class="profile-page sidebar-collapse">
  <!-- 로그인 폼 -->
  <div class="modal fade" id="loginModal" tabindex="-1" role="">
    <div class="modal-dialog modal-login" role="document">
        <div class="modal-content">
            <div class="card card-signup card-plain">
                <div class="modal-header">
                    <div class="card-header card-header-primary text-center">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="material-icons">clear</i></button>
                        <br>
                        <h4 class="card-title">Log in</h3>
                    </div>
                </div>
                <form class="form" method="post" action="/member/login">
                  <div class="modal-body">
                    <div class="card-body">
                      <div class="form-group bmd-form-group">
                          <div class="input-group">
                              <span class="input-group-addon">
                                  <i class="material-icons">face</i>
                              </span>
                              <input name="id" type="text" class="form-control" placeholder=" 아이디 입력">
                          </div>
                      </div>
                      <div class="form-group bmd-form-group">
                          <div class="input-group">
                              <span class="input-group-addon">
                                  <i class="material-icons">lock_outline</i>
                              </span>
                              <input name="password" type="password" placeholder="비밀번호 입력" class="form-control">
                          </div>
                      </div>
                    </div>
                  </div>
                  <div class="modal-footer justify-content-center">
                    <button type="submit" class="btn btn-primary btn-link btn-wd btn-lg">로그인</button>
                  </div>
                </form>
            </div>
        </div>
    </div>
  </div>
<!--8.25재만수정끝-->

  <!--상단 네비게이션 바-->
  <nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg bg-primary" color-on-scroll="100" id="sectionsNav">
    <div class="container">
      <a class="navbar-brand" href="/home">weLEarn &nbsp;&nbsp;&nbsp;  </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="sr-only">Toggle navigation</span>
      <span class="navbar-toggler-icon"></span>
      <span class="navbar-toggler-icon"></span>
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <!-- 아이콘 바 -->
        <ul class="navbar-nav ml-auto" role="tablist">
          <c:if test="${not empty id}">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="javascript:;" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="material-icons">person_pin</i>&nbsp;&nbsp; STUDY
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="/user/study">
                <i class="material-icons">edit</i>&nbsp;&nbsp;학습하기
              </a>
              <a class="dropdown-item" href="/user/review">
                <i class="material-icons">psychology</i>&nbsp;&nbsp;복습하기
              </a>
              <a class="dropdown-item" href="/user/testing">
                <i class="material-icons">rate_review</i>&nbsp;&nbsp;모의고사
              </a>
              <a class="dropdown-item" href="/user/status">
                <i class="material-icons">dashboard</i>&nbsp;&nbsp;학습현황
              </a>
            </div>
          </li>
          </c:if>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="javascript:;" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="material-icons">face</i>&nbsp;&nbsp; 
              <c:if test="${empty id}"> Start </c:if>
              <c:if test="${not empty id}"> ${id}님 접속 중 </c:if>
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <c:if test="${not empty id}">
              <a class="dropdown-item" href="/member/logout">로그아웃</a>
              </c:if>
              <c:if test="${empty id}">
              <a class="dropdown-item" data-toggle="modal" data-target="#loginModal">로그인</a>
              <a class="dropdown-item" href="/member/joinform">회원가입</a>
              </c:if>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
  
  <!-- 상단 로고  main header -->
  <div class="page-header header-filter clear-filter purple-filter" data-parallax="true" style="background-image: url('/resources/assets_home/img/main/bg-main.png');">
    <div class="container">
      <div class="row">
        <div class="col-md-10 ml-auto mr-auto">
          <div class="brand">
            <div class="col-sm-4">
              <img class="img-fluid" src="/resources/assets_home/img/main/logo-dark.png">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="main main-raised">
    <div class="section section-basic">
      <div class="container">
      	<!-- 아이콘 바 -->
      	<div class="row">
	       <div class="col-md-12 d-flex justify-content-center">
		        <ul class="nav nav-pills nav-pills-icons" role="tablist">
		          <li class="nav-item">
		              <a class="nav-link active" href="#welearn" role="tab" data-toggle="tab">
		                  <i class="material-icons">emoji_people</i>
		                  weLEarn
		              </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#learn" role="tab" data-toggle="tab">
		                <i class="material-icons">edit</i>
		                학습하기
		            </a>
		          </li>
		          <li class="nav-item">
                <a class="nav-link" href="#review" role="tab" data-toggle="tab">
                  <i class="material-icons">psychology</i>
		              복습하기
                </a>
		          </li>
              <li class="nav-item">
                <a class="nav-link" href="#question" role="tab" data-toggle="tab">
                    <i class="material-icons">rate_review</i>
                    모의고사
                </a>
              </li>
		          <li class="nav-item">
		              <a class="nav-link" href="#dashboard" role="tab" data-toggle="tab">
		                  <i class="material-icons">dashboard</i>
		                  학습현황
		              </a>
		          </li>
		        </ul>
       		</div>
        </div>
        
        <!-- 아이콘 클릭시 !! -->
        <div class="tab-content tab-space">
        
          <!--- 소개 welearn ------------------------------>
          <div class="tab-pane active" id="welearn">
            <div class="container">
              <div class="col-md-10 mr-auto ml-auto">
                <hr class="line">
                <div class="row d-flex align-items-center">
                  <div class="col-sm-5 d-flex justify-content-center">
                    <div class="col-sm-10">
                      <img class="img-fluid " src="/resources/assets_home/img/main/logo-dark.png">
                    </div>
                  </div>
                  <div class="col-sm-6 rounded">
                    <br>
                    <table class="table table-borderless">
                      <tbody>
                        <tr>
                          <td><button class="btn btn-danger btn-sm">&nbsp;&nbsp; We &nbsp;&nbsp;</button></td>
                          <td>
                            <p class="text-danger">
                            '우리'라는 가치 추구
                            </p>
                          </td>
                        </tr>
                        <tr>
                          <td><button class="btn btn-primary btn-sm">Learn </button></td>
                          <td>
                            <p class="text-primary">
                              '배움'의 본연 가치 실현
                            </p>
                          </td>
                        </tr>
                        <tr>
                          <td><button class="btn btn-success btn-sm">&nbsp; Well&nbsp;</button></td>
                          <td>
                            <p class="text-success">
                              '잘' 배울 수 있도록 학습 추천
                            </p>
                          </td>
                        </tr>
                        <tr>
                          <td><button class="btn btn-info btn-sm">&nbsp; Earn&nbsp;</button></td>
                          <td>
                            <p class="text-info">
                              '얻어'가는 학습 효과
                            </p>
                          </td>
                        </tr>
                        <tr>
                          <td></td>
                          <td></td>
                        </tr>
                    </table>
                  </div>
                </div>
                <hr class="line">
              </div>
            </div>
          </div>

 		      <!--- 학습하기 learn ------------------------------>
          <div class="tab-pane" id="learn">
            <div class="container">
              <div class="col-md-8 mr-auto ml-auto">
                <!-- Carousel Card -->
                <div class="card card-raised card-carousel">
                  <div id="carousel_study" class="carousel slide" data-ride="carousel" data-interval="10000">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/study1.gif" alt="학습 신청">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                            학습 신청
                          </h4>
                        </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/study2.gif" alt="학습 계획 작성">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                            학습 계획 작성
                          </h4>
                        </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/study3.jpg" alt="내 학습">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                            내 학습
                          </h4>
                        </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/study4.gif" alt="학습 스터디룸 ">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                            학습 스터디룸 
                          </h4>
                        </div>
                      </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel_study" role="button" data-slide="prev">
                      <i class="material-icons">keyboard_arrow_left</i>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel_study" role="button" data-slide="next">
                      <i class="material-icons">keyboard_arrow_right</i>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
                <!-- End Carousel Card -->
              </div>
            </div>   
          </div>

 		      <!--- 복습하기 review ------------------------------>
          <div class="tab-pane" id="review">
	          <div class="container">
	            <div class="col-md-8 mr-auto ml-auto">
          		<!-- Carousel Card -->
                <div class="card card-raised card-carousel">
                  <div id="carousel_review" class="carousel slide" data-ride="carousel" data-interval="10000">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/review1.gif" alt="학습 신청">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                            복습 추천
                          </h4>
                        </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/review2.gif" alt="학습 계획 작성">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                             복습 하기
                          </h4>
                        </div>
                      </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel_review" role="button" data-slide="prev">
                      <i class="material-icons">keyboard_arrow_left</i>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel_review" role="button" data-slide="next">
                      <i class="material-icons">keyboard_arrow_right</i>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
                <!-- End Carousel Card -->
                </div>
              </div>
            

          </div>
          
 		      <!--- 문제풀기 question ------------------------------>
          <div class="tab-pane" id="question">
           <div class="container">
	            <div class="col-md-8 mr-auto ml-auto">
          		<!-- Carousel Card -->
                <div class="card card-raised card-carousel">
                  <div id="carousel_testing" class="carousel slide" data-ride="carousel" data-interval="10000">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/study1.gif" alt="학습 신청">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                          	  모의시작
                          </h4>
                        </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/study2.gif" alt="학습 계획 작성">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                                                    남은시간 출력
                          </h4>
                        </div>
                      </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel_testing" role="button" data-slide="prev">
                      <i class="material-icons">keyboard_arrow_left</i>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel_testing" role="button" data-slide="next">
                      <i class="material-icons">keyboard_arrow_right</i>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
                <!-- End Carousel Card -->
                </div>
              </div>
          </div>
        
          <!--- 학습 현황 dashboard ------------------------------>
          <div class="tab-pane" id="dashboard">
            <div class="container">
	            <div class="col-md-8 mr-auto ml-auto">
          		<!-- Carousel Card -->
                <div class="card card-raised card-carousel">
                  <div id="carousel_dashboard" class="carousel slide" data-ride="carousel" data-interval="10000">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/study1.gif" alt="학습 신청">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                          	 일주일 학습 현황
                          </h4>
                        </div>
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="/resources/assets_home/img/main/study2.gif" alt="학습 계획 작성">
                        <div class="carousel-caption d-none d-md-block">
                          <h4>
                             	지식 축척 비율                       
                          </h4>
                        </div>
                      </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel_dashboard" role="button" data-slide="prev">
                      <i class="material-icons">keyboard_arrow_left</i>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel_dashboard" role="button" data-slide="next">
                      <i class="material-icons">keyboard_arrow_right</i>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                </div>
                <!-- End Carousel Card -->
                </div>
              </div>
          
           
        </div>
      </div>
    </div>
  </div>
  <!--  End Modal -->
  <%@ include file="./include/footer.jsp" %>
  <!--   Core JS Files   -->
  <script src="/resources/assets_home/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="/resources/assets_home/js/core/popper.min.js" type="text/javascript"></script>
  <script src="/resources/assets_home/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="/resources/assets_home/js/plugins/moment.min.js"></script>
  <!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
  <script src="/resources/assets_home/js/plugins/bootstrap-datetimepicker.js" type="text/javascript"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="/resources/assets_home/js/plugins/nouislider.min.js" type="text/javascript"></script>
  <!--  Google Maps Plugin    -->
  <!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
  <script src="/resources/assets_home/js/material-kit.js?v=2.0.7" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      //init DateTimePickers
      materialKit.initFormExtendedDatetimepickers();

      // Sliders Init
      materialKit.initSliders();
    });


    function scrollToDownload() {
      if ($('.section-download').length != 0) {
        $("html, body").animate({
          scrollTop: $('.section-download').offset().top
        }, 1000);
      }
    }
  </script>
</body>

</html>