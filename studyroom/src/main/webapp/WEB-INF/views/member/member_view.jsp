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
	<h1>독서실 회원 상세정보</h1>
	<br>
	<table class="table table-hover">
         <tbody>
         	
         	 <tr>
                <td>member_cd :</td>
                <td>${member.member_cd}</td>
            </tr>
            <tr>
                <td>member_nm :</td>
                <td>${member.member_nm}</td>
            </tr>
            <tr>
                   <td>member_sex :</td>
                   <td>${member.member_sex}</td>
            </tr>
            <tr>
                   <td>member_tel :</td>
                   <td>${member.member_tel}</td>
            </tr>
            <tr>
                   <td>member_addr :</td>
                   <td>${member.member_addr}</td>
            </tr>
            <tr>
                   <td>member_age :</td>
                   <td>${member.member_age}</td>
            </tr>
            <tr>
                   <td>member_seat_state :</td>
                   <td>${member.member_seat_state}</td>
            </tr>
        </tbody>
    </table>
   <a class="btn btn-secondary" href="${pageContext.request.contextPath}/member/member_modify?member_cd=${member.member_cd}">회원 수정</a>
    <a class="btn btn-secondary" href="${pageContext.request.contextPath}/member/member_remove?member_cd=${member.member_cd}">회원 삭제</a>
    <a class="btn btn-secondary" href="${pageContext.request.contextPath}/member/member_list">회원리스트</a>
</div>
</div>
</div>
</div>

<!--foot-->
	<c:import url="../module/foot.jsp" />
</body>
</html>