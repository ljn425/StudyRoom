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
<link rel="stylesheet" href="css/styles.css" />

<script>
    /* $(document).ready(function(){
        $('#addButton').click(function(){
            if($('#joinId').val()=='') {
                alert('아이디를 입력하시오');
                $('#joinId').focus();
            } else if($('#joinPw').val().length <4) {
                alert('비밀번호를 4자 이상 입력하시오');
                $('#joinPw').focus();    
            } else if($('#joinName').val()=='') {
                alert('이름을 입력하시오');
                $('#joinName').focus();
            } else if($('#joinBirth').val()=='') {
                alert('생년월일을 입력하시오');
                $('#joinBirth').focus();
            } else if($('#joinAddr').val()=='') {
                alert('주소를 입력하시오');
                $('#joinAddr').focus();
            } else if($('#joinTel').val()=='') {
                alert('전화번호를 입력하시오');
                $('#joinTel').focus();
            } else if($('#joinEmail').val()=='') {
                alert('이메일을 입력하시오');
                $('#joinEmail').focus(); 
            } else {
                $('#joinForm').submit();
            }
        });
    }); */
</script>

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
        <div class="input-group">
            <b>독서실회원코드:</b><br>
            <input id="member_cd" type="text" class="" name="member_cd">
        </div>
        <br>
        <div class="input-group">
            <b>지점대표코드:</b><br>
            <input id="branch_owner_cd" type="text" class="" name="branch_owner_cd">
        </div>
        <br>
        <div class="input-group">
            <b>직원아이디:</b><br>
            <input id="staff_id" type="text" class="" name="staff_id">
        </div>
        <br>
        <div class="input-group">
            <b>열람석 코드:</b><br>
            <input id="seat_cd" type="text" class="" name="seat_cd">
        </div>
        <br>
        <div class="input-group">
		   <b>출결번호:</b><br>
		   <input id="inout_num" type="text" class="" name="inout_num">
		</div>
		<br>
		<div class="input-group">
		   <b>이름:</b><br>
		   <input id="member_nm" type="text" class="" name="member_nm">
		</div>
		  <br>
		<div class="input-group">
		   <b>성별:</b><br>
		   <input id="member_sex" type="text" class="" name="member_sex">
		</div>
		  <br>
		<div class="input-group">
		   <b>연락처:</b><br>
		   <input id="member_tel" type="text" class="" name="member_tel">
		</div>
		  <br>
		<div class="input-group">
		   <b>주소:</b><br>
		   <input id="member_addr" type="text" class="" name="member_addr">
		</div>
		  <br>
		<div class="input-group">
		   <b>등록일:</b><br>
		   <input id="member_regi_date" type="date" class="" name="member_regi_date">
		</div>
		  <br>
		<div class="input-group">
		   <b>기간만료일:</b><br>
		   <input id="member_end_date" type="date" class="" name="member_end_date">
		</div>
		  <br>
		<div class="input-group">
		   <b>등록경로:</b><br>
		   <input id="member_regi_path" type="text" class="" name="member_regi_path">
		</div>
		  <br>
		<div class="input-group">
		   <b>나이:</b><br>
		   <input id="member_age" type="text" class="" name="member_age">
		</div>
		  <br>
		<div class="input-group">
		   <b>회원상태:</b><br>
		   <input id="member_seat_state" type="text" class="" name="member_seat_state">
		</div>
		  <br>
        <div class="input-group">
        	<input type="submit" class="btn btn-default" value="회원등록">
  			<input type="reset" class="btn btn-default" value="초기화">
  			<a href="${pageContext.request.contextPath}/member/member_list" class="btn btn-info" role="button">회원 목록</a>
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