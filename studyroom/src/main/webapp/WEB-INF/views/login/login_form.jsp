<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kr">
<head>
	<meta charset="UTF-8">
	<title>프렌차이즈:독서실</title>
		<link rel= "stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
	</head>
	<body>
	${sessionScope.branchOwner.branch_owner_nm}
	<!-- Form-->
	<div class="form">
	  <div class="form-toggle"></div>
	  <div class="form-panel one">
	    <div class="form-header">
	      <h1>Account Login</h1>
	    </div>
	    <div class="form-content">
	      <form action="${pageContext.request.contextPath}/login/loginpro" method="post">
	        <div class="form-group">
	          <label for="username">아이디</label>
	          <input type="text" id="username" name="branch_owner_id" value="bid001" required="required"/>
	        </div>
	        <div class="form-group">
	          <label for="password">비밀번호</label>
	          <input type="password" id="password" name="branch_owner_pw"  value="bpw001" required="required"/>
	        </div>
	        <div class="form-group">
	          <label class="form-remember">
	            <input type="checkbox"/>Remember Me
	          </label><a href="#" class="form-recovery">비밀번호찾기</a>
	        </div>
	        <div class="form-group">
	          <button type="submit">로그인</button>
	        </div>
	      </form>
	    </div>
	  </div>
	  <div class="form-panel two">
	    <div class="form-header">
	      <h1>Register Account</h1>
	    </div>
	    <div class="form-content">
	      <form>
	        <div class="form-group">
	          <label for="username">Username</label>
	          <input type="text" id="username" name="username" required="required"/>
	        </div>
	        <div class="form-group">
	          <label for="password">Password</label>
	          <input type="password" id="password" name="password" required="required"/>
	        </div>
	        <div class="form-group">
	          <label for="cpassword">Confirm Password</label>
	          <input type="password" id="cpassword" name="cpassword" required="required"/>
	        </div>
	        <div class="form-group">
	          <label for="email">Email Address</label>
	          <input type="email" id="email" name="email" required="required"/>
	        </div>
	        <div class="form-group">
	          <button type="submit">Register</button>
	        </div>
	      </form>
	    </div>
	  </div>
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
	<script type="text/javascript">
	$(document).ready(function() {
	  var panelOne = $('.form-panel.two').height(),
	    panelTwo = $('.form-panel.two')[0].scrollHeight;
	
	  $('.form-panel.two').not('.form-panel.two.active').on('click', function(e) {
	    e.preventDefault();
	
	    $('.form-toggle').addClass('visible');
	    $('.form-panel.one').addClass('hidden');
	    $('.form-panel.two').addClass('active');
	    $('.form').animate({
	      'height': panelTwo
	    }, 200);
	  });
	
	  $('.form-toggle').on('click', function(e) {
	    e.preventDefault();
	    $(this).removeClass('visible');
	    $('.form-panel.one').removeClass('hidden');
	    $('.form-panel.two').removeClass('active');
	    $('.form').animate({
	      'height': panelOne
	    }, 200);
	  });
	});
</script>
</body>
</html>
