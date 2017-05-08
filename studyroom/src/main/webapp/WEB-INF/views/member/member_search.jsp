<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$('#searchBtn').click(function(){
			if($('#selectValue').val().length < 2){
				alert("검색어를 2자이상 입력하시오");
			}else if($('#selectValue').val().length >= 2){
				$('#searchFrom').submit();
			}
		});
	});
</script>
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
	<br>
	<h1>독서실 회원 검색 리스트</h1>
	<br>
  <table class="table table-striped">
   <thead>
   	   <tr>
        <th>이름</th>
        <th>성별</th>
        <th>연락처</th>
        <th>주소</th>
        <th>나이</th>
        <th>회원상태</th>
       </tr>
   </thead>
        <tbody>

	<c:forEach var="s" items="${searchlist}">
        <tr>
           <td><a href="${pageContext.request.contextPath}/member/member_view?member_nm=${s.member_nm}">${s.member_nm}</a></td>
           <td>${s.member_sex}</td>
           <td>${s.member_tel}</td>
           <td>${s.member_addr}</td>
           <td>${s.member_age}</td>
           <td>${s.member_seat_state}</td>
        </tr>
 	</c:forEach>
  </tbody>
   
  </table>
 </div>
</div>
</div>

<!--foot-->
	<c:import url="../module/foot.jsp" />
</body>
</html>