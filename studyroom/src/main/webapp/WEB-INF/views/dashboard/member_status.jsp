<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- head ----------------------------------->
		<c:import url="../module/head.jsp" />
	<!-- ------------------------------------  -->
	<c:import url="../module/foot.jsp" />
	
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<!-- 등록경로 -->
	<script type="text/javascript">
		$(document).ready(function(){
			var pamphletNo = $('#pamphletNo').val();
			var placardNo = $('#placardNo').val();
			var introductionNo = $('#introductionNo').val();
			var internetNo = $('#internetNo').val();
			var etctcNo = $('#etctcNo').val();
			
			pamphletNo*=1; // int 변환
			placardNo*=1;
			introductionNo*=1;
			internetNo*=1;
			etctcNo*=1;
			
			console.log('pamphletNo :' +  pamphletNo);
			console.log('placardNo :' +  placardNo);
			console.log('introductionNo :' +  introductionNo);
			console.log('internetNo :' +  internetNo);
			console.log('etctcNo :' +  etctcNo);
			
			google.charts.load("current", {packages:["corechart"]});
			google.charts.setOnLoadCallback(drawChart);
			function drawChart() {
			 var a = a;
			  var data = google.visualization.arrayToDataTable([
			    ['Task', 'Hours per Day'],
			    ['지인 소개', introductionNo],
			    ['전단지', pamphletNo],
			    ['인터넷 검색', internetNo],
			    ['플래카드', placardNo],
			    ['기타', etctcNo],
			  ]);
			  var options = {
			    title: '회원 등록 경로',
			    pieHole: 0.3,
			  };
			  var chart = new google.visualization.PieChart(document.getElementById('memberPath'));
			  chart.draw(data, options);
			}
		});
    </script>
    <!-- 회원성비 -->
    <script type="text/javascript">
		$(document).ready(function(){	
			var MenNo = $('#MenNo').val();
			var womanNo = $('#womanNo').val();
			
			MenNo*=1;
			womanNo*=1;
			
			console.log('MenNo :' +  MenNo);
			console.log('womanNo :' +  womanNo);
		
			google.charts.load("current", {packages:["corechart"]});
			google.charts.setOnLoadCallback(drawChart);
			function drawChart() {
			  var data = google.visualization.arrayToDataTable([
			    ['Task', 'Hours per Day'],
			    ['남성회원', MenNo],
			    ['여성회원', womanNo]
			  ]);
			  var options = {
			    title: '회원 성비',
			    pieHole: 0.3,
			  };
			  var chart = new google.visualization.PieChart(document.getElementById('sexRatio'));
			  chart.draw(data, options);
		  }
		});
    </script>
    <!-- 열람석상태 -->
	<script type="text/javascript">
		$(document).ready(function(){
			var useMemberNo = $('#useMemberNo').val();
			var absenceMemberNo = $('#absenceMemberNo').val();
			var unpaidMemberNo = $('#unpaidMemberNo').val();
			
			useMemberNo*=1; // int 변환
			absenceMemberNo*=1;
			unpaidMemberNo*=1;
			
			console.log('useMemberNo :' +  useMemberNo);
			console.log('absenceMemberNo :' +  absenceMemberNo);
			console.log('unpaidMemberNo :' +  unpaidMemberNo);
			
			google.charts.load('current', {packages: ['corechart', 'bar']});
			google.charts.setOnLoadCallback(drawBasic);
			function drawBasic() {
				var a = a;	
				var data = google.visualization.arrayToDataTable([
				  ['열람석', '해당 인원수'],
				  ['사용중', useMemberNo],
				  ['부재중', absenceMemberNo],
				  ['미결제', unpaidMemberNo],
				]);
				
				var options = {
				  title: '열람석 통계',
				  chartArea: {width: '50%'},
				  hAxis: {
				    title: '인원수',
				    minValue: 0
				  },
				  vAxis: {
				    title: '열람실 A'
				  }
				};
				
				var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
				
				chart.draw(data, options);
			}
		});
	</script>
</head>
<body>
	<!-- top -->
	<c:import url="../module/top.jsp" />
	
	<!-- left -->
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<c:import url = "../module/left.jsp" />
	<!-- -------------------------main---------------------------- -->	
			<!-- 사각형 박스 정보 차트 start -->
			<div class="col-md-9 col-lg-10 main">
			
			<input id="useMemberNo" type="hidden" value="${useMemberNo}"/>	
			<input id="absenceMemberNo" type="hidden" value="${absenceMemberNo}"/>
			<input id="unpaidMemberNo" type="hidden" value="${unpaidMemberNo}"/>
			<input id="pamphletNo" type="hidden" value="${pamphletNo}"/>	
			<input id="placardNo" type="hidden" value="${placardNo}"/>
			<input id="introductionNo" type="hidden" value="${introductionNo}"/>
			<input id="internetNo" type="hidden" value="${internetNo}"/>	
			<input id="etctcNo" type="hidden" value="${etctcNo}"/>
			<input id="MenNo" type="hidden" value="${MenNo}"/>	
			<input id="womanNo" type="hidden" value="${womanNo}"/>
			
				<h3>Dashboard > 회원 현황</h3>
				<%-- 
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
				</div> --%>
				<hr>
	<!-- 사각형 박스 정보 차트 end -->
	
	<!-- bar 차트 start-->	
				<div id="chart_div" style="width: 1200px; height: 350px;"></div>
	<!-- bar 차트 end-->
				<hr>
	<!-- 등록 경로 원형 차트 start-->	
				<div class="row col-sm-12">		
					<div id="memberPath" class="col-sm-6" style="width: 600px; height: 600px;"></div>
					<div id="sexRatio" class="col-sm-6" style="width: 600px; height: 600px;"></div>
				</div>
	<!-- 등록 경로 원형 차트 end -->	
	
		</div>
	<!-- --------------------------main end--------------------------- -->
	
	
</body>
</html>