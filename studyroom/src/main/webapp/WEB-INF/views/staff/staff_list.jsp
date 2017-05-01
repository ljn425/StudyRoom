<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 리스트</title>
</head>
<body>
<div class="table-responsive">
  <table class="table">
   <thead>
   	<tr>
   	<th>직원 아이디</th>
   	<th>지점 대표코드</th>
   	<th>직원 이름</th>
   	<th>직원 연락처</th>
   	<th>직원 주소</th>
   	<th>직원 가입일</th>
   	</tr>
   </thead>
        <tbody>

	<c:forEach var="s" items="${list}">
                <tr>
                    <td ><a href="${pageContext.request.contextPath}/staffView?staff_id=${s.staff_id}">${s.staff_id}</a></td>
                    <td >${s.branch_owner_cd}</td>
                    <td >${s.staff_name}</td>
                    <td >${s.staff_tel}</td>
                    <td >${s.staff_addr}</td>
                    <td >${s.staff_in_date}</td>
                </tr>
 	</c:forEach>
        </tbody>
   
  </table>
   <div>
        <a href="${pageContext.request.contextPath}/staff/staff_form">직원 추가</a>
    </div>
</div>
</body>
</html>