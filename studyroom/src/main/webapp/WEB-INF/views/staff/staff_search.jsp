<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
하이
	<c:forEach var="s" items="${searchlist}">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/staffView?staff_id=${s.staff_id}">${s.staff_id}</a></td>
                    <td>${s.branch_owner_cd}</td>
                    <td>${s.staff_name}</td>
                    <td>${s.staff_tel}</td>
                    <td>${s.staff_addr}</td>
                    <td>${s.staff_in_date}</td>
                </tr>
 	</c:forEach>
</body>
</html>