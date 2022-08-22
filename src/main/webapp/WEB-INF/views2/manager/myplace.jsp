<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file ="include/header.jsp" %>
    <style>
    section h1{padding:20px 0; font-weight:600}
    section h2{font-weight:600}
	.rsv_wrapper .place_list{width:100%;}
	.rsv_wrapper .place_list .place_list_card{width:100%;}
	.rsv_wrapper .place_list .place_list_card > ul > li{width:100%;overflow:hidden; margin-bottom:20px;background-color:#fff;}
	.rsv_wrapper .place_list .place_list_card li .place_image {width:500px; height:500px; float:left;background:url("/images/place.jpg")no-repeat 0 0; background-size:cover}
	.rsv_wrapper .place_list .place_list_card li .place_image img{width:100%;}
	.rsv_wrapper .place_list .place_list_card li .right_wrapp{float:left; width:calc(100% - 500px);height:500px;padding:30px}
	.rsv_wrapper .place_list .place_list_card li .place_info {float:left;width:100%; height:400px;font-size:20px;}
	.rsv_wrapper .place_list .place_list_card li .place_info p{float:left;width:50%;;margin:20px 0}
	.rsv_wrapper .place_list .place_list_card li .place_info p span{font-size:20px;font-weight:600;margin-right:20px;}
	.rsv_wrapper .place_list .place_list_card li .review {float:left;width:calc(100% - 370px);margin-left:20px;height:360px;}
	.rsv_wrapper .place_list .place_list_card li .review_list {overflow-y:scroll;padding-right: 20px;height:320px;}
	.rsv_wrapper .place_list .place_list_card li .review_list p{display:block;width:100%;word-break:break-all}
	
	
	.review_area{float:left;width:100%;height:600px;}
	
	
	.tab_list .select_tab{border-bottom:2px solid #eaeaea;}
	.tab_list .select_tab li{float:left; padding:20px; color:#00000061}
	.tab_list .select_tab li.active{color:#f1b233;}
	.gj-datepicker-md [role="right-icon"]{font-size:18px}
	.datepicker_wrapp{overflow:hidden}
	.startdate {margin:20px 20px 20px 0; float:left}
	.enddate {margin:20px 20px 20px 0; float:left}
	.tab_contents .room_list li{border:1px solid #eaeaea;overflow:hidden;margin-bottom:20px;}
	.tab_contents .room_list li .room_img{float:left}
	.tab_contents .room_list li .room_desc{float:left}
	
	.tab_contents{display:none}
	.tab_contents.active{display:block}
	
	.tab_contents .room_info h3{margin:32px 0;}
	.tab_contents .room_info .info_box{padding:40px;background:#eaeaea;color:#0000008f}
	
	.tab_contents .review_top{padding:40px 0;border-bottom: 2px solid #eaeaea;text-align:center}
	.tab_contents .review_top .grade{font-size:30px; font-weight:600;}
	.tab_contents .review_list > ul > li {padding:20px;overflow:hidden;border-bottom: 1px solid #eaeaea;}
	.tab_contents .review_list li .pic{float:left;width:100px; height:100px; border-radius:100%;overflow:hidden}
	.tab_contents .review_list li .pic img{width:100%}
	.tab_contents .review_list li .r_list_head{margin-left:30px;padding: 10px 0;float:left;height:100px}
	.tab_contents .review_list li .r_list_contents{float:left;width:100%;margin:20px 0 0 120px}
	.tab_contents .review_list li .r_list_contents .reply_date{padding:20px 0;}
	.tab_contents .review_list li .r_list_contents .img_zone{}
	
	.room_img img{width:300px; height:200px}
	.review_list li li{width:300px;float:left;}
	.rsv_info{font-size:15px; font-weight:300; color:#ccc;}
	.reply_date{font-size:14px; color:#ccc}
	
	.grade_img{width:100px; height:20px;display: inline-block;margin-right:20px;vertical-align: middle; background:url(/assets/img/boards/bg_score.png);background-size:cover;}
 	.grade_img.score_50{background-position:0 0}
 	.grade_img.score_45{background-position:0 -20px}
 	.grade_img.score_40{background-position:0 -40px}
 	.grade_img.score_35{background-position:0 -60px}
 	.grade_img.score_30{background-position:0 -80px}
 	.grade_img.score_25{background-position:0 -100px}
 	.grade_img.score_20{background-position:0 -120px}
 	.grade_img.score_15{background-position:0 -140px}
 	.grade_img.score_10{background-position:0 -160px}
 	.grade_img.score_5{background-position:0 -180px}
 	.grade_img.score_0{background-position:0 -200px}
	
	
	.btn_wrapper{text-align:right;margin:0 0 20px 0;}
	.edit_btn{display:inline-block;width:100%;color:#fff; font-weight:600;font-size:25px;text-align:center; padding: 10px 20px; background-color:#85b4d0; border-radius:30px;}
	.regist_btn{display:inline-block;width:200px;color:#fff; font-weight:600;font-size:18px;text-align:center; padding: 10px 20px; background-color:#85b4d0; border-radius:25px;}
	.review_list::-webkit-scrollbar {
	    width: 10px;  /* 스크롤바의 너비 */
	}
	
	.review_list::-webkit-scrollbar-thumb {
	    height: 10%; /* 스크롤바의 길이 */
	    background: #85b4d0; /* 스크롤바의 색상 */
	    
	    border-radius: 10px;
	}
	
	.review_list::-webkit-scrollbar-track {
	    background: rgba(33, 122, 244, .1);  /*스크롤바 뒷 배경 색상*/
	}
	
	</style>
	
	<section>
	<h1>업장관리</h1>
		<div class="rsv_wrapper">
		
			<div class=btn_wrapper>
				<a href="/manager/registplace" class="regist_btn">새로운업장등록</a>
			</div>
			
			<div class="place_list">
				<div class="place_list_card">
					<ul>	
						<c:forEach items="${placeData}" var="placeData">
							<li>
								<div class="place_image"></div>
								<div class="right_wrapp">
									<div class="place_info">
										<h2>업장정보</h2>
										<p class="pname"><span>업장명 :</span> ${placeData.pname}</p>
										<p class="pnum"><span>업장 고유번호 :</span> ${placeData.num}</p>
										<p class="location"><span>주소 :</span> ${placeData.location}</p>
										<p class="manager"><span>관리자 :</span> ${placeData.member_id}</p>
										<p class="pphone"><span>전화번호 :</span> ${placeData.pphone}</p>
										<p class="grade"><span>평균평점 : </span> ${placeData.grade} </p>
									</div>
									
									<a href="/manager/edit?num=${placeData.num}" class="edit_btn">업장설정/객실등록</a>
								</div>
								<div class="review_area">
									<div class="tab_list">
										<div class="select_tab clearfix">
											<ul class="tab">
												<li class="tab_roominfo active">객실정보</li>
												<li class="tab_review">리뷰</li>
											</ul>
										</div>
									</div>
									
									<!-- s.객실정보 -->
									<div class="content_wrap">
										<div class="tab_contents active">
											<div class="room_list">
												<ul class="place_num${placeData.num}">
												
												</ul>
											</div>
										</div>
										
										<!-- e.객실정보 -->
										
										<!-- s.리뷰 -->
										<div class="tab_contents">
											<div class="review_top">
												<h1>평균 평점</h1>
												<c:if test="${placeDetail.grade == 0}"><div class="grade_img score_0" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade > 0 && placeDetail.grade < 1}"><div class="grade_img score_5" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade == 1}"><div class="grade_img score_10" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade > 1 && placeDetail.grade < 2}"><div class="grade_img score_15" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade == 2}"><div class="grade_img score_20" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade > 2 && placeDetail.grade < 3}"><div class="grade_img score_25" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade == 3}"><div class="grade_img score_30" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade > 3 && placeDetail.grade < 4}"><div class="grade_img score_35" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade == 4}"><div class="grade_img score_40" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade > 4 && placeDetail.grade < 5}"><div class="grade_img score_45" style="margin:0 auto"></div></c:if>
												<c:if test="${placeDetail.grade == 5}"><div class="grade_img score_50" style="margin:0 auto"></div></c:if>
												<div class="grade">${placeDetail.grade}</div>
												<p>전체리뷰 ${placeDetail.review}개</p>
											</div>
											<div class="review_list">
												<c:if test="${reviewList.size() > 0}">
													<c:forEach items="${reviewList}" var="review">
														<ul>
															<li>
																<div class="pic">
																	<img src="/images/profile_img.png">
																</div>
																<div class="r_list_head">
																	<div class="review_title"><h2>${review.btitle}</h2></div>
																	<div class="grade">
																		<c:if test="${review.bgrade == 0}"><div class="grade_img score_0"></div></c:if>
																		<c:if test="${review.bgrade > 0 && review.bgrade < 1}"><div class="grade_img score_5"></div></c:if>
																		<c:if test="${review.bgrade == 1}"><div class="grade_img score_10"></div></c:if>
																		<c:if test="${review.bgrade > 1 && review.bgrade < 2}"><div class="grade_img score_15"></div></c:if>
																		<c:if test="${review.bgrade == 2}"><div class="grade_img score_20"></div></c:if>
																		<c:if test="${review.bgrade > 2 && review.bgrade < 3}"><div class="grade_img score_25"></div></c:if>
																		<c:if test="${review.bgrade == 3}"><div class="grade_img score_30"></div></c:if>
																		<c:if test="${review.bgrade > 3 && review.bgrade < 4}"><div class="grade_img score_35"></div></c:if>
																		<c:if test="${review.bgrade == 4}"><div class="grade_img score_40"></div></c:if>
																		<c:if test="${review.bgrade > 4 && review.bgrade < 5}"><div class="grade_img score_45"></div></c:if>
																		<c:if test="${review.bgrade == 5}"><div class="grade_img score_50"></div></c:if>
																		<span>평점: ${review.bgrade}</span>
																	</div>
																	<div class="rsv_info">${review.place_num} / 작성자:  ${review.member_id}</div>
																</div>
																<div class="r_list_contents">
																	<div class="exp">${review.bcontent}</div>
																	<div class="img_zone clearfix">
																		<ul>
																			<c:forEach items="${reviewImgList}" var="data">
																				<c:if test="${data.id == review.id}">
																					<li><img src="${data.ipath}"></li>
																				</c:if>
																			</c:forEach>
																		</ul>
																	</div>
																	<div class="reply_date">${review.bdate}</div>
																</div>
															</li>
														</ul>
													</c:forEach>
												</c:if>
												<c:if test="${reviewList.size() == 0 }">
													<div class=non_review style="padding:50px; text-align:center;">등록된 리뷰가 없습니다.</div>
												</c:if>
											</div>
										</div>
										<!-- e.객실정보 -->
									</div>
								</div>
							</li>
							<script>
								$.ajax({
									type : "GET",
									url : "/json/room/" + ${placeData.num},
									success : function(room) {
						
										$(room).each(function(){
											
											var htmls="";
											
											htmls += "<li class='room_num"　+ this.num　+ "'>";
											htmls += "<div class='room_img'>";
											htmls += "<ul>";
											htmls += "<li><img src='/assets/img/rooms/${img.iname}'></li>";	
											htmls += "</ul>";
											htmls += "</div>";
											htmls += "<div class='room_desc'>";
											htmls += "<h2>" + this.rname + "호</h2>" + this.place_num;
											htmls += "<div class='cpacity'>기준" + this.capacity + "명/최대" + this.capacity + "명</div>";
											htmls += "<div class=check_in'>체크인  15:00</div>";
											htmls += "<div class='check_out'>체크아웃 11:00</div>";
											htmls += "<div class='price'>" + this.price + "원</div>";
											htmls += "<button>예약하기</button>";
											htmls += "</div>";
											htmls += "</li>";
											
											$(".room_list .place_num" + this.place_num ).append(htmls);
											$(".room_num" + this.num).val(this.num);
											
											$.ajax({
												type : "GET",
												url : "/json/roomImg/" + this.num,
												success : function(roomImg) {
									
													$(roomImg).each(function(){
														
														var htmls="";
														
														
														
														$(".room_list .place_num" + this.room_num ).append(htmls); 
														
													});
												},
												error : function(){
													console.log("error");
												}
											});
											$(".room_num" + 122 + " li").append("<img src='/assets/img/rooms/room1.jpg'>");
											
										});
									},
									error : function(){
										console.log("error");
									}
								});
								
								
								console.log($(".room_num" + 122));
							</script>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<script>
    	//tab메뉴 클릭시 컨텐츠변경
    	//tab메뉴 클릭시 컨텐츠변경
    	var tab = document.getElementsByClassName("tab");
    	var content_wrap = document.getElementsByClassName("content_wrap");
    	var tab_contents = document.getElementsByClassName("tab_contents");
    	
    	for(var i=0; i<tab.length; i++){
    		for(var k=0; k<tab[i].children.length; k++){
	    		tab[i].idx = i;
	    		tab[i].children[k].idx = k;
	    		tab[i].children[k].addEventListener("click",function(e){
	    			var n= e.currentTarget.parentNode.idx;
	    			var p= e.currentTarget.idx;
	    			
	    			console.log(n,p);
	    			
	    			for(var j=0; j<tab.length; j++){
	    				for(var t=0; t<tab[j].children.length; t++){
		    				if(n == j){
		    					if(t == p){
		    						content_wrap[j].children[t].classList.add("active");
		    						tab[j].children[t].classList.add("active");
		    					}else{
		    						tab[j].children[t].classList.remove("active");
		    						content_wrap[j].children[t].classList.remove("active");
		    					}
		    				}
		    			}
	    			}
	    			
	    		});
    		}
    	}
    	
    	
    	
    </script>
<%@include file ="include/footer.jsp" %>        