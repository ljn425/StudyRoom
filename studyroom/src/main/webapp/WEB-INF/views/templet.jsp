<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <!-- 헤드 -->
	<c:import url="../module2/head.jsp"/>
	<!-- JS -->
	<c:import url="../module2/jsscript.jsp" />
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
      	내용을 입력해주세요.
      
      	<!-- <div class="row">
            <div class="col-lg-3 col-xs-6">
            	그리드01
            </div>
            <div class="col-lg-3 col-xs-6">
            	그리드02
            </div>
            <div class="col-lg-3 col-xs-6">
            	그리드03
            </div>
            <div class="col-lg-3 col-xs-6">
            	그리드04
            </div>
        </div> -->
      	
      </section>
      
     </div>
     

  </body>
</html>  