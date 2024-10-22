<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	<div id="joinbox">
	<form action="join.do" method="post" name="frm" id="joinjsp">
	<h2>회원 가입</h2>
	'*' 표시 항목은 필수 입력 항목입니다.
	<br><br><br>
		<table>
			<tr>
				<td>이름</td>
				<td><div class="loginin"><input type="text" name="username" size="20"></div>*</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><div class="loginin"><input type="text" name="userid" size="20" id="userid"></div>*
					<input type="hidden" name="reid" size="20"> 
					<div class="joinb"><input type="button" value="중복 체크" onclick="idCheck()"></div></td>
			</tr>
			<tr>
				<td>암 호</td>
				<td><div class="loginin"><input type="password" name="pwd" size="20"></div>*</td>
			</tr>
			<tr height="30">
				<td width="80">암호 확인</td>
				<td><div class="loginin"><input type="password" name="pwd_check" size="20"></div>*</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><div class="loginin"><input type="text" name="email" size="20"></div></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><div class="loginin"><input type="text" name="phone" size="20"></div></td>
			</tr>
			<tr>
				<td>등급</td>
				<td><input type="radio" name="admin" value="0"
					checked="checked"> 일반회원 <input type="radio" name="admin"
					value="1"> 관리자</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><div class="joinb1"><input type="submit" value="확인"
					onclick="return joinCheck()"></div> <div class="joinb2"><input type="reset"
					value="취소"></div></td>
			</tr>
			<tr>
				<td colspan="2">${message }</td>
			</tr>
		</table>
	</form>
	</div>
	</center>
<%@ include file="../footer.jsp" %>
</body>

</html>