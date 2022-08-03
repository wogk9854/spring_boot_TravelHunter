<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<style>
	.pheed .profile{overflow:hidden}
	.pheed .profile .p_img {width:50px; height:50px; border-radius:100px;overflow:hidden; float:left}
	.pheed .profile .p_img img{width:100%;}
	.pheed .profile .user_info{float:left;margin-left:15px;}
	.pheed .profile .p_id{}
	.pheed .profile .date{}
	
	.pheed > ul > li{float:left; width:calc((100% - 40px)/3); margin-left:20px; margin-bottom:20px; border:1px solid #000;box-sizing:border-box;}
	.pheed > ul > li:nth-child(3n+1){margin-left:0}
	.pheed > ul > li .photo img{width:100%;}
	
	.pheed .show_area{border-top:2px solid #000;overflow:hidden;padding:15px 0 5px 0;}
	.pheed .show_area li{float:left;margin-right:10px;}
	.pheed .show_area .like{float:right;width:24px; height:20px;display:inline-block; background:url("/images/like_icon.png")no-repeat 0 0}
	.pheed .show_area .like.active{background:url("/images/like_icon.png")no-repeat -24px 0}
	
	.pheed .context{height:100px;padding:20px 0}
	.pheed .context .title{font-weight:600; font-size:20px;}



</style>




	<section style="padding:300px 0 100px; 0">
		<div class="photo">
			<img src="/images/place.jpg">
		</div>
		<div class="pheed">
			<div class="profile">
				<div class=p_img><img src="/images/profile_img.png"></div>
				<div class="user_info">
					<div class="p_id">${data.member_id}</div>
					<div class="date">${data.bdate}</div>
					</div>
				</div>
							
			<div class="context">
				<div class="title">${data.btitle}</div>
				<div class="content">${data.bcontent}</div>
			</div>
			<div class="show_area">
				<ul>
					<li><span>0</span>views</li>
					<li><span>${data.reply }</span>comments</li>
					<li><span>0</span>like</li>
				</ul>
				<div class="like"></div>
				<div></div>
			</div>
		</div>
		<c:if test="${member.id == data.member_id }">
		<form action="/pheed/delete?id=${data.id }" method="POST">
			<button type="submit">글삭제</button>
		</form>
		</c:if>
		
		게시글번호 : ${data.id }
		
			
		
		
		<br>
		<br>
		
		<table border="1">
			<tr>
				<td>번호</td>
				<td>작성자</td>
				<td>내용</td>
				<td>날짜</td>
			</tr>
			<c:forEach var="reply" items="${reply}">
			<tr>
				<td>${reply.num }</td>
				<td>${reply.member_id }</td>
				<td>${reply.reply }</td>
				<td>${reply.repdate }</td>
			</tr>
			</c:forEach>
		</table>
		
		<br>
		<form action="/pheed/replywrite" method="post">
		<c:if test="${member == null }"></c:if>
		<c:if test="${member != null }">
		<input type="hidden" name="board_id" value="${data.id }">
		<input type="hidden" name="member_id" value="${member.id }">
		<textarea name="reply"></textarea>
		<button type="submit">작성</button>
		</c:if>
		</form>
		
		
		
		
		
		
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
var like = document.getElementsByClassName("like");

for(var i=0; i<like.length; i++){
	like[i].idx=i;
	like[i].addEventListener("click",function(e){
		var n = e.currentTarget.idx;
		for(var j=0; j<like.length; j++){
			if(n == j){
				if(like[j].classList.contains("active") == false){
					like[j].classList.add("active");
				}else{
					like[j].classList.remove("active");
				}
				
			}
		}
		
	});
}
	
</script>
