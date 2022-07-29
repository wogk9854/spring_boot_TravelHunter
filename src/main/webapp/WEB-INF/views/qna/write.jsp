<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
	<section style="padding:200px 0 0 100px">
		<c:if test="${member.id != null }">
		<form action="/qna/complete" method="POST">
			<input type="hidden" name="board_type_num" value="2"/>
			작성자: <input name="member_id" value="${member.id}" readonly="readonly" /><br>
			제 목: <input type="text"  name="btitle"/><br>
			내용<br>
			<textarea style="width:200px;height:200px" name="bcontent"></textarea><br>
			<input type="submit" value="작성"/>
			<a href="/qna"><input type="button" value="목록보기"></a>
		</form>
		</c:if>
	<c:if test="${member.id == null }">
		<p>로그인후에 작성하실 수 있습니다.</p>
	</c:if>
		
		
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>