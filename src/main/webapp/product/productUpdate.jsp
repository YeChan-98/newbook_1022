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
	<div id="wrapup" align="center">
	<br><br>
		<h1>상품 수정 - 관리자 페이지</h1>
		<br><br>
		<form method="post" enctype="multipart/form-data" name="frm">
			<input type="hidden" name="code" value="${product.code}"> 
			<input type="hidden" name="nonmakeImg" value="${product.pictureUrl}">
		
		<table>
              <tr>
                <td>
                  <c:choose>
                    <c:when test="${empty product.pictureUrl}">
                      <div class="list"><img src="upload/noimage.gif"></div>
                    </c:when>
                    <c:otherwise>
                      <div class="list"><img src="upload/${product.pictureUrl}"></div>
                    </c:otherwise>
                  </c:choose>
                </td>
                <td>
                  <table>
                    <tr>
                      <th style="width:80px"> 도서명</th>
                      <td>
                        <input type="text" name="productname" value="${product.productName}" size="80">
                      </td>
                    </tr>
                    <tr>
                      <th>가격</th>
                      <td><input type="text" name="price" value="${product.price}"> 원</td>
                    </tr>
                    <tr>
                      <th>사진</th>
                      <td>
                        <input type="file" name="pictureUrl"><br>
                        (주의사항 : 이미지를 변경하고자 할때만 선택하시오)
                      </td>
                    </tr>
                    <tr>
                      <th>줄거리</th>
                      <td><textarea cols="90" rows="10" name="description">${product.description}</textarea></td>
                    </tr>
                  </table>
                  <br>
                  <div class="buttonst"><input type="submit" value="수정" onclick="return productCheck()"></div>
                  <div class="buttonst"><input type="reset" value="다시 수정"></div>
                  <div class="buttonst"><input type="button" value="목록" onclick="location.href='productList.do'"></div>
                </td>
              </tr>
            </table>
		</form>	
	</div>
<%@ include file="../footer.jsp" %>
</body>

</html>