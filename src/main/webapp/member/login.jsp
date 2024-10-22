<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>알라딘</title>
<link rel="stylesheet" href="css/member.css">
<script type="text/javascript" src="script/member.js"></script>
</head>

<body>
<%@ include file="../header.jsp" %>

<div id="loginbox">
<form action="login.do" method="post" name="frm" id="loginjsp">
	<br>
	<center>
	<h2>회원 로그인</h2>
	<br>

			<div class="loginin"><input type="text" name="userid" value="${userid}" placeholder="아이디를 입력하세요."></div>
		<div class="loginin"><input type="password" name="pwd" placeholder="비밀번호를 입력하세요."></div>
			<div class="loginon">
    <button onclick="return loginCheck()">로그인</button>
</div>
<br><br><br><br>

		<div class="loginup">
    		<a href="join.do">알라딘 간편 회원가입</a>
		</div>
				
			${message }


	</center>
</form>
</div>
<%@ include file="../footer.jsp" %>
</body>

</html>