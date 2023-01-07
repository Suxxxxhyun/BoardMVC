<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>게시판</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/shopping.css">
	<script type="text/javascript" src="script/product.js"></script>
	</head>
	<body>
		<div align="center">
			<h1>비밀번호 확인</h1>
			<form action="BoardServlet" name="frm" method="get">
				<input type="hidden" name="command" value="board_check_pass">
				<!-- 이떄의 param객체는 request의 getParameter()와 동일한 역할인 파라미터 값을 알려준다. -->
				<input type="hidden" name="num" value="${param.num }">
				<table style="width:80%">
					<tr>
						<th>비밀번호</th>
						<td>
							<input type="password" name="pass" size="20">
						</td>
					</tr>
				</table>
				<br>
				<input type="submit" value="확인" onclick="return passCheck()">
				<br><br>${message }
			</form>
		</div>
	</body>
</html>