<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<section style="padding:200px 0 0 100px">
		아이디 : <input type="text" id="id" name="id" />
		<form action="/idcheck" method="post">
		<button type="submit" id="idcheck" onclick="fn_idcheck();" value="N">중복확인</button><br>
		</form>
				
         비밀번호 : <input type="password" name="mpw" id="mpw" /><br>
        비밀번호확인 : <br>
        이름 : <input type="text" name="mname" id="mname" /><br>
        닉네임 : <input type="text" name="nick_name" id="nick_name" /><br>
        이메일 : <input type="text" name="memail" id="memail" /><br>
        핸드폰번호 : <input type="text" name="mphone" id="mphone" /><br>
        생년월일 : <br>
		<form action="/join" method="post">
		<button type="submit" id="submit">회원가입</button>
		<button type="button">취소</button>	
		</form>
		
	</section>

<%@include file ="../include/footer.jsp" %>

<script type="text/javascript">
		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/login";
						    
			})
		
			$("#submit").on("click", function(){
				if($("#id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#id").focus();
					return false;
				}
				if($("#mpw").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#mpw").focus();
					return false;
				}
				if($("#mname").val()==""){
					alert("성명을 입력해주세요.");
					$("#mname").focus();
					return false;
				}
				if($("#nick_name").val()==""){
					alert("닉네임을 입력해주세요.");
					$("#nick_name").focus();
					return false;
				}
				
				if($("#memail").val()==""){
					alert("이메일을 입력해주세요.");
					$("#memail").focus();
					return false;
				}
				if($("#mphone").val()==""){
					alert("전화번호를 입력해주세요.");
					$("#mphone").focus();
					return false;
				}
			});
		})
		
		
		function fn_idcheck(){
			$.ajax({
				url : "/idcheck",
				type : "post",
				dataType : "json",
				data : {"id" : $("#id").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디입니다.");
					}else if(data == 0){
						$("#idcheck").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					}
				}
			})
		}
		
	</script>