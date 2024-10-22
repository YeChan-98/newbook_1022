<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/product.js"></script>
</head>

<body>
<%@ include file="../header.jsp" %>

	<div id="wrapwrite" align="center">
		<br><br>
		<h1>상품 등록 - 관리자 페이지</h1>
		<br><br>
		<form method="post" enctype="multipart/form-data" name="frm">
			<table>
				<tr>
					<th>도 서 명</th>
					<td><input type="text" name="productname" size="75"></td>
				</tr>
				<tr>
					<th>가 격</th>
					<td><input type="text" name="price"> 원</td>
				</tr>
				<tr>
					<th>사 진</th>
					<td><input type="file" name="pictureUrl"><br>
						(주의사항 : 이미지를 변경하고자 할때만 선택하시오)</td>
				</tr>
				<tr>
					<th>책 줄거리</th>
					<td><textarea cols="80" rows="15" name="description"></textarea></td>
				</tr>
			</table>
			<br> <div class="buttonst"><input type="submit" value="등록"
				onclick="return productCheck()"></div> <div class="buttonst"><input type="reset"
				value="다시작성"></div> <div class="buttonst"><input type="button" value="목록"
				onclick="location.href='productList.do'"></div>
		</form>
	</div>
	<%@ include file="../footer.jsp" %>
</body>

</html>