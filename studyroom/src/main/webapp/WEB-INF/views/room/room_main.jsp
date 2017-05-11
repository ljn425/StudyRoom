<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
  <head>
    <!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
  	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<script>
		$(document).ready(function(){
			console.log('안녕');
			var contextPath = '<c:out value='${pageContext.request.contextPath}'/>';
			$('#pay_btn').click(function(){
				console.log('클릭');
				window.open(contextPath+'/payment/payment?room_cd="1"', '_blank', 'toolbar=yes,scrollbars=yes,resizable=yes,top=1000,left=700,width=500,height=500');
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
      <c:import url="../module2/right.jsp"/>
  	  
  	  <!-- Main content -->
      <section class="content">
	<!-- main -->
	  <div class="col-md-9 col-lg-10 main" id="wrap">		
			<button type="button" class="btn btn-success btn-lg">전체화면</button>
			<c:forEach var="r" items="${roomlist}">
				<button type="button" class="btn btn-success btn-lg">열람실 ${r.room_nm}</button>
			</c:forEach>
			<div class="container text-left con">
			<hr>
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
									<h6>2</h6>
									<button type="button" class="font-size: 1px;" id="pay_btn">결제</button>
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
								<div id="draggable" class="ui-widget-content">
									<h6>18</h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>19</h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>20</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>21</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>22</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>23</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>24</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>25</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>26</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>27</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>28</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>29</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>30</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>31</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>32</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>33</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>34</h6>
									<h6></h6>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-6">
						<div class="menu">
							<h5>203</h5>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>35</h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>36</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>37</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>38</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>39</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>40</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>41</h6>
									<h6></h6>
								</div>
							</div>
						</div>
					</div>
					<br>

					<div class="col-sm-6">
						<div class="menu">
							<h5>204</h5>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>42</h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>43</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>44</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>45</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>46</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>47</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>48</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>49</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>50</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>51</h6>
									<h6></h6>
								</div>
							</div>
							<div class="column1">
								<div id="draggable" class="ui-widget-content">
									<h6>53</h6>
									<h6></h6>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</section>
  </div>
  

</body>
</html>
