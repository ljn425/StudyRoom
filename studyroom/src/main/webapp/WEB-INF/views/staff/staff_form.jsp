<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>직원 관리 </title>
</head>
<body>
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
</body>
</html>