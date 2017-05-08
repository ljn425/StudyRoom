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
<h1>회원 등록</h1>

<form class="form-horizontal" action="${pageContext.request.contextPath}/staff/staff_pro" method="post">

<div class="form-group has-success">
  <label class="control-label" for="inputLarge">독서실회원코드</label>
  <input type="text" class="form-control" id="member_cd" name="member_cd" placeholder="아이디를 입력해주세요">
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
  <label class="control-label" for="inputLarge">직원아이디</label>
  <input type="text" class="form-control" id="staff_id" name="staff_id" placeholder="직원아이디를 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">이름</label>
  <input type="text" class="form-control" id="member_nm" name="member_nm" placeholder="이름을 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">성별</label>
  <input type="text" class="form-control" id="member_sex" name="member_sex" placeholder="성별을 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">연락처</label>
  <input type="text" class="form-control" id="member_tel" name="member_tel" placeholder="연락처를 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">주소</label>
  <input type="date" class="form-control" id="member_addr" name="member_addr" placeholder="주소를 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">나이</label>
  <input type="date" class="form-control" id="member_age" name="member_age" placeholder="나이를 입력해주세요">
</div>
<div class="form-group has-success">
  <label class="control-label" for="inputLarge">회원상태</label>
  <input type="date" class="form-control" id="member_seat_state" name="member_seat_state" placeholder="회원상태를 입력해주세요">
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