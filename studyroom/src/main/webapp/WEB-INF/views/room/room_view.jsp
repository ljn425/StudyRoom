<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>jQuery UI Sortable - Portlets</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="/lib/jquery-1.12.2.min.js"></script>
  
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
<style>
* {
    box-sizing: border-box;
}
.menu {
    width: 75%;
    float: left;
    padding: 15px;
    border: 1px solid red;
}
.main {
    width: 25%;
    float: left;
    padding: 15px;
    border: 1px solid red;
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
<div class="menu">
<div class="column1"> 
</div>
<div class="column2">
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
<div class="column">
</div>
<div class="column">
</div>
<div class="column"> 
</div>
<div class="column" id="test" value="Mickey Mouse">
<p>Name: <input type="text" id="test" value="Mickey Mouse"></p>
<button>Show Value</button>
</div>
<div  id="divId" class="column">
<p>aavasvavad</p>

</div>
</div>

<script>
$(document).ready(function(){
    $("button").mouseup(function(){
        alert("Value: " + $("#test").val());
    });
});
</script>

<script>
var p = $('#divId');
var position = p.position();
$("p:last").text( "left: " + position.left + ", top: " + position.top );
</script>

<div class="main">
<div style="clear: both; width: 80px;">	
	<ol id="sortable" type="I">
		<li class="ui-state-default"><i class="fa fa-plus-square-o" style="font-size:48px;color:red"></i></li>
	</ol>
</div>
</div>


<div id="copyPortlet" style="display: none;">
<div class="column"> 
	<div class="portlet">
		  <div class="portlet-header">1</div>
		  <div class="portlet-content"></div>
		  <div class="portlet-content"></div>
		  <button type="button" class="btn btn-info btn-sg" data-toggle="modal" data-target="#myModal1">회원정보</button>
		  <button type="button" class="btn btn-info btn-sg" data-toggle="modal" data-target="#myModal2">결제</button>
			<div class="container">
			 <!-- Modal -->
			  <div class="modal fade" id="myModal1" role="dialog">
			    <div class="modal-dialog modal-sm">
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title">회원 등록</h4>
				          <div class="container">
						  <ul class="list-inline">
						    <li><a href="#">Home</a></li>
						    <li><a href="#">Menu 1</a></li>
						    <li><a href="#">Menu 2</a></li>
						  </ul>
						 </div>
			        </div>
			        <div class="modal-body">
						<form action="/action_page.php">
							<input name="firstname" Placeholder="좌석">
							<input name="firstname" Placeholder="이름">
							<input name="firstname" Placeholder="가입일">
							<input name="firstname" Placeholder="종료일">
							<input name="firstname" Placeholder="전화번호">
							<input name="firstname" Placeholder="성별">
							<input name="firstname" Placeholder="이메일"></br>
							<input type="submit" value="입력">
						</form>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			        </div>
			      </div>
			    </div>
			  </div>
			</div> 
			<div class="container">
			 <!-- Modal -->
			  <div class="modal fade" id="myModal2" role="dialog">
			    <div class="modal-dialog modal-sm">
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title">결제 등록</h4>
			        </div>
			        <div class="modal-body">
						<form action="/action_page.php">
							<input name="firstname" Placeholder="금액">
							<input name="firstname" Placeholder="결제방법">
							<input name="firstname" Placeholder="결제기간">
							<input name="firstname" Placeholder="결제여부">
							<input name="firstname" Placeholder="가입"></br>
							<input type="submit" value="입력">
						</form>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			        </div>
			      </div>
			    </div>
			  </div>
			</div> 
		</div>
	</div>
</div>
</body>
</html>


