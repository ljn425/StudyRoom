<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<!-- head -->
	<c:import url="../module/head.jsp" />
</head>
<body>
	<!-- top -->
	<c:import url = "../module/top.jsp" />
	
	<!-- left -->
	<div class="container-fluid" id="main">
		<div class="row row-offcanvas row-offcanvas-left">
			<c:import url = "../module/left.jsp" />
	<!-- main -->
			<div class="col-md-9 col-lg-10 main" id="wrap">
				<!--toggle sidebar button
            <p class="hidden-md-up">
                <button type="button" class="btn btn-primary-outline btn-sm" data-toggle="offcanvas"><i class="fa fa-chevron-left"></i> Menu</button>
            </p>-->
				<h1 class="display-4 hidden-xs-down">${sessionScope.branchOwner.branch_owner_nm} 오늘의 현황</h1>
				<br>
				<div class="alert alert-warning fade collapse" role="alert"
					id="myAlert">
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
					</button>
					<strong>Holy guacamole!</strong> It's free.. this is an example
					theme.
				</div>

				<div class="row mb-3">
					<div class="col-xl-3 col-lg-6">
						<div class="card card-inverse card-success">
							<div class="card-block bg-success">
								<div class="rotate">
									<i class="fa fa-user fa-5x"></i>
								</div>
								<h6 class="text-uppercase">매출</h6>
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
								<h6 class="text-uppercase">지출</h6>
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
								<h6 class="text-uppercase">등록된 회원 수</h6>
								<h1 class="display-1">${memberNo}명</h1>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6">
						<div class="card card-inverse card-warning">
							<div class="card-block bg-warning">
								<div class="rotate">
									<i class="fa fa-share fa-5x"></i>
								</div>
								<h6 class="text-uppercase">빈 좌석수</h6>
								<h1 class="display-1">36석</h1>
							</div>
						</div>
					</div>
				</div>
				<!--/row-->

				<hr>

				<div class="row placeholders mb-3">
					<div class="col-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/dddddd/fff?text=1"
							class="center-block img-fluid rounded-circle"
							alt="Generic placeholder thumbnail">
						<h4>열람실 101호</h4>
						<span class="text-muted">Device agnostic</span>
					</div>
					<div class="col-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/e4e4e4/fff?text=2"
							class="center-block img-fluid rounded-circle"
							alt="Generic placeholder thumbnail">
						<h4>열람실 102호</h4>
						<span class="text-muted">UI / UX oriented</span>
					</div>
					<div class="col-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/d6d6d6/fff?text=3"
							class="center-block img-fluid rounded-circle"
							alt="Generic placeholder thumbnail">
						<h4>열람실 103호</h4>
						<span class="text-muted">Standards-based</span>
					</div>
					<div class="col-6 col-sm-3 placeholder text-center">
						<img src="//placehold.it/200/e0e0e0/fff?text=4"
							class="center-block img-fluid rounded-circle"
							alt="Generic placeholder thumbnail">
						<h4>열람실 104호</h4>
						<span class="text-muted">CSS and JavaScript</span>
					</div>
				</div>

				<a id="features"></a>
				<hr>
				<div class="row mb-3">
					<div class="col-lg-3 col-md-4">
						<div class="card">
							<img class="card-img-top img-responsive"
								src="//placehold.it/740x180/bbb/fff?text=..."
								alt="Card image cap">
							<div class="card-block">
								<h4 class="card-title">Card title</h4>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<a href="#" class="btn btn-primary">Button</a>
							</div>
						</div>

						<div class="card card-inverse bg-inverse mt-3">
							<div class="card-block">
								<h3 class="card-title">Dark background</h3>
								<p class="card-text">With supporting text below as a natural
									lead-in to additional content.</p>
								<a href="#" class="btn btn-outline-secondary">Outline</a>
							</div>
						</div>

					</div>
				<!-- 회원테이블 -->
					<div class="col-lg-9 col-md-8">
						<div class="table-responsive">
							<table class="table table-striped">
								<thead class="thead-inverse">
									<tr>
										<th>#</th>
										<th>이름</th>
										<th>성별</th>
										<th>나이</th>
										<th>가입일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1,001</td>
										<td>responsive</td>
										<td>bootstrap</td>
										<td>cards</td>
										<td>grid</td>
									</tr>
									<tr>
										<td>1,002</td>
										<td>rwd</td>
										<td>web designers</td>
										<td>theme</td>
										<td>responsive</td>
									</tr>
									<tr>
										<td>1,003</td>
										<td>free</td>
										<td>open-source</td>
										<td>download</td>
										<td>template</td>
									</tr>
									<tr>
										<td>1,003</td>
										<td>frontend</td>
										<td>developer</td>
										<td>coding</td>
										<td>card panel</td>
									</tr>
									<tr>
										<td>1,004</td>
										<td>migration</td>
										<td>bootstrap 4</td>
										<td>mobile-first</td>
										<td>design</td>
									</tr>
									<tr>
										<td>1,005</td>
										<td>navbar</td>
										<td>sticky</td>
										<td>jumbtron</td>
										<td>header</td>
									</tr>
									<tr>
										<td>1,006</td>
										<td>collapse</td>
										<td>affix</td>
										<td>submenu</td>
										<td>footer</td>
									</tr>
									<tr>
										<td>1,007</td>
										<td>layout</td>
										<td>examples</td>
										<td>themes</td>
										<td>grid</td>
									</tr>
									<tr>
										<td>1,008</td>
										<td>migration</td>
										<td>bootstrap 4</td>
										<td>flexbox</td>
										<td>design</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!--/row-->

				<a id="more"></a>

				<a id="flexbox"></a>
				<hr>
				<h2>Masonry-style grid columns</h2>
				<h6>with Bootstrap 4 flexbox</h6>

				<div class="card-columns mb-3">
					<div class="card">
						<img class="card-img-top img-responsive"
							src="//placehold.it/600x200/444/fff?text=..."
							alt="Card image cap">
						<div class="card-block">
							<h4 class="card-title">Card title that wraps to a new line</h4>
							<p class="card-text">This is a longer card with supporting
								text below as a natural lead-in to additional content. This
								content is a little bit longer.</p>
						</div>
					</div>
					<div class="card card-block">
						<blockquote class="card-blockquote">
							<p>Bootstrap 4 will be lighter and easier to customize.</p>
							<footer>
								<small class="text-muted"> Someone famous like <cite
									title="Source Title">Mark Otto</cite>
								</small>
							</footer>
						</blockquote>
					</div>
					<div class="card">
						<img class="card-img-top img-responsive"
							src="//placehold.it/600x200/bbb/fff?text=..."
							alt="Card image cap">
						<div class="card-block">
							<h4 class="card-title">Card title</h4>
							<p class="card-text">This card has supporting text below as a
								natural lead-in to additional content.</p>
							<p class="card-text">
								<small class="text-muted">Last updated 3 mins ago</small>
							</p>
						</div>
					</div>
					<div class="card card-block card-inverse card-primary text-center">
						<blockquote class="card-blockquote">
							<p>Create masonry or Pinterest-style card layouts in
								Bootstrap 4.</p>
							<footer>
								<small> Someone famous in <cite title="Source Title">Bootstrap</cite>
								</small>
							</footer>
						</blockquote>
					</div>
					<div class="card card-block text-center">
						<h4 class="card-title">Clever heading</h4>
						<p class="card-text">This card has supporting text below as a
							natural lead-in to additional content.</p>
						<p class="card-text">
							<small class="text-muted">Last updated 5 mins ago</small>
						</p>
					</div>
					<div class="card">
						<img class="card-img img-responsive"
							src="//placehold.it/600x200/777/fff?text=..." alt="Card image">
					</div>
					<div class="card card-block text-right">
						<blockquote class="card-blockquote">
							<p>There are also some interesting new text classes to
								uppercase or capitalize.</p>
							<footer>
								<small class="text-muted"> Someone famous in <cite
									title="Source Title">Bootstrap</cite>
								</small>
							</footer>
						</blockquote>
					</div>
					<div class="card card-block">
						<h4 class="card-title">Responsive</h4>
						<p class="card-text">This is a wider card with supporting text
							below as a natural lead-in to additional content. This card has
							even longer content than the first to show that equal height
							action.</p>
						<p class="card-text">
							<small class="text-muted">Last updated 3 mins ago</small>
						</p>
					</div>
					<div class="card">
						<div class="card-block">
							<ul class="list-unstyled">
								<li class="text-capitalize"><code class="text-lowercase">text-capitalize</code>
									Capitalize each word</li>
								<li class="text-uppercase"><code class="text-lowercase">text-uppercase</code>
									Uppercase text</li>
								<li class="text-success"><code>text-success</code>
									Contextual colors for text</li>
								<li><code>text-muted</code> <span class="text-muted">Lighten
										with muted</span></li>
								<li><code>text-info</code> <span class="text-muted">Info
										text color</span></li>
								<li><code>text-danger</code> <span class="text-muted">Danger
										text color</span></li>
								<li><code>text-warning</code> <span class="text-muted">Warning
										text color</span></li>
								<li><code>text-primary</code> <span class="text-primary">Primary
										text color</span></li>
							</ul>
						</div>
					</div>
					<div class="card card-block">
						<h4 class="card-title">Heading</h4>
						<p class="card-text">So now that you've seen some of what
							Bootstrap 4 has to offer, are you going to give it a try?</p>
						<p class="card-text">
							<small class="text-muted">Last updated 12 mins ago</small>
						</p>
					</div>
				</div>
				<!--/card-columns-->

				<a id="layouts"></a>
				<hr>
				<h2 class="sub-header">Interesting layouts and elements</h2>
				<div class="row mb-3">
					<div class="col-lg-6">

						<div class="card">
							<div class="card-header">Bye .well, .panel &amp; .thumbnail
							</div>
							<div class="card-block">
								<h4 class="card-title">Replaced with .card</h4>
								<p class="card-text">All of these Bootstrap 3.x components
									have been dropped entirely for the new card component.</p>
								<button type="button" class="btn btn-secondary btn-lg">Large</button>
							</div>
						</div>

					</div>
					<div class="col-lg-6">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								href="#home1" role="tab" data-toggle="tab">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="#profile1"
								role="tab" data-toggle="tab">Profile</a></li>
							<li class="nav-item"><a class="nav-link" href="#messages1"
								role="tab" data-toggle="tab">Messages</a></li>
							<li class="nav-item"><a class="nav-link" href="#settings1"
								role="tab" data-toggle="tab">Settings</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<br>
							<div role="tabpanel" class="tab-pane active" id="home1">
								<h4>Home</h4>
								<p>
									1. These Bootstrap 4 Tabs work basically the same as the
									Bootstrap 3.x tabs. <br> <br>
									<button class="btn btn-primary-outline btn-lg">Wow</button>
								</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="profile1">
								<h4>Pro</h4>
								<p>2. Tabs are helpful to hide or collapse some addtional
									content.</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="messages1">
								<h4>Messages</h4>
								<p>3. You can really put whatever you want into the tab
									pane.</p>
							</div>
							<div role="tabpanel" class="tab-pane" id="settings1">
								<h4>Settings</h4>
								<p>4. Some of the Bootstrap 3.x components like well and
									panel have been dropped for the new card component.</p>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="col-lg-6">
						<div class="card card-default card-block">
							<ul id="tabsJustified" class="nav nav-tabs nav-justified">
								<li class="nav-item"><a class="nav-link" href=""
									data-target="#tab1" data-toggle="tab">List</a></li>
								<li class="nav-item"><a class="nav-link active" href=""
									data-target="#tab2" data-toggle="tab">Profile</a></li>
								<li class="nav-item"><a class="nav-link" href=""
									data-target="#tab3" data-toggle="tab">More</a></li>
							</ul>
							<!--/tabs-->
							<br>
							<div id="tabsJustifiedContent" class="tab-content">
								<div class="tab-pane" id="tab1">
									<div class="list-group">
										<a href="" class="list-group-item"><span
											class="float-right label label-success">51</span> Home Link</a> <a
											href="" class="list-group-item"><span
											class="float-right label label-success">8</span> Link 2</a> <a
											href="" class="list-group-item"><span
											class="float-right label label-success">23</span> Link 3</a> <a
											href="" class="list-group-item text-muted">Link n..</a>
									</div>
								</div>
								<div class="tab-pane active" id="tab2">
									<div class="row">
										<div class="col-sm-7">
											<h4>Profile Section</h4>
											<p>Imagine creating this simple user profile inside a tab
												card.</p>
										</div>
										<div class="col-sm-5">
											<img src="//placehold.it/170"
												class="float-right img-responsive img-rounded">
										</div>
									</div>
									<hr>
									<a href="javascript:;" class="btn btn-info btn-block">Read
										More Profiles</a>
									<div class="spacer5"></div>
								</div>
								<div class="tab-pane" id="tab3">
									<div class="list-group">
										<a href="" class="list-group-item"><span
											class="float-right label label-info label-pill">44</span> <code>.panel</code>
											is now <code>.card</code></a> <a href="" class="list-group-item"><span
											class="float-right label label-info label-pill">8</span> <code>.nav-justified</code>
											is deprecated</a> <a href="" class="list-group-item"><span
											class="float-right label label-info label-pill">23</span> <code>.badge</code>
											is now <code>.label-pill</code></a> <a href=""
											class="list-group-item text-muted">Message n..</a>
									</div>
								</div>
							</div>
							<!--/tabs content-->
						</div>
						<!--/card-->
					</div>
					<!--/col-->
					<div class="col-lg-6">
						<div id="accordion" role="tablist" aria-multiselectable="true">
							<div class="card">
								<div class="card-header" role="tab" id="headingOne"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne" aria-expanded="true"
									aria-controls="collapseOne">Collapsible Group Item #1</div>
								<div id="collapseOne" class="card-block collapse in"
									role="tabpanel" aria-labelledby="headingOne">
									<p>
										This is a Bootstrap 4 accordion that uses the
										<code>.card</code>
										classes instead of
										<code>.panel</code>
										. The single-open section aspect is not working because the
										parent option (dependent on .panel) has not yet been finalized
										in BS 4 alpha.
									</p>
								</div>
								<div class="card-header" role="tab" id="headingTwo"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo" aria-expanded="false"
									aria-controls="collapseTwo">Collapsible Group Item #2</div>
								<div id="collapseTwo" class="card-block collapse"
									role="tabpanel" aria-labelledby="headingTwo">
									<p>Just like it's predecesor, Bootstrap 4 is mobile-first
										so that you start by designing for smaller devices such as
										smartphones and tablets, then proceed to laptop and desktop
										layouts.</p>
								</div>
								<div class="card-header" role="tab" id="headingThree"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree" aria-expanded="false"
									aria-controls="collapseThree">Collapsible Group Item #3</div>
								<div id="collapseThree" class="card-block collapse"
									role="tabpanel" aria-labelledby="headingThree">
									<p>Bootstrap employs a handful of important global styles
										and settings that you’ll need to be aware of when using it,
										all of which are almost exclusively geared towards the
										normalization of cross browser styles.</p>
								</div>
							</div>
						</div>
					</div>
					<!--/col-->
				</div>
				<!--/row-->

			</div>
			<!--/main col-->
		</div>

	</div>
	<!--/.container-->
	<footer class="container-fluid">
		<p class="text-right small">©2016-2017 Company</p>
	</footer>


	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">Modal</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
					</button>
				</div>
				<div class="modal-body">This is a dashboard layout for
					Bootstrap 4. This is an example of the Modal component which you
					can use to show content. Any content can be placed inside the modal
					and it can use the Bootstrap grid classes.</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary-outline"
						data-dismiss="modal">OK</button>
				</div>
			</div>
		</div>
	</div>
	
	<!--foot-->
	<c:import url="../module/foot.jsp" />
</body>
</html>