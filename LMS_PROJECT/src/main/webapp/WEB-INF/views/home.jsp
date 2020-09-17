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
  <!--<nav class="navbar fixed-bottom navbar-expand-lg  bg-primary">-->
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
          <!--
              color-classes: "nav-pills-primary", "nav-pills-info", "nav-pills-success", "nav-pills-warning","nav-pills-danger"
          -->
          <c:if test="${not empty id}">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="javascript:;" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="material-icons">person_pin</i>&nbsp;&nbsp; STUDY
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="/user/study">
                <i class="material-icons">edit</i>&nbsp;&nbsp;학습하기
              </a>
              <a class="dropdown-item" href="/user/testing">
                <i class="material-icons">rate_review</i>&nbsp;&nbsp;문제풀기
              </a>
              <a class="dropdown-item" href="/user/review">
                <i class="material-icons">psychology</i>&nbsp;&nbsp;복습하기
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
  <div class="page-header header-filter clear-filter purple-filter" data-parallax="true" style="background-image: url('/resources/assets_home/img/bg2.jpg');">
    <div class="container">
      <div class="row">
        <div class="col-md-8 ml-auto mr-auto">
          <div class="brand">
            <h1>weLEarn</h1>
            <h3>배우고 익히는 좋은 습관</h3>
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
		            <a class="nav-link" href="#veteran" role="tab" data-toggle="tab">
		                <i class="material-icons">edit</i>
		                학습하기
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#coding_q_and_a" role="tab" data-toggle="tab">
		                <i class="material-icons">rate_review</i>
		                문제풀기
		            </a>
		          </li>
		          <li class="nav-item">
		            <a class="nav-link" href="#course" role="tab" data-toggle="tab">
		              <i class="material-icons">psychology</i>
		              복습하기
		            </a>
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
        
          <!--- welearn ------------------------------>
          <div class="tab-pane active" id="welearn">
		      <div class="container">
		        <div class="row">
		          <div class="col-md-8 mr-auto ml-auto">
		            <!-- Carousel Card -->
		            <div class="card card-raised card-carousel">
		              <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="3000">
		                <ol class="carousel-indicators">
		                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
		                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		                  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="carousel-item active">
		                    <img class="d-block w-100" src="/resources/assets_home/img/main/welearn1.jpg" alt="First slide">
		                    <div class="carousel-caption d-none d-md-block">
		                      <h4>
		                        <i class="material-icons">location_on</i>
		                        Yellowstone National Park, United States
		                      </h4>
		                    </div>
		                  </div>
		                  <div class="carousel-item">
		                    <img class="d-block w-100" src="/resources/assets_home/img/main/welearn2.jpg" alt="Second slide">
		                    <div class="carousel-caption d-none d-md-block">
		                      <h4>
		                        <i class="material-icons">location_on</i>
		                        Somewhere Beyond, United States
		                      </h4>
		                    </div>
		                  </div>
		                  <div class="carousel-item">
		                    <img class="d-block w-100" src="/resources/assets_home/img/main/welearn3.jpg" alt="Third slide">
		                    <div class="carousel-caption d-none d-md-block">
		                      <h4>
		                        <i class="material-icons">location_on</i>
		                        Yellowstone National Park, United States
		                      </h4>
		                    </div>
		                  </div>
		                </div>
		                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		                  <i class="material-icons">keyboard_arrow_left</i>
		                  <span class="sr-only">Previous</span>
		                </a>
		                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
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
 		  
       

          <div class="tab-pane" id="veteran">
            검색tab 입력 조건에 맞는 목록 검색 출력
            <div class="form-group">
              <label for="exampleFormControlSelect1">검색조건선택</label>
              <select class="form-control selectpicker" data-style="btn btn-link" id="exampleFormControlSelect1">
                <option>등급</option>
                <option>이름</option>
                <option>제목</option>
                <option>기업</option>
                <option>등등</option>
              </select>
          </div>    
          <form>
            <div class="form-group">
              <label for="search">Search</label>
              <input type="text" class="form-control" id="search" placeholder="검색어 입력(등급,이름,코딩문답제목,기업)">
            </div>
            <button type="submit" class="btn btn-primary btn-round">검색</button>
          </form>
           <!-- 등급,이름,코딩문답제목,기업 -->
        </div>

          <div class="tab-pane" id="coding_q_and_a">
            <div class="text-right">
              <a href="base.html" class="btn btn-primary btn-sm">더보기</a>
            </div>
            <h3><small># IT</small></h3>
            <table class="table table-sm table-hover">
              <thead>
                <tr>
                  <th scope="col">No</th>
                  <th scope="col">질문</th>
                  <th scope="col">분야</th>
                  <th scope="col">조회수/댓글수</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">5</th>
                  <td>고수님들 쫌 도와주세요.</td>
                  <td>JAVA</td>
                  <td>10/0</td>
                </tr>
                <tr>
                  <th scope="row">4</th>
                  <td>고수님들 쫌 도와주세요.</td>
                  <td>JAVA</td>
                  <td>10/0</td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td>고수님들 쫌 도와주세요.</td>
                  <td>JAVA</td>
                  <td>10/0</td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td>이 에러는 왜 날까요? 이방법 저방법 구글링해서 써봤는데 ... ㅠ_ㅜ </td>
                  <td>DB</td>
                  <td>7/3</td>
                </tr>
                <tr>
                  <th scope="row">1</th>
                  <td>JAVA 어느정도가 신입의 기준인가요?</td>
                  <td>DB</td>
                  <td>7/3</td>
                </tr>
              </tbody>
            </table>
            <br>
            <h3><small># NEW</small></h3>
            <table class="table table-sm table-hover">
              <thead>
                <tr>
                  <th scope="col">No</th>
                  <th scope="col">질문</th>
                  <th scope="col">분야</th>
                  <th scope="col">조회수/댓글수</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row">5</th>
                  <td>고수님들 쫌 도와주세요.</td>
                  <td>JAVA</td>
                  <td>10/0</td>
                </tr>
                <tr>
                  <th scope="row">4</th>
                  <td>고수님들 쫌 도와주세요.</td>
                  <td>JAVA</td>
                  <td>10/0</td>
                </tr>
                <tr>
                  <th scope="row">3</th>
                  <td>고수님들 쫌 도와주세요.</td>
                  <td>JAVA</td>
                  <td>10/0</td>
                </tr>
                <tr>
                  <th scope="row">2</th>
                  <td>이 에러는 왜 날까요? 이방법 저방법 구글링해서 써봤는데 ... ㅠ_ㅜ </td>
                  <td>DB</td>
                  <td>7/3</td>
                </tr>
                <tr>
                  <th scope="row">1</th>
                  <td>JAVA 어느정도가 신입의 기준인가요?</td>
                  <td>DB</td>
                  <td>7/3</td>
                </tr>
              </tbody>
            </table>
          </div>

          <div class="tab-pane" id="course">
            
            <div class="row">
              <div class="col-md-6">
                <div class="card">
                    <div class="card-header card-header-text card-header-primary">
                      <div class="card-text">
                        <h4 class="card-title">과정명</h4>
                      </div>
                    </div>
                    <div class="card-body">
                      <h5><b>사용언어#</h5></b>
                      상세설명 쓰는란
                    </div>
                </div>
            </div>
            
              <div class="col-md-6">
                  <div class="card">
                      <div class="card-header card-header-text card-header-primary">
                        <div class="card-text">
                          <h4 class="card-title">과정명</h4>
                        </div>
                      </div>
                      <div class="card-body">
                        <h5><b>사용언어#</h5></b>
                        상세설명 쓰는란
                      </div>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <div class="card">
                    <div class="card-header card-header-text card-header-primary">
                      <div class="card-text">
                        <h4 class="card-title">과정명</h4>
                      </div>
                    </div>
                    <div class="card-body">
                      <h5><b>사용언어#</h5></b>
                      상세설명 쓰는란
                    </div>
                </div>
              </div>
            
              <div class="col-md-6">
                  <div class="card">
                      <div class="card-header card-header-text card-header-primary">
                        <div class="card-text">
                          <h4 class="card-title">과정명</h4>
                        </div>
                      </div>
                      <div class="card-body">
                        <h5><b>사용언어#</h5></b>
                        상세설명 쓰는란
                      </div>
                  </div>
              </div>
            </div>
            <!-- 8월26일 재만 수정끝-->
            
            <div class="text-right">
              <a href="base.html" class="btn btn-primary btn-sm">더보기</a>
            </div>
          </div>
        
          <!--- 학습 현황 dashboard ------------------------------>
          <div class="tab-pane" id="dashboard">
	            <div class="row">
		            <div class="col-sm-6">
		              <h4>한 주 학습한 내용을 표로 보여줍니다.</h4>
		              <img src="/resources/assets_home/img/main/dashboard.jpg" alt="Rounded Image" class="rounded img-fluid">
		            </div>
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