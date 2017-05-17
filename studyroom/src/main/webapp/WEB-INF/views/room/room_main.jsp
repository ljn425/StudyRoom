<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
  <head>
    <!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
  	<!-- JS -->
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<script>
		$(document).ready(function(){
			console.log('안녕');
			var contextPath = '<c:out value='${pageContext.request.contextPath}'/>';
			$('.seat_btn').click(function(){
				console.log('클릭');
				var seat_cd = $(this).attr('value');
				console.log(seat_cd);

			    var branch_owner_cd = $("input[name=chk]:eq(0)").val();
			    console.log(branch_owner_cd);
			    var room_cd = $("input[name=chk]:eq(1)").val();
			    console.log(room_cd);
			    var member_cd = $("#hi").val();
			    console.log(member_cd);

				window.open(contextPath+'/payment/newwindow?branch_owner_cd='+branch_owner_cd+'&room_cd='+room_cd+'&seat_cd='+seat_cd+'&member_cd='+member_cd, '_blank', 'toolbar=yes,scrollbars=yes,resizable=yes,top=100,left=600,width=500,height=700');
			});
		});
	</script>
	<style>
		
	</style>

</head>
<body class="skin-blue">
    <div class="wrapper">
    <!-- 상단 -->
      <c:import url="../module2/top.jsp"/>
      
      <!-- 왼쪽 -->
 	  <c:import url="../module2/left.jsp" />
		
	  <!-- 오른쪽 -->
      <div class="content-wrapper">
	  <section class="content-header">
	    <h1>
	       	열람실
	      <small>관리</small>
	    </h1>
	    
	    <ol class="breadcrumb">
	      <li><a href="${pageContext.request.contextPath}/dashboard/today_status"><i class="fa fa-table"></i>Home</a></li>
	      <li class="active">열람실관리</li>
	    </ol>
	  </section>
  	  
  	  <!-- Main content -->
      <section class="content">
	<!-- main -->
	<div class="row">	
	  <div class="col-md-9 col-lg-10 main" id="wrap">		
			<c:forEach var="r" items="${roomlist}">
				<a href="${pageContext.request.contextPath}/room/room_view?room_cd=${r.room_cd}&room_nm=${r.room_nm}"><button class="btn bg-purple margin">열람실 ${r.room_nm}</button></a>
				
			<div class="col-sm-12">
				<c:forEach var="s" items="${seatlist}">
					<c:if test="${s.room_cd eq r.room_cd}">
					 <input type="hidden" class="get_seat" value="${s.seat_cd}"/>
	 				 <input type="hidden" name="chk" id="chk" value="${s.branch_owner_cd}">
					 <input type="hidden" name="chk" id="chk" value="${s.room_cd}">
					 <input type="hidden" name="chk" id="hi" value="${s.member_cd}">	
					 <button class="btn bg-olive btn-flat margin seat_btn" value="${s.seat_cd}">	
						<p>열람석${s.seat_cnumber}</p>
							<c:choose>
							 <c:when test="${s.member_nm eq null}">
								<p> [빈좌석]</p>
							 </c:when>
							 <c:otherwise>
							 	<p class="seat_color"> [${s.member_nm}]</p>
							 </c:otherwise>
							</c:choose>
						</button>
					</c:if>		
				</c:forEach>			
			</div>
			<hr>

			</c:forEach>
	
				
				</div> <!-- col-md-9 col-lg-10 main -->
			</div><!-- row -->
			</section><!-- content -->
		</div><!-- content-wrapper -->
	   </div><!-- wrapper -->

<c:import url="../module2/jsscript.jsp" />
</body>
</html>
