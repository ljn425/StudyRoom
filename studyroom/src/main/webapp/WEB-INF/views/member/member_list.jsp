<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- bootstrap을 사용하기 위한 CDN주소 -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
 
<!-- jquery를 사용하기위한 CDN주소 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
<!-- bootstrap javascript소스를 사용하기 위한 CDN주소 -->
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
</head>
<body>
<div class="container">
    <h1>독서실 회원 리스트</h1>
    <div>전체행의 수 : ${totalRowCount}</div>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>출결번호</th>
                <th>이름</th>
                <th>성별</th>
                <th>연락처</th>
                <th>등록일</th>
                <th>기간만료일</th>
                <th>나이</th>
                <th>회원상태</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="b" items="${list}">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/member/member_view?member_cd=${b.member_cd}">${b.inout_num}</a></td>
                    <td>${b.member_nm}</td>
                    <td>${b.member_sex}</td>
                    <td>${b.member_tel}</td>
                    <td>${b.member_regi_date}</td>
                    <td>${b.member_end_date}</td>
                    <td>${b.member_age}</td>
                    <td>${b.member_seat_state}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <ul class="pager">
        <c:if test="${currentPage > 1}">
            <li class="previous"><a href="${pageContext.request.contextPath}/member/member_list?currentPage=${currentPage-1}">이전</a></li>
        </c:if>
        <c:if test="${currentPage < lastPage}">
            <li class="next"><a href="${pageContext.request.contextPath}/member/member_list?currentPage=${currentPage+1}">다음</a></li>
        </c:if>
    </ul>
    <div>
        <a class="btn btn-default" href="${pageContext.request.contextPath}/member/member_form">게시글 입력</a>
    </div>
</div>
</body>
</html>