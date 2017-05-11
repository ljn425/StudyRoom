<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />
</head>
	<body class="skin-blue">
   	 <div class="wrapper">
   	 <!-- 상단 -->
      <c:import url="../module2/top.jsp"/>
      
      <!-- 왼쪽 -->
 	  <c:import url="../module2/left.jsp" />
		
	   <!-- 오른쪽 -->
      <!-- 수정부분  -->
      <div class="content-wrapper">
		  <section class="content-header">
		    <h1>
		       StudyRoom
		      <small>웹 기반 독서실 관리프로그램</small>
		    </h1>
		    <ol class="breadcrumb">
		      <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
		      <li class="active">회원</li>
		    </ol>
		  </section>
  	  
	  <!-- Main content -->
      <section class="content">
			
				<div class="container">
					<h1>독서실 회원 등록</h1><br>
					<form class="form-horizontal" action="${pageContext.request.contextPath}/member/member_form" method="post">
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">독서실회원코드</label>
							<input type="text" class="form-control" id="member_cd" name="member_cd" placeholder="독서실회원코드를 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">지점 대표코드</label>
							<select class="form-control" name="branch_owner_cd" id="branch_owner_cd" > 
								<option value="B0010" selected>&nbsp;</option> 
							     <option value="B0011">B011</option> 
							     <option value="B0016">B016</option> 
							     <option value="B0017">B017</option> 
							     <option value="B0018">B018</option> 
							     <option value="B0019">B019</option>
							</select>
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
							<input type="text" class="form-control" id="member_addr" name="member_addr" placeholder="주소를 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">나이</label>
							<input type="text" class="form-control" id="member_age" name="member_age" placeholder="나이를 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">회원상태</label>
							<input type="text" class="form-control" id="member_seat_state" name="member_seat_state" placeholder="회원상태를 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">등록경로</label>
							<select class="form-control" name="member_regi_path" id="member_regi_path" > 
								<option value="기타" selected>등록 경로를 입력해 주세요.</option> 
								<option value="지인소개">지인소개</option> 
								<option value="인터넷">인터넷</option> 
								<option value="플래카드">플래카드</option> 
								<option value="전단지">전단지</option> 
								<option value="기타">기타</option> 
							</select>
						</div><hr><br>
						<div>
							<input class="btn btn-success" type="submit" value="글입력"/>
							<input class="btn btn-success" type="reset" value="초기화"/>
						</div><br><br>
					</form>
				</div>	
			 </section> 
		</div>
	</div>	
</body>
</html>