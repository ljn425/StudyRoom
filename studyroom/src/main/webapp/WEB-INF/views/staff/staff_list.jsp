<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- head -->
	<c:import url="../module/head.jsp" />
</head>
<body>
<!-- top -->
	<c:import url = "../module/top.jsp" />
	
	<!-- left -->
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<c:import url = "../module/left.jsp" />
	
	<!-- main -->
			<div class="col-md-9 col-lg-10 main">
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
</div>
</div>
</div>
<!--foot-->
	<c:import url="../module/foot.jsp" />
</body>
</html>