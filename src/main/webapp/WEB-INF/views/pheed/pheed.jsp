<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<style>
	.pheed_wrapper{width:1536px; margin:0 auto}
	.pheed_wrapper .pheed_list{overflow:hidden}
	.pheed_wrapper .pheed_list > ul > li{float:left; width:calc((100% - 40px)/3); margin-left:20px; margin-bottom:20px; border:1px solid #000;box-sizing:border-box;}
	.pheed_wrapper .pheed_list > ul > li:nth-child(3n+1){margin-left:0}
	
	.pheed_wrapper .pheed_list > ul > li .photo img{width:100%;}
	.pheed_wrapper .pheed_list .pheed{padding:20px;}
	.pheed_wrapper .pheed_list .pheed .profile{overflow:hidden}
	.pheed_wrapper .pheed_list .pheed .profile .p_img {width:50px; height:50px; border-radius:100px;overflow:hidden; float:left}
	.pheed_wrapper .pheed_list .pheed .profile .p_img img{width:100%;}
	.pheed_wrapper .pheed_list .pheed .profile .user_info{float:left;margin-left:15px;}
	.pheed_wrapper .pheed_list .pheed .profile .p_id{}
	.pheed_wrapper .pheed_list .pheed .profile .date{}
	.pheed_wrapper .pheed_list .pheed .context{height:100px;padding:20px 0}
	.pheed_wrapper .pheed_list .pheed .context .title{font-weight:600; font-size:20px;}
	.pheed_wrapper .pheed_list .pheed .show_area{border-top:2px solid #000;overflow:hidden;padding:15px 0 5px 0;}
	.pheed_wrapper .pheed_list .pheed .show_area li{float:left;margin-right:10px;}
	.pheed_wrapper .pheed_list .pheed .show_area .like{float:right;width:24px; height:20px;display:inline-block; background:url("/images/like_icon.png")no-repeat 0 0}
	.pheed_wrapper .pheed_list .pheed .show_area .like.active{background:url("/images/like_icon.png")no-repeat -24px 0}
	
</style>


	<section style="padding:300px 0 100px; 0">
		<div class="pheed_wrapper">
			<div class="pheed_list">
				<ul>
				<c:forEach var="data" items="${boardList}">
					<li>
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
									<li><span>0</span>comments</li>
									<li><span>0</span>like</li>
								</ul>
								<div class="like"></div>
							</div>
						</div>
					</li>
					</c:forEach>
					
				</ul>
				
			</div>
		</div>
		<a href="/pheed/write"><input type="button" value="작성"></a>
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
