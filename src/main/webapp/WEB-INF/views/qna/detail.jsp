<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
	<section style="padding:200px 0 0 100px">
		<table border="1" style="width:100%">
			<tr>
				<td>번호</td>
				<td>${data.id}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>${data.btitle}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${data.member_id}</td>
			</tr>
			<tr>
				<td>날짜</td>
				<td>${data.bdate}</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center">내용:</td>
			</tr>
			<tr style="height:300px"><td colspan="2">${data.bcontent}</td></tr>
			<tr>
				<td colspan="2">
					&nbsp;&nbsp;<a href="/qna/edit?id=${data.id }"><input type="button" value="수정하기"></a>&nbsp;&nbsp;
					<a href="/qna"><input type="button" value="목록보기"></a>
				</td>
			</tr>
		</table>
		
		<br>
		
		<table width="500" cellpadding="0" border="1">
			
			<tr>
				<td>${reply.member_id }</td>
				<td>${reply.reply }</td>
				<td>${reply.repdate }</td>
				<td>삭제</td>
			</tr>
		
		
		</table>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>