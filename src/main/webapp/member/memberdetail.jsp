<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="css/member.css">
<script type="text/javascript" src="script/member.js"></script>
</head>

<body>
<%@ include file="../header.jsp" %>
<center>
	<div id="detailbox">
	<div id="detailjsp">
	<br><br>
		<h2>회원 정보</h2>
		<br>
		이름 : ${mVo.username}
		<br><br>
			아이디 : ${mVo.userid}
			<br><br>
			이메일 : ${mVo.email}
			<br><br>
			전화번호 : ${mVo.phone}
			<br><br>
			등급 : <c:choose>
						<c:when test="${mVo.admin==0}">
							 일반회원
            			</c:when>
						<c:otherwise>
							관리자
            			</c:otherwise>
					</c:choose>
			<br><br>
			<div class="buttonst2"><input type="button" value="회원정보변경" onclick="location.href='memberUpdate.do?a=1&userid=${loginUser.userid}'"></div>
	</div>
	</div>
			</center>
<%@ include file="../footer.jsp" %>
</body>

</html>