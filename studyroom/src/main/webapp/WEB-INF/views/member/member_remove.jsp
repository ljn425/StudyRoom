<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script>
    $(document).ready(function(){
        $('#removeButton').click(function(){
            if($('#branch_owner_cd').val()=='') {
                alert('지점대표코드를 정확히 입력하세요');
                $('#branch_owner_cd').focus();
            } else {
                $('#removeForm').submit();
            }
        });
    });
</script>

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
<h1>독서실 회원 삭제</h1>
     <form  class="form-inline" id="removeForm" action="${pageContext.request.contextPath}/member/member_remove" method="post">
         <input name="member_nm" value="${param.member_nm}" type="hidden"/>
         <div class="form-group">
             <label for="branch_owner_cd">지점대표코드 :</label>
             <input class="form-control" id="branch_owner_cd" name="branch_owner_cd" type="password">
         </div>
         <div>
       		 <input type="submit" value="글입력"/>
        	<input type="reset" value="초기화"/>
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

