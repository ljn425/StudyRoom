<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <c:import url="../module/head.jsp" />
  <c:import url="../module/foot.jsp" />
</head>
<body>
	<!-- top -->
	<c:import url = "../module/top.jsp" />
	<!-- left -->
	<div class="container-fluid" id="main">
	  <div class="row row-offcanvas row-offcanvas-left">
	<c:import url = "../module/left.jsp" />
	<!--/모듈 여기까지-->
	<!-- main -->
	  <div class="col-md-9 col-lg-10 main" id="wrap">
	  	<h6><span>열람실</span></h6>
	  	<hr>
			<h2 class="sub-header">등록된 열람실</h2>
				<div class="card-deck-wrapper mb-3">
					<div class="card-deck">
						<div class="card card-inverse card-success text-center">
							<div class="card-block">
								<blockquote class="card-blockquote">
									<p>열람실 201호></p>
									<footer>
										총 좌석 수 : 16
									</footer>
								</blockquote>
							</div>
						</div>
						
						<div class="card card-inverse card-danger text-center">
							<div class="card-block">
								<blockquote class="card-blockquote">
									<p>열람실 202호</p>
									<footer>
										총 좌석 수 : 17
									</footer>
								</blockquote>
							</div>
						</div>
						<div class="card card-inverse card-warning text-center">
							<div class="card-block">
								<blockquote class="card-blockquote">
									<p>열람실 203호</p>
									<footer>
										총 좌석 수 : 7
									</footer>
								</blockquote>
							</div>
						</div>
						<div class="card card-inverse card-info text-center">
							<div class="card-block">
								<blockquote class="card-blockquote">
									<p>열람실 204호</p>
									<footer>
										총 좌석 수 : 11
									</footer>
								</blockquote>
							</div>
						</div>
					</div>
				</div>
		<hr>
		<a href="${pageContext.request.contextPath}/room/chair_form"><button>열람실 추가하기</button></a>
		
				
	  </div>
	 </div>
	</div>	
</body>
</html>