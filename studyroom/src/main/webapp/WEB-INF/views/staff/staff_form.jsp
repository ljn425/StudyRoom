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
			<div class="col-md-9 col-lg-10 main" id="wrap">
<div class="container">
<h1>직원 등록</h1>
<br>
<form class="form-horizontal" action="${pageContext.request.contextPath}/staff/staff_pro" method="post">

<div class="form-group has-success">
  <label class="control-label" for="inputLarge">직원아이디</label>
  <input type="text" class="form-control" id="staff_id" name="staff_id" placeholder="아이디를 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">지점 대표코드</label>
  <SELECT class="form-control" name="branch_owner_cd" id="branch_owner_cd" > 
     <option value="0010" selected>&nbsp;</option> 
     <option value="0011">011</option> 
     <option value="0016">016</option> 
     <option value="0017">017</option> 
     <option value="0018">018</option> 
     <option value="0019">019</option> 
    </SELECT>
  <!-- <input type="text" class="form-control" id="branch_owner_cd" name="branch_owner_cd" placeholder="지점 대표코드를 입력해주세요"> -->
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">직원 비밀번호</label>
  <input type="password" class="form-control" id="staff_pw" name="staff_pw" placeholder="비밀번호를 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">직원 이름</label>
  <input type="text" class="form-control" id="staff_name" name="staff_name" placeholder="이름을 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">직원 연락처</label>
  <input type="text" class="form-control" id="staff_tel" name="staff_tel" placeholder="연락처를 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">직원 주소</label>
  <input type="text" class="form-control" id="staff_addr" name="staff_addr" placeholder="주소를 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">직원 가입일</label>
  <input type="date" class="form-control" id="staff_in_date" name="staff_in_date">
</div>
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