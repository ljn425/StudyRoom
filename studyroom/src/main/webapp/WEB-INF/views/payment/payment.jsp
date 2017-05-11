<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
<body>

<div>
  <form action="/action_page.php">
    <label for="fname">결제 코드</label>
    <input type="text" id="pay_cd" name="pay_cd" placeholder="결제 코드">
    
    <label for="fname">지점 대표 코드</label>
    <input type="text" id="branch_owner_cd" name="branch_owner_cd" placeholder="지점 대표 코드">
    
    <label for="fname">열람실 코드</label>
    <input type="text" id="room_cd" name="room_cd" placeholder="열람실 코드">
    
    <label for="fname">열람석 코드</label>
    <input type="text" id="seat_cd" name="seat_cd" placeholder="열람석 코드">
    
    <label for="fname">결제 금액</label>
    <input type="text" id="pay_amount" name="pay_amount" placeholder="결제 금액">

    <label for="lname">할인 금액</label>
    <input type="text" id="discount_amount" name="discount_amount" placeholder="할인 금액">

    <label for="lname">총 금액</label>
    <input type="text" id="total_amount" name="total_amount" placeholder="총 금액">

    <label for="lname">결제 날짜</label>
    <input type="text" id="pay_date" name="pay_date" placeholder="결제 날짜">
    
    <label for="결제 방법">결제 방법</label>
    <select id="결제 방법" name="결제 방법">
      <option value="카드">카드</option>
      <option value="현금">현금</option>
      <option value="자동이체">자동이체</option>
    </select>
  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
