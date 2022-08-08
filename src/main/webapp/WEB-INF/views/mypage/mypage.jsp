<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<style>
ul.tabs{
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li{
  display: inline-block;
	background: #898989;
	color: white;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current{
	background: #e0e0e0;
	color: #222;
}

.tab-content{
  display: none;
	background: #e0e0e0;
	padding: 12px;
}

.tab-content.current{
	display: inherit;
}


</style>	
	
	<section style="padding:200px 0 0 100px">
		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">내정보</li>
			<li class="tab-link" data-tab="tab-2">예약내역</li>
			<li class="tab-link" data-tab="tab-3">내기록</li>
			<li class="tab-link" data-tab="tab-4">회원탈퇴</li>
		</ul>
		<div id="tab-1" class="tab-content current">
			<h1>내정보</h1>
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
				<a href="/memberUpdateView"><input type="button" value="회원정보수정"></a>
				<a href="/memberDeleteView"><input type="button" value="회원탈퇴"></a>	
			</form>
	
		</div>
		<div id="tab-2" class="tab-content">
			<h1>예약내역</h1>
			<p>예약내역내용</p>
		</div>
		<div id="tab-3" class="tab-content">
			<h1>내기록</h1>
			<p>내기록내용</p>
		</div>
		<div id="tab-4" class="tab-content">
			<h1>회원탈퇴</h1>
			<form action="/memberDelete" method="post" id="delForm">
				<label for="id">아이디</label>
				<input type="text" id="id" name="id" value="${member.id}" readonly="readonly" /><br>
				<label for="delpw">비밀번호</label>
				<input type="password" id="delpw" name="delpw" /><br>
				<label for="mname">이름</label>
				<input type="text" id="mname" name="mname" value="${member.mname}" readonly="readonly" /><br>

				<button type="submit" id="submit">회원탈퇴</button>
	
				<c:if test="${msg == false }"> 
					비밀번호가 맞지 않습니다.
				</c:if>		
			</form>	
			
		</div>
			
			
		
		
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	$(document).ready(function(){
	
		$('ul.tabs li').click(function(){//선택자를 통해 tabs 메뉴를 클릭 이벤트를 지정해줍니다.
			var tab_id = $(this).attr('data-tab');

			$('ul.tabs li').removeClass('current');//선택 되있던 탭의 current css를 제거하고 
			$('.tab-content').removeClass('current');		

			$(this).addClass('current');////선택된 탭에 current class를 삽입해줍니다.
			$("#" + tab_id).addClass('current');
		})

	});
</script>
<script type="text/javascript">
	$("#submit").on("click", function(){
		if($("#delpw").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#delpw").focus();
			return false;
		}
	});
	
	
</script>
<script>
$.ajax({
	url : "/delpwcheck",
	type : "POST",
	dataType : "json",
	data : $("delForm").serializeArray(),
	success : function(data){
		if(data==0){
			alert("패스워드가틀렸습니다.");
			return;
		}else{
			if(confirm("회원탈퇴하시겠습니까?")){
				$("delForm").submit();
			}
		}
		
	}
	
});

</script>	
		
		
		
		
		
		<c:if test="${member != null }">
			<h1 style="font-size:50px">${member.nick_name }님 안녕하세요</h1>
		</c:if>
		<c:if test="${member == null }">
			<a href="/login"><input type="button" value="로그인하기"></a>
		</c:if>