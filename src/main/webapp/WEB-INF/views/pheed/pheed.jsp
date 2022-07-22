<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<style>
	.pheed_wrapper{width:1536px; margin:0 auto}
	.pheed_wrapper .pheed_list{overflow:hidden}
	.pheed_wrapper .pheed_list > ul > li{float:left; width:calc((100% - 40px)/3); margin-left:20px;border:1px solid #000;box-sizing:border-box;}
	.pheed_wrapper .pheed_list > ul > li:first-child{margin-left:0}
	
	.pheed_wrapper .pheed_list > ul > li .photo img{width:100%;}
	
	
</style>


	<section style="padding:300px 0 100px; 0">
		<div class="pheed_wrapper">
			<div class="pheed_list">
				<ul>
					<li>
						<div class="photo">
							<img src="/images/place.jpg">
						</div>
						<div class="pheed">
							<div class="profile">
								<div class=p_img></div>
								<div class="p_id">홍길동</div>
							</div>
							<h3>title</h3>
							<div class="context">
								asdfasdfasdfasdfasdfasdfasdfasdf
							</div>
							<div class="show_area">
								<ul>
									<li><span>0</span>views</li>
									<li><span>0</span>comments</li>
								</ul>
								<div class="like"><span>0</span><img src=""></div>
							</div>
						</div>
					</li>
					
					<li>
						<div class="photo">
							<img src="/images/place.jpg">
						</div>
						<div class="pheed">
							<div class="profile">
								<div class=p_img></div>
								<div class="p_id">홍길동</div>
							</div>
							<h3>title</h3>
							<div class="context">
								asdfasdfasdfasdfasdfasdfasdfasdf
							</div>
							<div class="show_area">
								<ul>
									<li><span>0</span>views</li>
									<li><span>0</span>comments</li>
								</ul>
								<div class="like"><span>0</span><img src=""></div>
							</div>
						</div>
					</li>
					
					<li>
						<div class="photo">
							<img src="/images/place.jpg">
						</div>
						<div class="pheed">
							<div class="profile">
								<div class=p_img></div>
								<div class="p_id">홍길동</div>
							</div>
							<h3>title</h3>
							<div class="context">
								asdfasdfasdfasdfasdfasdfasdfasdf
							</div>
							<div class="show_area">
								<ul>
									<li><span>0</span>views</li>
									<li><span>0</span>comments</li>
								</ul>
								<div class="like"><span>0</span><img src=""></div>
							</div>
						</div>
					</li>
					
					
				</ul>
			</div>
		</div>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>