<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	하이
	${sessionScope.branchOwner.branch_owner_nm}
	${sessionScope.branchOwner.owner_nm}님 안녕하세요.

	
	<a href="${pageContext.request.contextPath}/login/logout">로그아웃</a>	
</body>
</html>