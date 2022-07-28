<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<section style="padding:200px 0 0 100px">
	<form action="/logincheck" method="POST">
		<c:if test="${member == null }"	>
			<label for="id">아이디 : </label>
			<input type="text" id="id" name="id"><br>
			<label for="mpw">비밀번호 : </label>
			<input type="password" id="mpw" name="mpw"><br>
			
			<button type="submit">로그인</button>
			<a href="/join"><input type="button" value="회원가입"></a>
		
		</c:if>
	</form>	
	
			
		
		
		
</section>

<%@include file ="../include/footer.jsp" %>
			


<script>
	
</script>