<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
	<section>
		<div id="page1">
			<div id="page1_bg"></div>
			<div class="inner">
				<div class="logo">
					<ul>
						<li>
							<a href=""class="brand">노지캠핑</a>
							<div class="copy">
								<ul>
									<li><strong>Classic Upper Upscale</strong>
									</li>
									<li><p>캠퍼는 사용자 맞춤 시설과 서비스로 비교할 수 없는 국내 최다 캠핑카 보유를 자랑합니다. 전국 각 지점의 보증된 서비스와 시설을 제공하고 있으며 변함없는 만족감을 선사하고 있습니다.</p></li>
									<li><a href=""><span>자세히 보기</span></a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href=""class="brand">오토캠핑</a>
							<div class="copy">
								<ul>
									<li><strong>Light your moments at all around destination</strong>
									</li>
									<li><p>제주 공항에서 가장 가깝게 만날 수 있는 차박용 세미 캠핑카.<br>
										2인 사용에 최적화 된 세미 캠핑카는 가볍게 몸만 오셔도 충분한 감성 캠핑과 차박을 즐길 수 있도록 필수 IT-ITEM으로 준비되어 있습니다.</p></li>
									<li><a href=""><span>자세히 보기</span></a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href="" class="brand">글램핑</a>
							<div class="copy">
								<ul>
									<li><strong>A journey for inspiration</strong>
									</li>
									<li><p>여행은 낯선 곳으로의 여정 안에서 다양한 라이프스타일을 가진 사람들과의 만남을 통해 새로운 경험과 발견을 하고, 끊임없이 창조와 성장을 해가는 과정입니다.<br>그 새로운 경험과 영감의 여정에 잇츠캠핑이 함께합니다.</p></li>
									<li><a href=""><span>자세히 보기</span></a></li>
								</ul>
							</div>
						</li>
						<li>
							<a href=""class="brand">차박</a>
							<div class="copy">
								<ul>
									<li><strong>Mordern conveneience and design for balanced travel</strong>
									</li>
									<li><p>모든 것이 활동적인 캠퍼들을 위해 이상적으로 설계되었습니다.<br>다이브인로드의 편리한 대여서비스, 캠핑에 필요한 모든 옵션을 이용해 가장 다이나믹한 캠핑을 떠나세요.<br>다이브인로드는 캠퍼들의 새로운도전을 든든하게 뒷받침 합니다.</p></li>
									<li><a href=""><span>자세히 보기</span></a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	//page1 마우스효과
	var bgn=0;
	
	motionBackground(bgn);
	
	$("#page1 .logo > ul > li").mouseenter(function(e){
		e.preventDefault();
		bgn=$(this).index();
		motionBackground(bgn);
	});
	
	function motionBackground(n){
		$("#page1_bg").addClass("active");
		$("#page1_bg").attr("class","case"+n)
	
		$("#page1_bg").fadeIn(500, function(){
			$("#page1").attr("class", "case"+n);
			$("#page1").addClass("active");
			$(this).hide();
			$(this).removeClass("active");
		});
		$("#page1 .logo > ul > li").each(function(i){
			if(i == bgn){
				$(this).addClass("active");
			}
			else{
				$(this).removeClass("active");
			}
		});
	}
</script>