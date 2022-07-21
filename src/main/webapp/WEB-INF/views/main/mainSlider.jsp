<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="slider">
	<div class="inner">
		<div class="swiper-container mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="images/main_slider1.png" alt="slider1">
					<div class="text">
						<div class="text_inner">
							<p>
								SUPER REWARDS
							</p>
							<span>전국 각 지점의 캠핑카앤서바이벌을 이용하시는 캠퍼 리워즈 회원님께 더블포인트와(X2) 더블 렌트일수(X2) 적립 혜택을 드립니다. </span>
							<a href="">자세히 보기</a>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<img src="images/main_slider2.png" alt="slider1">
					<div class="text">
						<div class="text_inner">
							<p>
								SUPER REWARDS
							</p>
							<span>전국 각 지점의 캠핑카앤서바이벌을 이용하시는 캠퍼 리워즈 회원님께 더블포인트와(X2) 더블 렌트일수(X2) 적립 혜택을 드립니다. </span>
							<a href="">자세히 보기</a>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<img src="images/main_slider3.png" alt="slider1">
					<div class="text">
						<div class="text_inner">
							<p>
								SUPER REWARDS
							</p>
							<span>전국 각 지점의 캠핑카앤서바이벌을 이용하시는 캠퍼 리워즈 회원님께 더블포인트와(X2) 더블 렌트일수(X2) 적립 혜택을 드립니다. </span>
							<a href="">자세히 보기</a>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-pagination"></div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
		</div>
		<div class="controller">
			<a href="" id="pause_play" class="pause">pause</a>
		</div>
	</div>
	<div class="page_down">
		<div class="page_inner">
			<div class="down1"><img src="images/down1.png" alt="down1"></div>
			<div class="down2"><img src="images/down2.png" alt="down2"></div>
			<div class="down3"><img src="images/down3.png" alt="down3"></div>
		</div>
	</div>
</div><!-- slider end -->

<script>
	//메인 슬라이더
	var pause_play=document.getElementById("pause_play");
	var swiper = new Swiper(".mySwiper", {
		speed: 1200,
		loop:true,
		
		autoplay: {
			delay: 5000, 
		},
		pagination: {
			el: ".swiper-pagination",
			clickable: true
		},
		navigation: {
	      nextEl: ".swiper-button-next",
	      prevEl: ".swiper-button-prev",
	    },
	});
	
	pause_play.addEventListener("click",function(e){
		e.preventDefault();
		if(e.currentTarget.classList.contains("play")){
			e.currentTarget.removeAttribute("class");
			e.currentTarget.classList.add("pause");
			e.currentTarget.innerText="pause";
			swiper.autoplay.start();
		}
		else{ 
			e.currentTarget.removeAttribute("class");
			e.currentTarget.classList.add("play");
			e.currentTarget.innerText="play";
			swiper.autoplay.stop();
		}
		
	});
</script>