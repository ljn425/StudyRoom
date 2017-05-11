<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- head -->
<c:import url="../module2/head.jsp"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
.column {
	width: 170px;
	float: left;
	padding-bottom: 100px;
}

.portlet {
	margin: 0 1em 1em 0;
	padding: 0.3em;
	border: 1px solid;
}

.portlet-header {
	background-color: orange;
	padding: 0.2em 0.3em;
	margin-bottom: 0.5em;
	position: relative;
}

.portlet-toggle {
	position: absolute;
	top: 50%;
	right: 0;
	margin-top: -8px;
}

.portlet-content {
	padding: 0.4em;
}

.portlet-placeholder {
	border: 1px dotted black;
	margin: 0 1em 1em 0;
	height: 50px;
}

.ui-state-default {
	border: 1px dotted;
}

#sortable {
	inline: blokc;
}

.space{
	background-color : black;
}
</style>

<script>
	$(function() {
		$(".column").sortable({
			connectWith : ".column",
			handle : ".portlet-header",
			cancel : ".portlet-toggle",
			placeholder : "portlet-placeholder ui-corner-all"
		});

		$(".portlet")
				.addClass(
						"ui-widget ui-widget-content ui-helper-clearfix ui-corner-all")
				.find(".portlet-header")
				.addClass("ui-widget-header ui-corner-all")
				.prepend(
						"<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");

		$(".portlet-toggle").on("click", function() {
			var icon = $(this);
			icon.toggleClass("ui-icon-minusthick ui-icon-plusthick");
			icon.closest(".portlet").find(".portlet-content").toggle();
		});

		$(function() {
			$("#sortable").sortable({
				placeholder : "ui-state-highlight"
			});
			$("#sortable").disableSelection();
		});

		var downScreenX, downScreenY;

		$('#sortable > li').mousedown(function(e) {
			downScreenX = e.screenX;
			downScreenY = e.screenY;
		}).mouseup(function(e) {
			var screenX = e.screenX;
			var screenY = e.screenY;

			if (downScreenX !== undefined && downScreenY !== undefined) {
				if (downScreenX != screenX || downScreenY != screenY) {
					var memberName = $(this).text();
					var copyPortlet = $('#copyPortlet').clone();
					copyPortlet.find('.portlet-content').text("");
					$('.column').eq(0).append(copyPortlet.html());
				}
			}
		})
	});

	$(document).ready(function() {
		$('#sortable').mousedown(function(e) {
			var charNum = $('#charNum').text();
			charNum *= 1;
			console.log(charNum);
			$('#charNum').html("&nbsp");
			$('#charNum2').html("");
		});
		
		var contextPath = '<c:out value='${pageContext.request.contextPath}'/>';
		console.log(contextPath);
		$('#add_btn').click(function() {
		 var result = confirm('정말로 이 배치도로 등록하시겠습니까?');
		 if(result) { 
			console.log('yes');
			location.replace(contextPath+'/home/NewFile'); 
		   }else{ 
			 
		   }
		 });
	});
</script>
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
	       ZakSim
	      <small>Control panel</small>
	    </h1>
	    <ol class="breadcrumb">
	      <li><a href="${pageContext.request.contextPath}/home/NewFile"><i class="fa fa-dashboard"></i>Home</a></li>
	      <li class="active">열람실</li>
	    </ol>
	  </section> 
	  	
	<!-- Main content -->
      <section class="content">
		<div class="row">
            <div class="col-xs-12">
            <div class='color-palette-set'>
               <div class='bg-orange disabled color-palette'>
               	 <h1>
	               	<span>열람실 ${room.room_nm} 배치도</span>
               	</h1>
               </div>
             </div><!-- col-xs-12 -->  
             </div>
				<h1></h1>
			<div class="col-xs-9">	
				<c:forEach var="s" items="${seat}">
					<div class="column">
						<div class="portlet">
							<div class="portlet-header">${s.seat_cnumber}</div>
							<div class="portlet-content">빈좌석</div>
						</div>
					</div>
				</c:forEach>	
			</div>
			<div class="col-xs-3">
				<div id="copyPortlet" style="display: none;">
					<div class="portlet">
					  	<div class="portlet-header " id="charNum">&nbsp;</div>
					  	<div class="portlet-content" id="charNum2">&nbsp;</div>
					</div>
				</div>
			<div style="clear: both; width: 200px;">
			
			<div class="box box-solid box-warning">
                <div class="box-header">
                  <h3 class="box-title">배치도</h3>
                  <div class="box-tools right">
                  </div>
                </div>
                <div class="box-body">
                  <span>추가(드래그 해주세요)</span>
					<ul id="sortable">
						<li class="ui-state-default">장식물</li>
					</ul>
					<button id="add_btn" type="button" class="btn btn-block btn-info btn-xs">등록</button>
					<button id="cancel_btn" type="button" class="btn btn-block btn-danger btn-xs">취소</button>
					
                </div><!-- /.box-body -->
              </div><!-- /.box -->
			
			</div>
			</div>
		</div><!-- row -->
	</section><!-- content -->
   </div><!-- content-wrapper -->
  </div><!-- wrapper -->
</body>
</html>


