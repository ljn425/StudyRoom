<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%
	String park = request.getParameter("park");
	String jun = request.getParameter("jun");
	String test = request.getParameter("test");
// 	out.println("park = ["+park+"]");
// 	out.println("<br>");
// 	out.println("jun = ["+jun+"]");
// 	out.println("<br>");
// 	out.println("test = ["+test+"]");
%>

 <HEAD>
  <TITLE> New Document </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">

  <script type="text/javascript">
  function getSubmit() {
    window.opener.name = "presensewindow"; // 부모창의 이름 설정
    document.myForm.target = "presensewindow"; // 타켓을 부모창으로 설정
    document.myForm.action = "presensewindow.jsp";
    document.myForm.submit();
    self.close();
}
</script>
 </HEAD>

 <BODY>
<div>
<div class="container">
  <ul class="nav nav-tabs">
    <li><a data-toggle="tab" href="<%=request.getContextPath()%>/member1.jsp">회원가입</a></li>
    <li><a data-toggle="tab" href="getFrame.jsp">결제</a></li>
    <li><a data-toggle="tab" href="<%=request.getContextPath()%>/member2.jsp">회원정보</a></li>
  </ul>
 
  <form name="myForm" name="postForm" method="post" action="/action_page.php">
    <label for="fname">결제코드&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="pay_cd" name="pay_cd" placeholder="결제 코드" readonly>
    <br>
    
    <label for="fname">지점대표코드</label>
    <input type="text" id="branch_owner_cd" name="branch_owner_cd" placeholder="<%=park%>" readonly>
    <br>
    
    <label for="fname">열람실코드&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="room_cd" name="room_cd" placeholder="<%=jun%>" readonly>
    <br>
    
    <label for="fname">열람석코드&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="seat_cd" name="seat_cd" placeholder="<%=test%>" readonly>
    <br>
    
    <label for="fname">결제금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="pay_amount" name="pay_amount" placeholder="결제 금액">
	<br>
	
    <label for="lname">할인금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="discount_amount" name="discount_amount" placeholder="할인 금액">
	<br>
	
    <label for="lname">총금액&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="total_amount" name="total_amount" placeholder="총 금액">
	<br>
	
    <label for="lname">결제날짜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="text" id="pay_date" name="pay_date" placeholder="결제 날짜">
    <br>
    
    <label for="결제 방법">결제방법&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <select id="결제 방법" name="결제 방법">
      <option value="카드">카드</option>
      <option value="현금">현금</option>
      <option value="자동이체">자동이체</option>
    </select>
    <br>
    <input type="hidden" value="nice" name="niceValue">
    <br>
    <input type="submit" onclick="getSubmit()" value="결제">
  </form>
</div>


 </BODY>
</HTML>
