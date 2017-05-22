<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 헤드 -->
<c:import url="../module2/head.jsp" />
<!-- JS -->
<c:import url="../module2/jsscript.jsp" />
</head>
<body class="skin-blue">
	<div class="wrapper">
		<!-- 상단 -->
		<c:import url="../module2/top.jsp" />

		<!-- 왼쪽 -->
		<c:import url="../module2/left.jsp" />

		<!-- 수정부분  -->
		<div class="content-wrapper">
			<section class="content-header">
				<h1>
					ZakSim <small>Control panel</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
					<li class="active">직원</li>
				</ol>
			</section>
			<!-- Main content -->
			<section class="content">
				<div class="row">
					<!-- left column -->
					<div class="col-md-12">
						<!-- general form elements -->
						<div class="box box-primary">
							<div class="box-header">
								<h3 class="box-title">직원 수정</h3>
							</div>
							<!-- /.box-header -->
							<!-- form start -->
							<form id="modifyForm" role="form" action="${pageContext.request.contextPath}/staff/staff_modify_pwform_pro" method="post">
								      <div class="form-group">   			
					            <input name="staff_id" value="${param.staff_id}" type="hidden"/>
					             <input name="branch_owner_cd" value="${param.branch_owner_cd}" type="hidden"/>
								<div class="form-group">
									<label for="password">비밀번호</label> 
									<input type="password" class="form-control" id="branch_owner_pw" name="branch_owner_pw" placeholder="비밀번호를 입력해주세요">
								</div>
								</div>
								<div class="box-footer">
									<button type="submit" class="btn btn-primary">글입력</button>
									<%-- <a class="btn btn-primary" href="${pageContext.request.contextPath}/staff/staff_modify?staff_id=${staff.staff_id}">확인</a> --%>
									<button type="reset" class="btn btn-primary">초기화</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>