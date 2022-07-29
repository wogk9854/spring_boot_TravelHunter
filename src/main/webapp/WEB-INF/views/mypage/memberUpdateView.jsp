<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
	<section style="padding:200px 0 0 100px">
		<form action="/memberUpdate" method="post">
			<label for="id">아이디</label>
			<input type="text" id="id" name="id" value="${member.id}" readonly="readonly" /><br>
			<label for="mpw">비밀번호</label>
			<input type="password" id="mpw" name="mpw" /><br>
			<label for="mname">이름</label>
			<input type="text" id="mname" name="mname" value="${member.mname}" /><br>
			<label for="nick_name">닉네임</label>
			<input type="text" id="nick_name" name="nick_name" value="${member.nick_name }" /><br>
			<label for="memail">이메일</label>
			<input type="text" id="memail" name="memail" value="${member.memail }" /><br>
			<label for="mphone">전화번호</label>
			<input type="text" id="mphone" name="mphone" value="${member.mphone}" /><br>
			
			<button type="submit">수정</button>
			
			
			
			
		</form>
			
			
		
		
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>