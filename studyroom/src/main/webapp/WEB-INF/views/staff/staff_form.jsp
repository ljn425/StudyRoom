<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div class="container">
<h1>직원 등록</h1>

<form action="${pageContext.request.contextPath}/staff/staff_pro" method="post">

<div>직원 아이디</div>
<div><input name="staff_id" id="staff_id" type="text"/></div>
<div>지점 대표코드</div>
<div><input name="branch_owner_cd" id="branch_owner_cd" type="text"/></div>
<div>직원 비밀번호</div>
<div><input name="staff_pw" id="staff_pw" type="text"/></div>
<div>직원 이름</div>
<div><input name="staff_name" id="staff_name" type="text"/></div>
<div>직원 연락처</div>
<div><input name="staff_tel" id="staff_tel" type="text"/></div>
<div>직원주소</div>
<div><input name="staff_addr" id="staff_addr" type="text"/></div>
<div>직원가입일</div>
<div><input name="staff_in_date" id="staff_in_date" type="date"/></div>
<div>
        <input type="submit" value="글입력"/>
        <input type="reset" value="초기화"/>
    </div>
</form>
</div>
</div>
</div>
</div>
<!--foot-->
	<c:import url="../module/foot.jsp" />
</body>
</html>