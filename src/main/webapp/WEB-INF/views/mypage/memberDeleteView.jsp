<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
	<section style="padding:200px 0 0 100px">
		<form action="/memberDelete" method="post" id="delForm">
			<label for="id">아이디</label>
			<input type="text" id="id" name="id" value="${member.id}" readonly="readonly" /><br>
			<label for="mpw">비밀번호</label>
			<input type="password" id="mpw" name="mpw" /><br>
			<label for="mname">이름</label>
			<input type="text" id="mname" name="mname" value="${member.mname}" readonly="readonly" /><br>

			<button type="submit" id="del">회원탈퇴</button>
	
			<c:if test="${msg == false }"> 
				비밀번호가 맞지 않습니다.
			</c:if>		
		</form>	
	</section>
<%@include file ="../include/footer.jsp" %>

<script type="text/javascript">
	$("#del").on("click", function(){
		if($("#mpw").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#mpw").focus();
			return false;
		}
	});

	
	
</script>