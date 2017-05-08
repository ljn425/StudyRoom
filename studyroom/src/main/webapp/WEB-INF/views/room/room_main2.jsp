<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>jQuery UI Sortable - Portlets</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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
</style>
<style>
.flex-container {
	display: -webkit-flex;
	display: flex;
	-webkit-flex-flow: row wrap;
	flex-flow: row wrap;
	text-align: center;
}

.flex-container>* {
	padding: 15px;
	-webkit-flex: 1 100%;
	flex: 1 100%;
}

.article {
	text-align: left;
}

header {
	background: black;
	color: white;
}

footer {
	background: #aaa;
	color: white;
}

.nav {
	background: #eee;
}

.nav ul {
	list-style-type: none;
	padding: 0;
}

.nav ul a {
	text-decoration: none;
}

@media all and (min-width: 768px) {
	.nav {
		text-align: left;
		-webkit-flex: 1 auto;
		flex: 1 auto;
		-webkit-order: 1;
		order: 1;
	}
	.article {
		-webkit-flex: 5 0px;
		flex: 5 0px;
		-webkit-order: 2;
		order: 2;
	}
	footer {
		-webkit-order: 3;
		order: 3;
	}
}
</style>

<style>
#draggable {
	width: 60px;
	height: 60px;
	padding: 0.1em;
	float: left;
	margin: 0px 0px 0px 0;
}
</style>

<script type="text/javascript">
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})
</script>

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>

</head>
<body>

	<div class="flex-container">
		<header>
			<h1>City Gallery</h1>
		</header>

		<nav class="nav">
			<ul>
				<li><a href="#">London</a></li>
				<li><a href="#">Paris</a></li>
				<li><a href="#">Tokyo</a></li>
			</ul>
		</nav>
		<article class="article">		
			<div class="container text-center">
				<h3>열람실 전체 화면</h3>
				<div class="row">			
					<br>
					<div class="col-sm-6">					
						<div class="menu">
							<h5>201</h5>
							<div class="column1">
								<%@include file="modalinclude.jsp"%>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">

								</div>
							</div>
							<div class="column1">
							<div id="draggable" class="ui-widget-content">
									<a href="#" title="010-2222-2222" data-trigger="hover" data-toggle="modal" data-target="#myModal">2</a><br>						
									<div class="container">
										<!-- Modal -->
										<div class="modal fade" id="myModal" role="dialog">
											<div class="modal-dialog modal-sm">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Modal Header</h4>
													</div>
													<div class="modal-body">
														<p>This is a small modal.</p>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>
									</div>
						
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>3</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>4</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>5</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>6</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>7</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>8</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>9</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>11</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>11</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>12</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>13</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>14</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>15</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>16</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>17</h6>
									<h6></h6>
								</div>
							</div>
						</div>
					</div>
					<br>

					<div class="col-sm-6">
						<div class="menu">
							<h5>202</h5>
							<div class="column1">
								<%@include file="modalinclude.jsp"%>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">

								</div>
							</div>
							<div class="column1">
							<div id="draggable" class="ui-widget-content">
									<a href="#" title="010-2222-2222" data-trigger="hover" data-toggle="modal" data-target="#myModal">2</a><br>						
									<div class="container">
										<!-- Modal -->
										<div class="modal fade" id="myModal" role="dialog">
											<div class="modal-dialog modal-sm">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Modal Header</h4>
													</div>
													<div class="modal-body">
														<p>This is a small modal.</p>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>
									</div>
						
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>3</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>4</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>5</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>6</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>7</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>8</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>9</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>11</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>11</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>12</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>13</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>14</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>15</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>16</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>17</h6>
									<h6></h6>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-6">
						<div class="menu">
							<h5>301</h5>
								<div class="column1">
								<%@include file="modalinclude.jsp"%>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">

								</div>
							</div>
							<div class="column1">
							<div id="draggable" class="ui-widget-content">
									<a href="#" title="010-2222-2222" data-trigger="hover" data-toggle="modal" data-target="#myModal">2</a><br>						
									<div class="container">
										<!-- Modal -->
										<div class="modal fade" id="myModal" role="dialog">
											<div class="modal-dialog modal-sm">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Modal Header</h4>
													</div>
													<div class="modal-body">
														<p>This is a small modal.</p>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>
									</div>
						
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>3</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>4</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>5</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>6</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>7</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>8</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>9</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>11</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>11</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>12</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>13</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>14</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>15</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>16</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>17</h6>
									<h6></h6>
								</div>
							</div>
						</div>
					</div>
					<br>

					<div class="col-sm-6">
						<div class="menu">
							<h5>302</h5>
								<div class="column1">
								<%@include file="modalinclude.jsp"%>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">

								</div>
							</div>
							<div class="column1">
							<div id="draggable" class="ui-widget-content">
									<a href="#" title="010-2222-2222" data-trigger="hover" data-toggle="modal" data-target="#myModal">2</a><br>						
									<div class="container">
										<!-- Modal -->
										<div class="modal fade" id="myModal" role="dialog">
											<div class="modal-dialog modal-sm">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal">&times;</button>
														<h4 class="modal-title">Modal Header</h4>
													</div>
													<div class="modal-body">
														<p>This is a small modal.</p>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">Close</button>
													</div>
												</div>
											</div>
										</div>
									</div>
						
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>3</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>4</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>5</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>6</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>7</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>8</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>9</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>11</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>11</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>12</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>13</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>14</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>15</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>16</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>17</h6>
									<h6></h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</article>

		<footer>Copyright &copy; W3Schools.com</footer>
	</div>

</body>
</html>
