<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>

<section style="padding:200px 0 0 0">
	<h3>Q&A작성</h3>
    <form action="/qna/writepro" method="post">
    	<table border="1">
    		<tr>
    			<td>이름</td>
    			<td><input type="text" name="bname" value="" size="50"></td>
    		</tr>
    		<tr>
    			<td>제목</td>
    			<td><input type="text" name="btitle" value="" size="50"></td>
    		</tr>
    		<tr>
    			<td>내용</td>
    			<td>
    				<textarea rows="10" cols="50" name="bcontent"></textarea>
    			</td>
    		</tr>
    		<tr>
    			<td colspan="2">
    			&nbsp;&nbsp;<button type="submit">작성</button>&nbsp;&nbsp;
    			<a href="/qna"><input type="button" value="목록보기"></a>
    			</td>
    			
    		</tr>
    	</table>
    
    </form>
		 
</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>