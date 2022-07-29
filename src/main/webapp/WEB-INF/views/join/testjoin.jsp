<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<section style="padding:200px 0 0 100px">
		<form action="/create" method="post">
		아이디 : <input type="text" id="id" name="id" />
		<button type="button" id="idcheck" onclick="fn_idcheck();" value="N">중복확인</button>	<br>
         비밀번호 : <input type="password" name="mpw" id="mpw" required="required" /><br>
        비밀번호확인 : <input type="text" name="checkpw" id="mpw1">
        <div id="alert-success">비밀번호가 일치합니다.</div>
		<div id="alert-danger">비밀번호가 일치하지 않습니다.</div>
		<br>
        
        이름 : <input type="text" name="mname" id="mname" /><br>
        닉네임 : <input type="text" name="nick_name" id="nick_name" /><br>
        이메일 : <input type="text" name="memail" id="memail" /><br>
        핸드폰번호 : <input type="text" name="mphone" id="mphone" /><br>
        생년월일 : <input type="text" name="mbirth" id="mbirth"><br>
		
		<button type="submit" id="submit">회원가입</button>
		<button type="button">취소</button>	
		</form>
		
	</section>
<%@include file ="../include/footer.jsp" %>

<script type="text/javascript">
$(function(){
    $("#alert-success").hide();
    $("#alert-danger").hide();
    $("input").keyup(function(){
        var pwd1=$("#mpw").val();
        var pwd2=$("#mpw1").val();
        if(pwd1 != "" || pwd2 != ""){
            if(pwd1 == pwd2){
                $("#alert-success").show();
                $("#alert-danger").hide();
                $("#submit").removeAttr("disabled");
            }else{
                $("#alert-success").hide();
                $("#alert-danger").show();
                $("#submit").attr("disabled", "disabled");
            }    
        }
    });
});

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
		var idChkVal = $("#idcheck").val();
		if(idChkVal == "N"){
			alert("중복확인 버튼을 눌러주세요.");
			return false;
		}else if(idChkVal == "Y"){
			$("#regForm").submit();
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