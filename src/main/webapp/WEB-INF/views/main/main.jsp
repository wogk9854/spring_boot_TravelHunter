<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<%@include file ="mainSlider.jsp" %>
	<section>
		<div id="page2">
			<div class="inner">
				<div class="title"><h2>인기 장소</h2></div>
				<div class="banner">
					<ul>
						<li>
							<div class="photo">
								<div class="photo_inner">
									promotion1
									<!-- <img src="images/promo1.png" alt="promotion1"> -->
								</div>
							</div>
							<div class="desc">
								<h3>SUMMER<br>HOLIDAY</h3>
								<p>특별한 여름휴가를 만드러 줄 시원한 할인 혜택을 확인해 보세요.</p>
								<a href="">GO TO OFFERS</a>
							</div>
						</li>
						<li>
							<div class="photo">
								<div class="photo_inner">
									promotion2
									<!-- <img src="images/promo2.png" alt="promotion1"> -->
								</div>
							</div>
							<div class="desc">
								<h3>FULL OPTION<br>PACKAGE</h3>
								<p>고객님의 편의를 위한 풀 패키지 캠핑 옵션을 준비했습니다.</p>
								<a href="">GO TO OFFERS</a>
							</div>
						</li>
						<li>
							<div class="photo">
								
								<div class="photo_inner">
									promotion3
									<!-- <img src="images/promo3.png" alt="promotion1"> -->
								</div>
							</div>
							<div class="desc">
								<h3>MEMBERSHIP<br>ONLY DEALS</h3>
								<p>캠핑카서바이벌에서 회원 전용 서비스를 제공합니다.</p>
								<a href="">GO TO OFFERS</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div><!-- page2 end -->
		
		<div id="page4">
			<div class="title">
				<h2>인기 피드</h2>
				<span>CAMPING CAR & SURVIVAL </span>
			</div>
			<div class="banner_zone">
				<ul>
					<li>
						<a href="">
							<div class="photo"><img src="images/banner1.png" alt=""></div>
							<div class="desc">
								<p>BLOG</p>
								<span>날씨 좋은 날엔 역시 #웰컴투제주 아니겠습니까?</span>
							</div>
						</a>
					</li>
					<li>
						<a href="">
							<div class="photo"><img src="images/banner2.png" alt=""></div>
							<div class="desc">
								<p>BLOG</p>
								<span>※제주도 캠핑카 렌트</span>
							</div>
						</a>
					</li>
					<li>
						<a href="">
							<div class="photo"><img src="images/banner3.png" alt=""></div>
							<div class="desc">
								<p>BLOG</p>
								<span>제주도 '캠핑카렌트' 하는 방법!</span>
							</div>
						</a>
					</li>
					<li>
						<a href="">
							<div class="photo"><img src="images/banner4.png" alt=""></div>
							<div class="desc">
								<p>INSTARGRAM</p>
								<span>#여기서행복할것_제주  #제주도  #캠핑  #캠핑카</span>
							</div>
						</a>
					</li>
					<li>
						<a href="">
							<div class="photo"><img src="images/banner5.png" alt=""></div>
							<div class="desc">
								<p>INSTARGRAM</p>
								<span>#여행에 미치다_제주  #제주도  #캠핑  #캠핑카</span>
							</div>
						</a>
					</li>
					<li>
						<a href="">
							<div class="photo"><img src="images/banner6.png" alt=""></div>
							<div class="desc">
								<p>YOUTUBE</p>
								<span>강아지랑 같이 제주도로 떠난 캠핑 여행</span>
							</div>
						</a>
					</li>
				</ul>
			</div><!-- banner_zone end -->
			<div class="news">
				<div class="news_title">소식 알림 신청</div>
				<div class="apply">
					<form>
						<div class="valign">
							<input type="text" placeholder="이메일 주소를 입력해주세요.">
							<input type="submit" value="신청">
							<div class="desc">앞으로 알림을 수신하고 싶지 않으시다면  <span>여기</span>  를 클릭해 주십시오.</div>
						</div>
					</form>
				</div>
			</div>
			<div class="bottom">
				캠핑카앤서바이벌은 한국에서 가장 큰 아웃도어그룹으로 전국 어느지점에서나 한결같은 편리한 서비스와 시설을 고객에게 제공하는 브랜드를 지향하고있습니다. 캠핑카앤서바이벌은 균형있는 라이프스타일을 추구하며 도전을 멈추지 않는
				활동적인 고객분들을 위해 튼튼한 캠핑시설과 세심한 배려가 묻어나는 상세옵션 서비스를 제공하고있습니다. 네가지 브랜드에서 제공되는 안락한 시설과 아름다운 풍경의 뷰 사이트는 레저와 컴포트를 모두 원하시는 고객분들을 만족시키는데
				부족함이 없습니다. 캠퍼, 춘춘카, 잇츠캠핑, 다이브인투가 제공하는 특별한 가격과 구성으로 만날 수 있는 전용 멤버쉽혜택, 특별 프로모션 및 이벤트를 공식 사이트에서 확인해보세요.
			</div>
		</div><!-- page4 end -->
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	var page4=document.getElementById("page4");
	var [title, banner_zone, news, bottom]=page4.children;
	var banner_zoneUl=banner_zone.firstElementChild;
	var banner_zoneLi=banner_zoneUl.children;
	
	window.addEventListener("scroll",function(){
		var t=window.pageYOffset;
		
		if(page4.offsetTop-300 < t){
			for(var i=0; i<banner_zoneLi.length; i++){
				banner_zoneLi[i].classList.add("show");
			}
		}
	});
</script>