<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="A Bootstrap 4 admin dashboard theme that will get you started. The sidebar toggles off-canvas on smaller screens. This example also include large stat blocks, modal and cards. The top navbar is controlled by a separate hamburger toggle button." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" />
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
 
</head>
<style>
	.pager .disabled>a, .pager .disabled>a:focus, .pager .disabled>a:hover, .pager .disabled>span{
		color: green;
	}
</style>
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
    <h1>독서실 회원 리스트</h1>
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
            <c:forEach var="b" items="${list}">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/member/member_view?inout_num=${b.inout_num}">${b.member_nm}</a></td>
                    <td>${b.member_sex}</td>
                    <td>${b.member_tel}</td>
                    <td>${b.member_addr}</td>
                    <td>${b.member_age}</td>
                    <td>${b.member_seat_state}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <ul class="pagination">
        <c:if test="${currentPage > 1}">
            <li><a href="${pageContext.request.contextPath}/member/member_list?currentPage=${currentPage-1}">이전</a></li>
        </c:if>
        
        <c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
			<c:if test="${i == currentPage}">
				<li class="disabled"><a href="#">${i}</a></li>
			</c:if>
			<c:if test="${i != currentPage}">
				<li><a href="${pageContext.request.contextPath}/member/member_list?currentPage=${i}">${i}</a></li>
			</c:if>
		</c:forEach>
		
        <c:if test="${currentPage < lastPage}">
            <li><a href="${pageContext.request.contextPath}/member/member_list?currentPage=${currentPage+1}">다음</a></li>
        </c:if>
    </ul>
  </div>
 </div>
</div>
</div>

    <form id="searchMemberFrom" action="${pageContext.request.contextPath}/member/member_list" method="post">
	 <div class="form-group">
	 <div class="row">
	  <div class="col-sm-3">
	  </div>
	  <div class="col-sm-2">
	   <select name="so" class="form-control" id="sel1">
	    <option value="member_nm">이름</option>
	    <option value="member_sex">성별</option>
	    <option value="member_age">나이</option>
	    <option value="member_seat_state">회원상태</option>
	  </select>
	  </div>
	   <div class="col-sm-3">
	   		<input name="sv" id="selectValue" type="text" class="form-control" placeholder="검색어를 입력해주세요."/>
	   </div>
	   <input class="btn btn-info" id="searchFrom" type="submit" value="검색"/>
	   </div>
	   </div>
	</form>
	
<!--foot-->
	<c:import url="../module/foot.jsp" />
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
</body>
</html>