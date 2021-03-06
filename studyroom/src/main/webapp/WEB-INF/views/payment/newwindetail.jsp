<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
 <HEAD>
  <TITLE> New Document </TITLE>

<script type="text/javascript">
$(document).ready(function(){
	var contextPath = '<c:out value='${pageContext.request.contextPath}'/>';
	
    var bocd = opener.document.getElementById("bocd").value;
    console.log('bocd = ' + bocd);
    var rcd = opener.document.getElementById("rcd").value;
    console.log('rcd = ' + rcd);
    var mcd = opener.document.getElementById("mcd").value;
    console.log('mcd = ' + mcd);
    var scd = opener.document.getElementById("scd").value;
    console.log('scd = ' + scd);
    var all = 'newwinpayment?branch_owner_cd='+bocd+'&room_cd='+rcd+'&seat_cd='+mcd+'&member_cd='+scd;
    console.log('all = ' + all);
    
    $('.link').click(function(){
    $(this).prop("value", all);
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
				    <!-- <li><a data-toggle="tab" value="newwinmember" class="link">회원가입</a></li> -->
				    <li><a data-toggle="tab" id="getval" class="link" onclick="getParentText()">결제</a></li>				    
				    <li><a data-toggle="tab" value="newwindetail?member_cd=member_cd6" class="link">상세정보</a></li>
				  </ul>

                <!-- form start -->
                  <div class="box-body">
      					<h3 class="box-title">독서실 상세 정보</h3>
   					
					<form name="myForm" name="postForm" action="${pageContext.request.contextPath}/member/member_pro" method="post">
						<div class="box-body">	
						<div class="form-group">
                      	   <label class="control-label" for="inputLarge">지점대표코드</label>
							<input type="text" class="form-control" name="branch_owner_cd" value="${member.branch_owner_cd}" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="inputLarge">이름</label>
							<input type="text" class="form-control" id="member_nm" name="member_nm" value="${member.member_nm}" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="inputLarge">성별</label>
							<input type="text" class="form-control" id="member_sex" name="member_sex" value="${member.member_sex}" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="inputLarge">연락처</label>
							<input type="text" class="form-control" id="member_tel" name="member_tel" value="${member.member_tel}" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="inputLarge">주소</label>
							<input type="text" class="form-control" id="member_addr" name="member_addr" value="${member.member_addr}" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="inputLarge">나이</label>
							<input type="text" class="form-control" id="member_age" name="member_age" value="${member.member_age}" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="inputLarge">회원상태</label>
							<input type="text" class="form-control" id="member_seat_state" name="member_seat_state" value="${member.member_seat_state}" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="inputLarge">등록일</label>
							<input type="text" class="form-control" id="member_regi_date" name="member_regi_date" value="${member.member_regi_date}" readonly>
						</div>
						<div class="form-group">
							<label class="control-label" for="inputLarge">해지일</label>
							<input type="text" class="form-control" id="member_end_date" name="member_end_date" value="${member.member_end_date}" readonly>
						</div>
						<div class="form-group">
						<input type="button" value="창닫기" onclick="window.close()">
						</div>
                </form>         
              </div>
            </div>
         </div>
       </div>
    </div>
 </BODY>
</HTML>

 