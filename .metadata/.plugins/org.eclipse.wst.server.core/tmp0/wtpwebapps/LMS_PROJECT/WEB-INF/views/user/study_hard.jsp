<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>공부하러 들어왔어요~~!!</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/resources/assets_core/css/main.css" />
		<noscript><link rel="stylesheet" href="/resources/assets_core/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li><a href="#intro">학습하기</a></li>
							<li><a href="#one">문제풀기</a></li>
							<li><a href="/user/study/next">NEXT</a></li>
							<li><a href="/user/study/close">Exit</a></li>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
					<section id="intro" class="wrapper style1 fullscreen fade-up">
						<div class="inner">
							<h1>학습제목</h1>
							학습내용 표시
							<p>Next를 눌렀을 때 관련된 문제를 다 풀고, 정답까지 확인 한 학습에 한해서만 완료된 학습으로 인정한다. <br />
							and released for free under the <a href="http://html5up.net/license">Creative Commons</a>.</p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">문제풀러가기</a></li>
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 fade-up spotlights">
						<div class="inner">
						<h2> 문제 </h2>
						<hr>
						<section>
							<div class="content">
									<p>
										1. Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus.
										<div class="col-12 col-12-xsmall">
											<input type="text" name="demo-name" id="demo-name" value="" placeholder="정답 입력" />
										</div>
									</p>
									
									<ul class="actions">
										<li><button onclick="" class="button">정답확인</button></li>
										<input type="hidden" name="ques1" value="X">
									</ul>
							</div>
						</section>
						<hr>
						<section>
							<div class="content">
								<div class="inner">
									<p>2. sdfsdfsdfsdfsdfsd 개관식 문제 예시us.</p>
									<div class="col-4 col-12-small">
										<input type="radio" id="demo-priority-low" name="demo-priority">
										<label for="demo-priority-low">Low</label>
									</div>
									<div class="col-4 col-12-small">
										<input type="radio" id="demo-priority-normal" name="demo-priority">
										<label for="demo-priority-normal">Normal</label>
									</div>
									<div class="col-4 col-12-small">
										<input type="radio" id="demo-priority-top" name="demo-priority">
										<label for="demo-priority-top">ㅇㅇㅇ</label>
									</div>
									<div class="col-4 col-12-small">
										<input type="radio" id="demo-priority-high" name="demo-priority">
										<label for="demo-priority-high">High</label>
									</div>
									<br>
									<ul class="actions">
										<li><button onclick="" class="button">정답확인</button></li>
										<input type="hidden" name="ques2" value="X">
									</ul>
								</div>
							</div>							
						</section>
						<hr>
						<section>
							<div class="content">
								<div class="inner">
									<p>3. Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus.</p>
									<ul class="actions">
										<li><button onclick="" class="button">정답확인</button></li>
										<input type="hidden" name="ques3" value="X">
									</ul>
								</div>
							</div>
						</section>
					</section>
				</div>
			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
						<li>&copy; 시스템 이름 </li>
						<li> Team 잇플 </li>
					</ul>
				</div>
			</footer>

		<!-- Scripts -->
			<script src="/resources/assets_core/js/jquery.min.js"></script>
			<script src="/resources/assets_core/js/jquery.scrollex.min.js"></script>
			<script src="/resources/assets_core/js/jquery.scrolly.min.js"></script>
			<script src="/resources/assets_core/js/browser.min.js"></script>
			<script src="/resources/assets_core/js/breakpoints.min.js"></script>
			<script src="/resources/assets_core/js/util.js"></script>
			<script src="/resources/assets_core/js/main.js"></script>

	</body>
</html>