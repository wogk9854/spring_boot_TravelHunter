<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
	<section style="padding:200px 0 0 100px">
		<div id="page1" style="height:20vh">
		
			<c:if test="${member != null }">
			<h1 style="font-size:50px">${member.nick_name }님 안녕하세요</h1>
			</c:if>
			<c:if test="${member == null }">
				<a href="/login"><input type="button" value="로그인하기"></a>
			</c:if>
			
		</div>
		<a href="/memberUpdateView"><input type="button" value="회원정보수정"></a>
		<a href="/memberDeleteView"><input type="button" value="회원탈퇴"></a>
		
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>