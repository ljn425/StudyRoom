<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- head ----------------------------------->
	<c:import url="../module/head.jsp" />
	<!-- ------------------------------------  -->
	
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['지인 소개', 21],
          ['전단지', 20],
          ['인터넷 검색', 40],
          ['기타', 7],
        ]);

        var options = {
          title: '회원 등록 경로',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
    
    <script type="text/javascript">
				      google.charts.load("current", {packages:["corechart"]});
				      google.charts.setOnLoadCallback(drawChart);
				      function drawChart() {
				        var data = google.visualization.arrayToDataTable([
				          ['Task', 'Hours per Day'],
				          ['지인 소개', 21],
				          ['전단지', 20],
				          ['인터넷 검색', 40],
				          ['기타', 7],
				        ]);
				
				        var options = {
				          title: '회원 등록 경로',
				          pieHole: 0.4,
				        };
				
				        var chart = new google.visualization.PieChart(document.getElementById('donutchart2'));
				        chart.draw(data, options);
				      }
				    </script>
    
</head>
<body>
	<!-- top -->
	<c:import url = "../module/top.jsp" />
	
	<!-- left -->
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<c:import url = "../module/left.jsp" />
	<!-- -------------------------main---------------------------- -->
			<div class="col-md-9 col-lg-10 main">
				<h3>Dashboard > 회원 현황</h3>
				<hr>
				
				<div class="row mb-3">
					<div class="col-xl-3 col-lg-6">
						<div class="card card-inverse card-success">
							<div class="card-block bg-success">
								<div class="rotate">
									<i class="fa fa-user fa-5x"></i>
								</div>
								<h6 class="text-uppercase">총 회원 수</h6>
								<h1 class="display-1">100만</h1>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6">
						<div class="card card-inverse card-danger">
							<div class="card-block bg-danger">
								<div class="rotate">
									<i class="fa fa-list fa-5x"></i>
								</div>
								<h6 class="text-uppercase">입실 회원 수</h6>
								<h1 class="display-1">10만</h1>

							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6">
						<div class="card card-inverse card-info">
							<div class="card-block bg-info">
								<div class="rotate">
									<i class="fa fa-twitter fa-5x"></i>
								</div>
								<h6 class="text-uppercase">미납자 수</h6>
								<h1 class="display-1">${memberNom}명</h1>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6">
						<div class="card card-inverse card-warning">
							<div class="card-block bg-warning">
								<div class="rotate">
									<i class="fa fa-share fa-5x"></i>
								</div>
								<h6 class="text-uppercase">신삼이</h6>
								<h1 class="display-1">36</h1>
							</div>
						</div>
					</div>
				</div>
				<hr>
				
				<div class="row col-sm-12">
					<div id="donutchart" class="col-sm-6" style="width: 700px; height: 500px;"></div>
					<div id="donutchart2" class="col-sm-6" style="width: 700px; height: 500px;"></div>
				</div>
	<!-- --------------------------main--------------------------- -->
	
	<c:import url="../module/foot.jsp" />
</body>
</html>