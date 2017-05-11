<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
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
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">회원 리스트</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <table class="table table-bordered table-hover">
                    <thead>
                      <tr>
                      	<th>독서실 회원코드</th>
		            	<th>이름</th>
		           	    <th>성별</th>
		                <th>연락처</th>
		                <th>주소</th>
		                <th>나이</th>
		                <th>회원상태</th>
            		  </tr>
                    </thead>
                    <tbody>
                      <tr>
			            <c:forEach var="b" items="${list}">
			                <tr>
			                    <td><a href="${pageContext.request.contextPath}/member/member_view?member_cd=${b.member_cd}">${b.member_cd}</a></td>
			                    <td>${b.member_nm}</td>
			                    <td>${b.member_sex}</td>
			                    <td>${b.member_tel}</td>
			                    <td>${b.member_addr}</td>
			                    <td>${b.member_age}</td>
			                    <td>${b.member_seat_state}</td>
	               		    </tr>  
	          		     </c:forEach>
	          	 	  </tr>  
	       			 </tbody>
	       			 </table>  
    <nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
        <c:if test="${currentPage > 1}">
            <li class="page-item">
            	<a class="page-link" href="${pageContext.request.contextPath}/member/member_list?currentPage=${currentPage-1}" aria-label="Previous">
            		<span aria-hidden="true">&laquo;</span>
            		<span class="sr-only">Previous</span>
            	</a>
            </li>	
        </c:if>
        <c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
			<c:if test="${i == currentPage}">
				<li class="page-item"><a class="page-link" href="#">${i}</a></li>
			</c:if>
			<c:if test="${i != currentPage}">
				<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/member/member_list?currentPage=${i}">${i}</a></li>
			</c:if>
		</c:forEach>
		
        <c:if test="${currentPage < lastPage}">
            <li class="page-item">
            	<a class="page-link" href="${pageContext.request.contextPath}/member/member_list?currentPage=${currentPage+1}" aria-label="Next">
            		<span aria-hidden="true">&raquo;</span>
        			<span class="sr-only">Next</span>
            	</a>	
            </li>	
        </c:if>
    </ul>
   </nav> 
  </div>
 </div>
</div>  
</div>
  </section>

    <form id="searchMemberFrom" action="${pageContext.request.contextPath}/member/member_search" method="post">
	 <div class="form-group">
	 <div class="row">
	  <div class="col-sm-3">
	  </div>
	  <div class="col-sm-2">
	   <select name="so" class="form-control" id="sel1">
	   	<option value="member_cd">독서실 회원코드</option>
	    <option value="member_nm">이름</option>
	    <option value="member_sex">성별</option>
	    <option value="member_age">나이</option>
	    <option value="member_seat_state">회원상태</option>
	  </select>
	  </div>
	   <div class="col-sm-3">
	   		<input name="sv" id="selectValue" type="text" class="form-control" placeholder="검색어를 입력해주세요."/>
	   </div>
	   <div class="col-sm-4">
	   		<button class="btn btn-primary" type="button" id="searchBtn" class="btn btn-default">검색</button>
	   </div>
	   </div>
	  </div>
	</form>	
</div>	
</div>	
</body>
</html>