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
	.top_contents .place_desc .notice {width:100%;height:200px;background:#fafafa;padding:30px;margin-top:50px;box-sizing:border-box;}
	.top_contents .place_desc .notice .tit{margin-bottom:20px;}
	.tab_list .select_tab{border-bottom:2px solid #eaeaea;}
	.tab_list .select_tab li{float:left; padding:20px; color:#00000061}
	.tab_list .select_tab li.active{color:#f1b233;}
	.gj-datepicker-md [role="right-icon"]{font-size:18px}
	.gj-textbox-md{height:44px;width:200px; margin:32px 0;}
	.tab_contents .room_list li{border:1px solid #eaeaea;overflow:hidden}
	.tab_contents .room_list li .room_img{float:left}
	.tab_contents .room_list li .room_desc{float:left}


</style>
    <main>
    	<!-- s.contents_wrapper -->
		<div class="contents_wrapper">
		
			<div class="top_contents clearfix">
				<div class="place_photo">
					<div class="main_photo"><img src="/assets/img/rooms/room1.jpg"></div>
					<div class="photo_banner ">
						<ul>
							<li><img src="/assets/img/rooms/room1.jpg"></li>
							<li><img src="/assets/img/rooms/room2.jpg"></li>
							<li><img src="/assets/img/rooms/room3.jpg"></li>
							<li><img src="/assets/img/rooms/room4.jpg"></li>
						</ul>
						<div class="arrow">
							<div class="left"></div>
							<div class="right"></div>
						</div>
					</div>
				</div>
				<div class="place_desc">
					<h1>안양 캠핑장</h1>
					<div class="place_grade">평점<span class="grade">4.5</span></div>
					<span class="review">리뷰 1000개</span>
					<div class="place_address">경기도 안양시 동안구</div>
					<div class="notice">
						<div class="tit">공지사항</div>
						<div class="text">
							1. 가나다라마바사아자<br>
							2. 가나다라마바사아자<br>
							3. 가나다라마바사아자<br>
						</div>
					</div>
					
				</div>
	     	</div>
	     	
	     	</style>
	     	<div class="tab_list">
	     		<div class="select_tab clearfix">
	     			<ul id="tab">
	     				<li class="active">객실예약</li>
	     				<li>숙소정보</li>
	     				<li>리뷰</li>
	     			</ul>
	     		</div>
	     	</div>
	     	<div class="tab_contents">
	     		<form action="" method="GET">
	     			<input id="datepicker1"  placeholder="날짜선택"/>
	     		</form>
	     		<div class="room_list">
	     			<ul>
	     				<li>
	     					<div class="room_img"><img src="/assets/img/rooms/room1.jpg"></div>
	     					<div class="room_desc">
	     						<h2>101호</h2>
	     						<div class="cpacity">기준2명/최대4명</div>
	     						<div class="check_in">체크인  15:00</div>
	     						<div class="check_out">체크아웃 11:00</div>
	     						<div class="price">120000원</div>
	     						<button>예약하기</button>
	     					</div>
	     				</li>
	     			</ul>
	     		</div>
	     	</div>

		</div>
		<!-- e.contents_wrapper -->
     	
     
    </main>
    
<%@include file ="../include/footer.jsp" %>
   