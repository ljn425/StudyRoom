<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="A Bootstrap 4 admin dashboard theme that will get you started. The sidebar toggles off-canvas on smaller screens. This example also include large stat blocks, modal and cards. The top navbar is controlled by a separate hamburger toggle button." />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="generator" content="Codeply">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <title>jQuery UI Sortable - Portlets</title>

  <style>
  body {
    min-width: 520px;
  }
  .column {
    width: 170px;
    float: left;
    padding-bottom: 100px;
  }
  .portlet {
    margin: 0 1em 1em 0;
    padding: 0.3em;
  }
  .portlet-header {
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
  </style>

  <script>
  $( function() {
    $( ".column" ).sortable({
      connectWith: ".column",
      handle: ".portlet-header",
      cancel: ".portlet-toggle",
      placeholder: "portlet-placeholder ui-corner-all"
    });
    
    $( ".portlet" )
      .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
      .find( ".portlet-header" )
        .addClass( "ui-widget-header ui-corner-all" )
        .prepend( "<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
 
    $( ".portlet-toggle" ).on( "click", function() {
      var icon = $( this );
      icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
      icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
    });
    
    $( function() {
        $( "#sortable" ).sortable({
          placeholder: "ui-state-highlight"
        });
        $( "#sortable" ).disableSelection();
      } );
    
    var downScreenX, downScreenY;
    
    $('#sortable > li').mousedown(function(e){
    	downScreenX = e.screenX;
    	downScreenY = e.screenY;
    }).mouseup(function(e){    	
    	var screenX = e.screenX;
    	var screenY = e.screenY;
    	if(downScreenX !== undefined && downScreenY !== undefined){
    		if(downScreenX != screenX || downScreenY  != screenY){
    			var memberName = $(this).text();
    			var copyPortlet = $('#copyPortlet').clone();
    			copyPortlet.find('.portlet-content').text(memberName);
    			$('.column').eq(0).prepend(copyPortlet.html());    						
    		}
    	}
    })  
  } );
  </script>
</head>
<body>
<!-- top -->
	<c:import url = "../module/top.jsp" />
	
<!-- left -->
	<c:import url = "../module/left.jsp" />
<!--/모듈 여기까지-->

<div id="copyPortlet" style="display: none;">
	<div class="portlet">
	  	<div class="portlet-header">2</div>
	  	<div class="portlet-content">정우성</div>
		<div class="portlet-content">2017-01-01</div>
	</div>
</div>

<div class="column"> 
  <div class="portlet">
	  <div class="portlet-header">1</div>
	  <div class="portlet-content">정우성</div>
	  <div class="portlet-content">2017-01-01</div>
	  <button type="button" class="btn btn-info btn-sg" data-toggle="modal" data-target="#myModal">Open</button>
	  <div class="container">
 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">회원 수정</h4>
        </div>
        <div class="modal-body">
			<form action="/action_page.php">
			<input name="firstname" value="좌석">
			<input name="firstname" value="이름">
			<input name="firstname" value="기간"></br>
			<input type="submit" value="Submit">
			</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">회원정보</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">결제</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div> 
  </div>
  
  <div class="portlet">
	  <div class="portlet-header">2</div>
	  <div class="portlet-content">정우성</div>
 	 <div class="portlet-content">2017-01-01</div>
  </div>
  
  <div class="portlet">
	  <div class="portlet-header">2</div>
	  <div class="portlet-content">정우성</div>
 	 <div class="portlet-content">2017-01-01</div>
  </div>  
</div>
 
<div class="column">
  <div class="portlet">
    <div class="portlet-header">2</div>
    <div class="portlet-content">강동원</div>
    <div class="portlet-content">2017-01-01</div>
  </div>
 
  <div class="portlet">
    <div class="portlet-header">2</div>
    <div class="portlet-content">강동원</div>
    <div class="portlet-content">2017-01-01</div>
  </div>
  
  <div class="portlet">
    <div class="portlet-header">2</div>
    <div class="portlet-content">강동원</div>
    <div class="portlet-content">2017-01-01</div>
  </div>
</div>

<div class="column">
  <div class="portlet">
    <div class="portlet-header">3</div>
    <div class="portlet-content">원빈</div>
    <div class="portlet-content">2017-01-01</div>
  </div>
  <div class="portlet">
    <div class="portlet-header">3</div>
    <div class="portlet-content">원빈</div>
    <div class="portlet-content">2017-01-01</div>
  </div> 
  <div class="portlet">
    <div class="portlet-header">3</div>
    <div class="portlet-content">원빈</div>
    <div class="portlet-content">2017-01-01</div>
  </div> 
</div>
<div class="column">
</div>
<div class="column">
</div>
<div class="column">
</div>
<div class="column">
</div>
<div class="column">
</div>

<div style="clear: both; width: 200px;">
	
	<ul id="sortable">
		<li class="ui-state-default">Item 1</li>
		<li class="ui-state-default">Item 2</li>
		<li class="ui-state-default">Item 3</li>
		<li class="ui-state-default">Item 4</li>
		<li class="ui-state-default">Item 5</li>
		<li class="ui-state-default">Item 6</li>
		<li class="ui-state-default">Item 7</li>
	</ul>
</div>
</body>
</html>


