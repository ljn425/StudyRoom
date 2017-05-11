<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script>
    $(document).ready(function(){
        $('#modifyButton').click(function(){
            if($('#branch_owner_cd').val()=='') {
                alert('지점대표코드를 정확히 입력하세요');
                $('#branch_owner_cd').focus();
            } else if($('#staff_id').val()=='') {
                alert('직원아이디를 입력하세요');
                $('#staff_id').focus();
            } else if($('#member_nm').val()=='') {
                alert('이름을 입력하세요');
                $('#member_nm').focus();
            } else {
                $('#modifyForm').submit();
            }
        });
    });
</script>
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
<div class="container">
    <h1>독서실 회원 수정</h1> 
    <form class="form-horizontal" action="${pageContext.request.contextPath}/member/member_modify" method="post">
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">독서실회원코드</label>
							<input type="text" class="form-control" value="${member.member_cd}" name="member_cd" readonly>
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">지점 대표코드</label>
							<select class="form-control" name="branch_owner_cd" id="branch_owner_cd" > 
								<option value="B0010" selected>&nbsp;</option> 
							     <option value="B0011">B011</option> 
							     <option value="B0016">B016</option> 
							     <option value="B0017">B017</option> 
							     <option value="B0018">B018</option> 
							     <option value="B0019">B019</option>
							</select>
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">직원아이디</label>
							<input type="text" class="form-control" value="${member.staff_id}" name="staff_id" placeholder="직원아이디를 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">이름</label>
							<input type="text" class="form-control" value="${member.member_nm}" name="member_nm" placeholder="이름을 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">성별</label>
							<input type="text" class="form-control" value="${member.member_sex}" name="member_sex" placeholder="성별을 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">연락처</label>
							<input type="text" class="form-control" value="${member.member_tel}" name="member_tel" placeholder="연락처를 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">주소</label>
							<input type="text" class="form-control" value="${member.member_addr}" name="member_addr" placeholder="주소를 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">나이</label>
							<input type="text" class="form-control" value="${member.member_age}" name="member_age" placeholder="나이를 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">회원상태</label>
							<input type="text" class="form-control" value="${member.member_seat_state}" name="member_seat_state" placeholder="회원상태를 입력해주세요">
						</div>
						<div class="form-group has-success">
							<label class="control-label" for="inputLarge">등록경로</label>
							<select class="form-control" name="member_regi_path" id="member_regi_path" > 
								<option value="기타" selected>등록 경로를 입력해 주세요.</option> 
								<option value="지인소개">지인소개</option> 
								<option value="인터넷">인터넷</option> 
								<option value="플래카드">플래카드</option> 
								<option value="전단지">전단지</option> 
								<option value="기타">기타</option> 
							</select>
						</div><hr>
						<div>
        					<input class="btn btn-success" type="submit" value="글수정"/>
       					 	<input class="btn btn-success" type="reset" value="초기화"/>
        				<a class="btn btn-success" href="${pageContext.request.contextPath}/member/member_list">글목록</a>
   		 				</div>
					</form>
				</div>
			</div>
		</div>
	</div>
<!--foot-->
	<c:import url="../module/foot.jsp" />
</body>
</html>