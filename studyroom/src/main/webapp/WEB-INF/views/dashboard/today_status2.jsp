<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>ZacSIM Dashboard</title>
  <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
  <!-- Bootstrap 3.3.2 -->
  <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <!-- Font Awesome Icons -->
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <!-- Ionicons -->
  <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
  <!-- Theme style -->
  <link href="${pageContext.request.contextPath}/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
  <!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
  <link href="${pageContext.request.contextPath}/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
</head>
<body class="skin-blue">
    <div class="wrapper">
      <!-- 상단 -->
      <c:import url="../module2/top.jsp"/>
      <!-- 왼쪽 -->
 	  <c:import url="../module2/left.jsp" />
      
	  <!-- ---------------------내용 바로 위----------------------------- -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1> 오늘의 현황
            <small>preview sample</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
            <li class="active">오늘의 현황</li>
          </ol>
        </section>

		<!-- -----------------------내용!!!------------------------------ -->	
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
		<input id="todayMember" type="hidden" value="${todayMember}"/>
		
        <section class="content">
  
           <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>${todayMember}</h3>
                  <p>금일 등록 회원</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>${useMemberNo}</h3>
                  <p>이용중 열람석</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>${absenceMemberNo}</h3>
                  <p>부재중 열람석</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>${pamphletNo}</h3>
                  <p>미결제 열람석</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
          </div><!-- /.row -->
          
          <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">이용중 회원 정보</h3>
                  <div class="box-tools">
                    <div class="input-group">
                      <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search"/>
                      <div class="input-group-btn">
                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tr>
                      <th>열람실</th>
                      <th>열람석</th>
                      <th>이름</th>
                      <th>성별</th>
                      <th>입실 시간</th>
                      <th>호출 메세지</th>
                    </tr>
                    <c:forEach var="m" items="${useMemberList}">
	                    <tr>
	                      <td>201호</td>
	                      <td>${m.seat_cd}</td>
	                      <td>${m.member_nm}</td>
	                      <td>${m.member_sex}</td>
	                      <td>11-7-2014</td>
	                      <td><a href="#"><span class="label label-warning">Calling</span></a></td>
	                    </tr>
                    </c:forEach>
                  </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
          </div>
  		  
  		  <div class="row">
            <div class="col-md-6">
              <!-- DONUT CHART 1 -->
              <div class="box box-danger">
                <div class="box-header">
                  <h3 class="box-title">열람실 이용자 비율</h3>
                </div>
                <div class="box-body chart-responsive">
                  <div class="chart" id="now-room-num" style="height: 300px; position: relative;"></div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (LEFT) -->
            
            
            <div class="col-md-6">
			  <!-- DONUT CHART 2 -->
              <div class="box box-danger">
                <div class="box-header">
                  <h3 class="box-title">이용자 연령 비율</h3>
                </div>
                <div class="box-body chart-responsive">
                  <div class="chart" id="now-age-status" style="height: 300px; position: relative;"></div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col (RIGHT) -->
            
          </div><!-- /.row -->
  		  
        </section><!-- /.content -->

      </div><!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Version</b> 2.0
        </div>
        <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved.
      </footer>
    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.3 -->
    <script src="${pageContext.request.contextPath}/resources/plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='${pageContext.request.contextPath}/resources/plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath}/resources/dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="${pageContext.request.contextPath}/resources/dist/js/demo.js" type="text/javascript"></script>
    <!-- Morris.js charts -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/plugins/morris/morris.min.js" type="text/javascript"></script>

    <!-- Page script -->
     <script type="text/javascript">
      $(function () {
        "use strict";
        
      	//DONUT CHART
		  var donut = new Morris.Donut({
		    element: 'now-room-num',
		    resize: true,
		    colors: ["#3c8dbc", "#f56954", "#00a65a"],
		    data: [
		      {label: "201호", value: 12},
		      {label: "202호", value: 30},
		      {label: "203호", value: 20}
		    ],
		    hideHover: 'auto'
		  });
		 
      
   	 	//DONUT CHART
	     var donut = new Morris.Donut({
	       element: 'now-age-status',
	       resize: true,
	       colors: ["#F15F5F", "#E5D85C", "#86E57F", "#6799FF", "#F361DC"],
	       data: [
	         {label: "10대", value: 12},
	         {label: "20대", value: 30},
	         {label: "30대", value: 12},
	         {label: "40대", value: 6},
	         {label: "기타 연령", value: 3}
	       ],
	       hideHover: 'auto'
	     });
	     
	   });
     </script>
  </body>
</html>
