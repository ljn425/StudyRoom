<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- head -->
	<c:import url="../module/head.jsp" />
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	//제이쿼리 사용
	//github test..
	$(document).ready(function(){
		//alert('jquery test');
		/* 입력폼 유효성 관련 요구사항
		1. 모든 폼은 공백 또는 "" 문자는 입력되면 안된다.
		2. 비밀번호는 4자이상 입력하여야 한다. */
		$('#addButton').click(function(){
			if($('#boardPw').val.length >3){
				alert('패스워드는 4자이상 이어야 합니다');
				$('#boardPW').focus();
			}else if($('#boardTitle').val()==''){
				alert('제목을 입력하세요');
				$('#boardTitle').focus();
			}else if($('#boardContent').val()==''){
				alert('내용을 입력하세요');
				$('#boardContent').focus();
			}else if($('boardUser').val()==''){
				alert('이름을 입력하세요');
				$('#boardUser').focus();
			}else{
				$('#addForm').submit();
			}	
		});
	});
</script> -->

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
			<h1 style="color:#1D8B15;">직원 공지사항</h1>
			<br>
			<form id="staffboard_form" class="form-horizontal" action="${pageContext.request.contextPath}/staffboard/staffboard_pro" method="post">
			 
			    <div class="form-group has-success">
			  			<label class="control-label" for="formGroupInputLarge">staffboard_pw</label>
			 		<div>
			 			<input class="form-control" type="password" name="staffboard_pw" id="staffboard_pw" placeholder="비밀번호를 입력해주세요">
					</div>
				</div>
				
				<div class="form-group has-success">
			  			<label class="control-label" for="formGroupInputLarge">staffboard_title</label>
			  	 	<div>
			 			<input class="form-control" type="text" name="staffboard_title" id="staffboard_title" placeholder="제목을 입력해주세요">
					</div>
				</div>
				
			     <div class="form-group has-success">
			  			<label class="control-label" for="formGroupInputLarge">staffboard_content</label>
			  	 	<div>
			 			<textarea  class="form-control" name="staffboard_content" id="staffboard_content" rows="5" cols="50" placeholder="내용을 입력해주세요"></textarea>
					</div>
				</div> 
				
			    <div class="form-group has-success">
			  			<label class="control-label" for="formGroupInputLarge">staff_name</label>
			  	 	<div>
			 			<input class="form-control" type="text" name="staff_name" id="staff_name" placeholder="이름을 입력해주세요">
					</div>
				</div> 
				
			    <div>
				    
				   	 <div style="float: right;">
				        <input id="staffboard_form" type="submit" class=" btn btn-success" value="글입력"/>
				        <input type="reset" class="btn btn-success" value="초기화"/>
				        <a class="btn btn-success" href="${pageContext.request.contextPath}/staffboard/staffBoard_list">글목록</a>
				     </div>
				     
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

