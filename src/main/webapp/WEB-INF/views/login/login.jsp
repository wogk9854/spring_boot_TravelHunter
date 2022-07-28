<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<section style="padding:200px 0 0 100px">
	<form action="/logincheck" method="POST">
		<c:if test="${member == null }"	>
			<label for="id">아이디 : </label>
			<input type="text" id="id" name="id"><br>
			<label for="mpw">비밀번호 : </label>
			<input type="text" id="mpw" name="mpw"><br>
			
			<button type="submit">로그인</button>
			<button type="button">회원가입</button>
		
		</c:if>
		<c:if test="${member != null }">
			<p>${member.nick_name}님 환영홥니다.</p>
			<a href="/logout"><input type="button" value="로그아웃"></a>
		</c:if>
		<c:if test="${msg == false }">
			<p style="color: red;">로그인실패</p>
		</c:if>
	</form>	
	
			
		
		
		
</section>

<%@include file ="../include/footer.jsp" %>
			


<script>
	
</script>