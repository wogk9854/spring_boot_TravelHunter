<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<style>
	.contents_wrapper{width:1200px;margin:100px auto;}
	.top_contents{margin-bottom:50px;}
	.top_contents .place_photo{float:left;width:calc((100% - 40px)/2)}
	.top_contents .place_photo .main_photo{width:100%}
	.top_contents .place_photo .main_photo img{width:100%; height:400px;}
	.top_contents .place_photo .photo_banner{margin-top:20px;}
	.top_contents .place_photo .photo_banner li{float:left;margin-left:10px;width:calc((100% - 50px)/4)}
	.top_contents .place_photo .photo_banner img{width:100%;}
	.top_contents .place_desc{float:left;width:calc((100% - 40px)/2);margin-left:40px;}
	.top_contents .place_desc h1{font-weight:600;margin-bottom:20px;}
	.top_contents .place_desc .place_grade{color:#ffa726;display:inline-block}
	.top_contents .place_desc .place_grade .grade{margin:0 10px;padding:0 10px; border-radius:10px; color:#fff;background-color:#ffa726}
	.top_contents .place_desc .review{color:#00000061}
	.top_contents .place_desc .place_address{color:#0000008f;margin:20px 0;}
	.top_contents .place_desc .notice {width:100%;background:#fafafa;padding:30px;margin-top:50px;box-sizing:border-box;}
	.top_contents .place_desc .notice .tit{margin-bottom:20px;}
	.tab_list .select_tab{border-bottom:2px solid #eaeaea;}
	.tab_list .select_tab li{float:left; padding:20px; color:#00000061}
	.tab_list .select_tab li.active{color:#f1b233;}
	.gj-datepicker-md [role="right-icon"]{font-size:18px}
	.gj-textbox-md{height:44px;width:200px; margin:32px 0;}
	.tab_contents .room_list li{border:1px solid #eaeaea;overflow:hidden;margin-bottom:20px;}
	.tab_contents .room_list li .room_img{float:left}
	.tab_contents .room_list li .room_desc{float:left}
	
	.tab_contents{display:none}
	.tab_contents.active{display:block}
	
	.tab_contents .room_info h3{margin:32px 0;}
	.tab_contents .room_info .info_box{padding:40px;background:#eaeaea;color:#0000008f}
	
	.tab_contents .review_top{padding:40px 0;border-bottom: 2px solid #eaeaea;text-align:center}
	.tab_contents .review_list li {padding:20px;overflow:hidden}
	.tab_contents .review_list li .pic{float:left;width:100px; height:100px; border-radius:100%;overflow:hidden}
	.tab_contents .review_list li .pic img{width:100%}
	.tab_contents .review_list li .r_list_head{margin-left:30px;padding: 10px 0;float:left;height:100px}
	.tab_contents .review_list li .r_list_contents{float:left;width:100%;margin:20px 0 0 120px}
	.tab_contents .review_list li .r_list_contents .reply_date{padding:20px 0;}
	.tab_contents .review_list li .r_list_contents .img_zone{width:300px;}
	.tab_contents .review_list li .r_list_contents .img_zone img{width:100%;}
</style>
    <main>
    	<!-- s.contents_wrapper -->
		<div class="contents_wrapper">
		
			<div class="top_contents clearfix">
				<div class="place_photo">
					<div class="main_photo"><img scr=""></div>
					<div class="photo_banner">
						<ul>
							<c:forEach items="${placeDetail.getIpath()}" var="img">
								<li><img class="room_list" src="${img}"></li>
							</c:forEach>
						</ul>

										
						<div class="arrow">
							<div class="left"></div>
							<div class="right"></div>
						</div>
					</div>
				</div>
				<div class="place_desc">
					<h1>${placeDetail.pname}</h1>
					<div class="place_grade">평점<span class="grade">${placeDetail.grade}</span></div>
					<span class="review">리뷰 ${placeDetail.review}개</span>
					<div class="place_address">${placeDetail.location}</div>
					<div class="notice clearfix">
						<div class="tit">공지사항</div>
						<div class="text">
							- 체크인 : 15:00 | 체크아웃 : 11:00<br>
							- 22시 이후 체크인 시 호텔 프론트 문의<br>
							- 무료 Wi-Fi<br>
							- 전 객실 금연<br>
						</div>
					</div>
					
				</div>
	     	</div>
	     	
	     	
	     	<div class="tab_list">
	     		<div class="select_tab clearfix">
	     			<ul id="tab">
	     				<li class="active">객실예약</li>
	     				<li>위치정보</li>
	     				<li>리뷰</li>
	     			</ul>
	     		</div>
	     	</div>
	     	
	     	<style>
	     		.room_img img{width:300px; height:200px}
	     		.review_list li{border-bottom: 1px solid #eaeaea;}
	     		.rsv_info{font-size:15px; font-weight:300; color:#ccc;}
	     		.reply_date{font-size:14px; color:#ccc}
	     	</style>
	     	
	     	<!-- s.객실예약 -->
	     	<div class="tab_contents active">
	     		<form action="" method="GET">
	     			<input id="datepicker1"  placeholder="날짜선택"/>
	     		</form>
	     		<div class="room_list">
	     			<ul>
	     			<c:forEach items="${room}" var="room">
	     				<li>
	     					<div class="room_img"><img src="${room.roomImg}"></div>
	     					<div class="room_desc">
	     						<h2>${room.rname}호</h2>
	     						<div class="cpacity">기준${room.capacity}명/최대${(room.capacity)+2}명</div>
	     						<div class="check_in">체크인  15:00</div>
	     						<div class="check_out">체크아웃 11:00</div>
	     						<div class="price">${room.price}원</div>
	     						<button>예약하기</button>
	     					</div>
	     				</li>
	     			</c:forEach>
	     				
	     			</ul>
	     		</div>
	     	</div>
	     	<!-- e.객실예약 -->
	     	
	     	<!-- s.객실정보 -->
	     	<div class="tab_contents">
	     		<div class="room_info">
	     			<h3>위치정보</h3>
	     			<div class="info_box">
	     				

	     			</div>
	     		</div>
	     	</div>
	     	<!-- e.객실정보 -->
	     	
	     	<!-- s.리뷰 -->
			<div class="tab_contents">
				<div class="review_top">
					<h1>평균 평점</h1>
					<div class="grade"><img src="">${placeDetail.grade}</div>
					<p>전체리뷰 ${placeDetail.review}개</p>
				</div>
				<div class="review_list">
					<ul>
						<c:forEach items="${reviewList}" var="review">
							<li>
								<div class="pic">
									<img src="/images/profile_img.png">
								</div>
								<div class="r_list_head">
									<div class="review_title"><h2>${review.btitle}</h2></div>
									<div class="grade"><img src="">평점: ${review.bgrade}</div>
									<div class="rsv_info">${review.place_num} / 작성자:  ${review.member_id}</div>
								</div>
								<div class="r_list_contents">
									<div class="exp">${review.bcontent}</div>
									<div class="img_zone">
										<img src="/assets/img/rooms/room2.jpg">
									</div>
									<div class="reply_date">${review.bdate}</div>
								</div>
								
							</li>
						</c:forEach>
						
					</ul>
				</div>
			</div>
			<!-- e.객실정보 -->
		
		</div>
		<!-- e.contents_wrapper -->
    </main>
    
    <script>
    	//대표사진 설정			
		var ipath = $(".room_list").eq(0).attr("src");
		$(".main_photo img").attr("src",ipath);
	
    	//tab메뉴 클릭시 컨텐츠변경
    	var tab = document.getElementById("tab");
    	var tabLi = tab.children;
    	var tab_contents = document.getElementsByClassName("tab_contents");
    	
    	for(var i=0; i<tabLi.length; i++){
    		
    		tabLi[i].idx = i;
    		tabLi[i].addEventListener("click",function(e){
    			var n= e.currentTarget.idx;
    			
    			for(var j=0; tabLi.length; j++){
    				if(n == j){
    					tabLi[j].classList.add("active");
    					tab_contents[j].classList.add("active");
    				}else{
    					tabLi[j].classList.remove("active");
    					tab_contents[j].classList.remove("active");
    				}
    			}
    			
    		});
    	}
    </script>
    
<%@include file ="../include/footer.jsp" %>
   