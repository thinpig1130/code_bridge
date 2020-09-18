<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ page session="false" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>weLEarn - 모의고사</title>
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
							<li><a href="#intro"> 시험 소개 </a></li>
							<li><a href="#one"> 문제 </a></li>
							<li><button onclick="formExit()" href="#"> 시험 종료 / 정답 확인</button></li>
						</ul>
					</nav>
				</div>
			</section>			
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Intro -->
				<section id="intro" class="wrapper style1 fullscreen fade-up">
					
					<div class="inner">
						<h1>${test.coName}</h1><br>
						시험시간&nbsp; : &nbsp;${test.timeLimit}&nbsp; 분 <br><br>
						총 문제 수&nbsp; : &nbsp;${test.questionCount}&nbsp; 개<br><br>
						<ul class="actions">
								<li><a href="#one" class="button scrolly">문제 풀기</a></li>
						</ul>
					</div>
				</section>

				<!-- One -->
				<section id="one" class="wrapper style2 fade-up spotlights">
				<div class="inner">
				<c:set var="quesNum" value="1"/>
				<c:forEach items="${questions}" var="question">
					<hr>
					<section>
						<div class="content">
							<p>
								${quesNum}.&nbsp;&nbsp; ${question.question}
								<c:if test="${ 'M' eq question.type }">
									<c:set var="ansNum" value="1"/>
									<c:forEach items="${question.answerList}" var="answer">
									<div class="col-4 col-12-small">
										<input type="radio" onclick="passValue(${quesNum},${ansNum})" name="ques${quesNum}v" id="ques${quesNum}ans${ansNum}" value="${answer.correct}">
										<label for="ques${quesNum}ans${ansNum}">${answer.answer}</label>
									</div>
									<c:set var="ansNum" value="${ansNum+1}"/>
									</c:forEach>
								</c:if>
								<c:if test="${'S' eq question.type }">
								<div class="col-12 col-12-xsmall">
									<input class="cls${quesNum}" type="text" name="ques${quesNum}" id="ques${quesNum}ans0" placeholder="정답 입력" onchange="checkAnswer(${quesNum})"/>
									<input type="hidden" name="ans${quesNum}" id="ans${quesNum}" value="${question.answer}">
								</div>
								</c:if>
							</p>
							<br>
						</div>
					</section>

					<c:set var="quesNum" value="${quesNum+1}"/>
				</c:forEach>
					<hr>
					<form id="resultForm" method="POST" >
						<input type="hidden" name="coCode" value="${test.coCode}">
						<input type="hidden" name="coName" value="${test.coName}">
						<c:forEach var="i" begin="1" end="${fn:length(questions)}">
							<input type="hidden" id="submit${i}" name="correct" value="X"/>
						</c:forEach>													
					</form>
				</div>
			</div>
		<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
				<div class="inner">
					<ul class="menu">
						<li> weLEarn </li>
						<li>&copy;잇플 </li>
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


<script type="text/javascript">
	 function checkAnswer(num) {
		let quesStr = "ques"+num+"ans0";
		let ansStr = "ans"+num;
		let submitStr = "submit"+num;
		let ques = document.getElementById(quesStr).value;
		let ans = document.getElementById(ansStr).value;
		
		if(ques == ans){
			let submit = document.getElementById(submitStr);
			submit.value='O';
		}
	 }
	 
	 function passValue(quesNum, ansNum){
		 let quesStr = "ques"+quesNum +"ans" + ansNum;
		 let subStr = "submit"+quesNum;
		 let input = document.getElementById(quesStr);
		 let res = document.getElementById(subStr);
		 res.value = input.value;
	 }
	 
	 function formExit(){
		 document.getElementById('resultForm').action="/user/testing/result";
		 document.getElementById('resultForm').submit();
	 }
</script>


	</body>
</html>
