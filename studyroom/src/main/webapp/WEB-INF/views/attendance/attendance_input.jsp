<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
</head>
<body class="skin-blue">
    <div class="wrapper">
    	<div class="content-wrapper">
    		<section class="content">
				<div class="row">
					<div class="col-md-4">
		              <!-- Info box -->
		              <div class="box box-solid bg-aqua">
		                <div class="box-header">
		                  <h2 class="box-title"><i class="fa fa-bell-o"></i>출결</h2>
		                </div>
		                <div class="box-body">
		                  <form>
		                  	<div class="form-group">
		                      <label for="exampleInputPassword1">출결번호</label>
		                      <input type="password" class="form-control" id="inout_num" name="inout_num" value="0023">
		                      <button type="button" class="btn btn-block btn-info btn-flat" id="check_btn">확인</button>
		                    </div>
		                  </form>
		                </div><!-- /.box-body -->
		              </div><!-- /.box -->
		            </div><!-- /.col -->
		            <div class="col-md-4">
		              <!-- Warning box -->
		              <div class="box box-solid bg-yellow">
		                <div class="box-header">
		                  <h3 class="box-title"></h3>
		                </div>
		                <div class="box-body">
							홍길동님의 입실처리가 완료되었습니다.
		                </div><!-- /.box-body -->
		              </div><!-- /.box -->
		            </div><!-- /.col -->
				</div>
			</section>
		</div>
	</div>		
	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />
	<script>
		$('#check_btn').click(function(){
			console.log('확인 클릭');
			var num = $('#inout_num').val();
			console.log('num : '+ num);
			
			//현재 DATE 구하기  
		      var now = new Date();
		      var year= now.getFullYear();
		      var mon = (now.getMonth()+1)>9 ? ''+(now.getMonth()+1) : '0'+(now.getMonth()+1);
		      var day = now.getDate()>9 ? ''+now.getDate() : '0'+now.getDate();
		              
		      var now_date = year + '-' + mon + '-' + day;
		      console.log('now_date :' + now_date);
			
			var attendancData = {"inout_num":num, "now_date":now_date};
			
			$.ajax({
				url:'${pageContext.request.contextPath}/attendance/attendance_pro',
				type:'POST',
				data:attendancData,
				success:function(data){
					console.log(data.name + '성공');
				},
				error:function(XHR, textStatus, error){
					alert("에러발생~ \n" + textStatus + " :" + error);
					
				}
			});
			
		});
			
			
	</script>
		
</body>
</html>