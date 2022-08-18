<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file ="include/header.jsp" %>
    <style>
    section h1{padding:20px 0; font-weight:600}
	.rsv_wrapper .place_list{width:100%;}
	.rsv_wrapper .place_list .place_list_card{width:100%;}
	.rsv_wrapper .place_list .place_list_card li{width:100%;overflow:hidden; margin-bottom:20px;background-color:#eaeaea;}
	.rsv_wrapper .place_list .place_list_card li .place_image {width:252px; height:200px; float:left;background:url("/images/place.jpg")no-repeat 0 0; background-size:cover}
	.rsv_wrapper .place_list .place_list_card li .place_image img{width:100%;}
	.rsv_wrapper .place_list .place_list_card li .place_info {float:left;}
	</style>
	
	<section>
	<h1>업장관리</h1>
		<div class="rsv_wrapper">
			<a href="/manager/registplace" style="color:#f00">새로운업장등록</a>
			<div class="place_list">
				<div class="place_list_card">
					<ul>
								
						<li>
							<div class="place_image"></div>
							<div class="place_info">
								<h3>장소이름</h3>
								<div class="location">안양</div>
								<div class="grade"><span>평균평점 : </span> 00 </div>
								<div class="review">
									<h2>리뷰</h2>
									<ul>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										
									</ul>
								</div>
								<a href="/manager/edit">업장편집</a>
							</div>
						</li>
								
						<li>
							<div class="place_image"></div>
							<div class="place_info">
								<h3>장소이름</h3>
								<div class="location">안양</div>
								<div class="grade"><span>평균평점 : </span> 00 </div>
								<div class="review">
									<h2>리뷰</h2>
									<ul>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										<li>
											아이디: 내용 ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ 
											<a href="">답글작성</a>
										</li>
										
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
<%@include file ="include/footer.jsp" %>        