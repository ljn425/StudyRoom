<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <HEAD>
  <TITLE> New Document </TITLE>
<script type="text/javascript">
$(document).ready(function(){
	var contextPath = '<c:out value='${pageContext.request.contextPath}'/>';
	$('.link').click(function(){
	var linkpage = $(this).attr('value');
    window.open(contextPath+'/payment/'+linkpage, '_self');
	});
});
</script>
 </HEAD>
 <BODY>
	<div class="row">
		<div class="col-md-6">
			<div class="box box-primary">
				<div class="container">
					<ul class="nav nav-tabs">
						<li><a data-toggle="tab" value="newwinmember" class="link">회원가입</a></li>
						<li><a data-toggle="tab" value="newwinpayment" class="link">결제</a></li>
						<li><a data-toggle="tab"
							value="newwindetail?member_cd=member_cd6" class="link">상세정보</a></li>
					</ul>
				</div>
				<h2>회원가입이 완료되었습니다.</h2>
			</div>
		</div>
	</div>
</BODY>
</HTML>

 