<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
	<section style="padding:200px 0 0 100px">
		<form action="/qna/update" method="POST">
		<table border="1" style="width:100%">
			
			<tr>
				<td>번호</td>
				<td><input type="text" name="id" value="${data.id }" readonly="readonly"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="btitle" value="${data.btitle }"></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="member_id" value="${data.member_id }"></td>
			</tr>
			<tr>
				<td>날짜</td>
				<td><input type="text" name="bdate" value="${data.bdate }"></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center">내용:</td>
			</tr>
			<tr style="height:300px"><td colspan="2"><textarea rows="10" cols="50" name="bcontent">${data.bcontent }</textarea></td></tr>
		</table>
		&nbsp;&nbsp;<button type="submit">수정</button>&nbsp;&nbsp;
		</form>
		<form action="/qna/delete?id=${data.id }" method="POST">
		<button type="submit">글삭제</button>
		</form>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>