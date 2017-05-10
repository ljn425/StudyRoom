<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
	 <!-- 수정부분  -->
      <div class="content-wrapper">
		  <section class="content-header">
		    <h1>
		       ZakSim
		      <small>Control panel</small>
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
                  <h3 class="box-title">직원 등록</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form role="form" action="${pageContext.request.contextPath}/staff/staff_pro" method="post">
                  <div class="box-body">
                    <div class="form-group">
                      <label for="exampleInputstaffid">직원아이디</label>
                      <input type="text" class="form-control" id="staff_id" name="staff_id" placeholder="아이디를 입력해주세요">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputFile">File input</label>
                      <input type="file" id="exampleInputFile">
                      <p class="help-block">Example block-level help text here.</p>
                    </div>
                    <div class="checkbox">
                      <label>
                        <input type="checkbox"> Check me out
                      </label>
                    </div>
                  </div><!-- /.box-body -->

                  <div class="box-footer">
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                </form>
              </div><!-- /.box -->
      
      
<%-- <div class="container">
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
     <option value="B0010" selected>&nbsp;</option> 
     <option value="B0011">B011</option> 
     <option value="B0016">B016</option> 
     <option value="B0017">B017</option> 
     <option value="B0018">B018</option> 
     <option value="B0019">B019</option> 
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
<!-- <div class="form-group has-success">
  <label class="control-label" for="inputLarge">파일첨부</label>
  <input type="file" class="form-control" id="staff_file" name="staff_file" >

</div> -->
<div> --%>
<!--         <input type="submit" value="글입력"/>
        <input type="reset" value="초기화"/>
    </div>
</form> -->
</div>
</div>
</section>
</div>
</div>
</body>
</html>