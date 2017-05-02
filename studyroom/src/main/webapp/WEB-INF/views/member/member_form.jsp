<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="A Bootstrap 4 admin dashboard theme that will get you started. The sidebar toggles off-canvas on smaller screens. This example also include large stat blocks, modal and cards. The top navbar is controlled by a separate hamburger toggle button." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />

<title>독서실 회원 폼</title>
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
    <h1>독서실 회원</h1>
    <br>
    <form id="memberform" action="${pageContext.request.contextPath}/member/member_form" method="post">
        <div class="form-group">
            <b>독서실회원코드:</b><br>
            <input id="member_cd" type="text" class="" name="member_cd">
        </div>
        <br>
        <div class="form-group">
            <b>지점대표코드:</b><br>
            <input id="branch_owner_cd" type="text" class="" name="branch_owner_cd">
        </div>
        <br>
        <div class="form-group">
            <b>직원아이디:</b><br>
            <input id="staff_id" type="text" class="" name="staff_id">
        </div>
        <br>
        <div class="form-group">
            <b>이름:</b><br>
		   <input id="member_nm" type="text" class="" name="member_nm">
		</div>
        <br>
        <div class="form-group">
        	<b>성별:</b><br>
		   <input id="member_sex" type="text" class="" name="member_sex">
		</div>
		  <br>
		<div class="form-group">
		   <b>연락처:</b><br>
		   <input id="member_tel" type="text" class="" name="member_tel">
		</div>
		  <br>
		<div class="form-group">
		   <b>주소:</b><br>
		   <input id="member_addr" type="text" class="" name="member_addr">
		</div>
		  <br>
		<div class="form-group">
		   <b>나이:</b><br>
		   <input id="member_age" type="text" class="" name="member_age">
		</div>
		  <br>
		<div class="form-group">
		   <b>회원상태:</b><br>
		   <input id="member_seat_state" type="text" class="" name="member_seat_state">
		</div>
		  <br>
		<div>
        	<input class="btn btn-info" id="addButton" type="submit" value="회원등록"/>
  			<input class="btn btn-info" type="reset" value="초기화"/>
  			<a class="btn btn-info" href="${pageContext.request.contextPath}/member/member_list">회원목록</a>
		</div>	
	   </form>	
	  </div> 
	</div>
  </div>
</div>
<!--foot-->
	<c:import url="../module/foot.jsp" />
	<script>
      $(document).ready(function(){
    	  console.log("ㅇㅇㅇ");
        $('#addButton').click(function(){
            if($('#member_cd').val()=='') {
                alert('독서실회원코드를 입력하시오');
                $('#member_cd').focus();
            } else if($('#branch_owner_cd').val()=='') {
                alert('지점대표코드를 입력하시오');
                $('#branch_owner_cd').focus();    
            } else if($('#staff_id').val()=='') {
                alert('직원아이디를 입력하시오');
                $('#staff_id').focus();
            } else if($('#member_nm').val()=='') {
                alert('이름을 입력하시오');
                $('#member_nm').focus();
            } else if($('#member_sex').val()=='') {
                alert('성별을 입력하시오');
                $('#member_sex').focus();
            } else if($('#member_tel').val()=='') {
                alert('연락처를 입력하시오');
                $('#member_tel').focus();
            } else if($('#member_addr').val()=='') {
                alert('주소를 입력하시오');
                $('#member_addr').focus();
            } else if($('#member_age').val()=='') {
                alert('나이를 입력하시오');	
                $('#member_age').focus(); 
            } else if($('#member_seat_state').val()=='') {
                alert('회원상태를 입력하시오');
                $('#member_seat_state').focus();    
            } else {
                $('#addButton').submit();
            }
        });
    });
</script>
</body>
</html>