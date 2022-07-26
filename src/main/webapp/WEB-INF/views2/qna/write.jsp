<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
	<section style="padding:200px 0 0 100px">
		<form action="/qna/complete" method="POST">
			<input type="hidden" name="board_type_num" value="2"/>
			작성자: <input type="text" name="member_id"/><br>
			제 목: <input type="text"  name="btitle"/><br>
			내용<br>
			<textarea style="width:200px;height:200px" name="bcontent"></textarea><br>
			<input type="submit" value="작성"/>
			<a href="/qna"><input type="button" value="목록보기"></a>
		</form>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>