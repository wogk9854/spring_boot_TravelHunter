<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>

	<style>
	.rsv_wrapper{width:1536px; overflow:hidden; margin: 0 auto;}
	.rsv_wrapper .filtering_banner_zone{width:386px; float:left; height:100vh;position:relative; }
	.rsv_wrapper .filtering_banner{width:386px; height:30vh; background-color:#eaeaea; border-radius:30px;position:fixed;}
	.rsv_wrapper .place_list{width:1100px; float:left; margin-left:50px;}
	.rsv_wrapper .place_list .place_list_card{width:100%;}
	.rsv_wrapper .place_list .place_list_card li{width:100%;height:200px; margin-bottom:20px;border-radius:20px;background-color:#eaeaea;overflow:hidden}
	.rsv_wrapper .place_list .place_list_card li a{overflow:hidden;display:block;}
	.rsv_wrapper .place_list .place_list_card li .place_image {width:252px; height:200px; float:left;background:url("/images/place.jpg")no-repeat 0 0; background-size:cover}
	.rsv_wrapper .place_list .place_list_card li .place_image img{width:100%;}
	.rsv_wrapper .place_list .place_list_card li .place_info {float:left;}
	</style>
	
	<section>
		<!-- slider Area Start-->
        <div class="slider-area">
            <div class="single-slider hero-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/roomspage_hero.jpg" >
                <div class="container">
                    <div class="row ">
                        <div class="col-md-11 offset-xl-1 offset-lg-1 offset-md-1">
                            <div class="hero-caption">
                                <span>Camping Spot</span>
                                <h2>Place</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
		
		<div class="rsv_wrapper">
			<div class="filtering_banner_zone">
				<div class="filtering_banner">
					
				</div>
			</div>
			<div class="place_list">
				<div class="place_list_card">
					<ul>
						<li>
							<a href="">
								<div class="place_image"></div>
								<div class="place_info">
									<h3>장소이름</h3>
									<div class="location">안양</div>
									<div class="grade"><span>평점 : </span> 00 </div>
								</div>
							</a>
						</li>
						
						<li>
							<a href="">
								<div class="place_image"></div>
								<div class="place_info">
									<h3>장소이름</h3>
									<div class="location">안양</div>
									<div class="grade"><span>평점 : </span> 00 </div>
								</div>
							</a>
						</li>
						
						<li>
							<a href="">
								<div class="place_image"></div>
								<div class="place_info">
									<h3>장소이름</h3>
									<div class="location">안양</div>
									<div class="grade"><span>평점 : </span> 00 </div>
								</div>
							</a>
						</li>
						
						<li>
							<a href="">
								<div class="place_image"></div>
								<div class="place_info">
									<h3>장소이름</h3>
									<div class="location">안양</div>
									<div class="grade"><span>평점 : </span> 00 </div>
								</div>
							</a>
						</li>
						
						<li>
							<a href="">
								<div class="place_image"></div>
								<div class="place_info">
									<h3>장소이름</h3>
									<div class="location">안양</div>
									<div class="grade"><span>평점 : </span> 00 </div>
								</div>
							</a>
						</li>
						
						<li>
							<a href="">
								<div class="place_image"></div>
								<div class="place_info">
									<h3>장소이름</h3>
									<div class="location">안양</div>
									<div class="grade"><span>평점 : </span> 00 </div>
								</div>
							</a>
						</li>
						
					</ul>
				</div>
			</div>
		</div>
		
	</section>
	
    
<%@include file ="../include/footer.jsp" %>
   