<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<script src="/assets/js/ajax/pheed.js"></script>
<style>
	.pheed_wrapper{width:1536px; margin:0 auto}
	.pheed_wrapper .btn_wrpper{text-align: right;}
	.pheed_wrapper .write_btn{display:inline-block;background-color:#AD9E87;margin:20px 0;border-radius:50px}
	.pheed_wrapper .write_btn a{display:block;padding:0 50px; line-height:50px; border-radius:50px;color:#fff}
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
	.pheed_wrapper .pheed_list .pheed .content{display:block;white-space:nowrap;width:80%;text-overflow:ellipsis;overflow:hidden;}
	.pheed_wrapper .pheed_list .pheed .show_area{border-top:2px solid #000;overflow:hidden;padding:15px 0 5px 0;}
	.pheed_wrapper .pheed_list .pheed .show_area li{float:left;margin-right:10px;}
	.pheed_wrapper .pheed_list .pheed .show_area .like{float:right;width:24px; height:20px;display:inline-block; background:url("/images/like_icon.png")no-repeat 0 0}
	.pheed_wrapper .pheed_list .pheed .show_area .like.active{background:url("/images/like_icon.png")no-repeat -24px 0}
	.dim{width:100%;height:100%; background-color:rgb(0,0,0,0.7);position:absolute; left:0; top:0;z-index:1000000;display:none}
	.detail_view.active{display:block;}
	.detail_view{width: 70%;height: 750px;padding:20px;position: absolute;left: 50%;top:0;transform: translate(-50%,13%);z-index:1000001;background-color:#fff;border-radius:30px;display:none}
    .dim.active{display:block;}
    .cancle{width:24px;height:24px;position:absolute;right:20px;top:20px;}
    
    .left{float:left;width:50%;}
	.right{float:left;width:50%;}
	.right .top{padding:10px;border-bottom:2px solid #eaeaea}
	.right .top .p_img{width: 50px;height: 50px; border-radius: 100px;overflow: hidden;float: left;}
	.right .top .p_img img{width:100%}
	.right .top .user_id{float:left;line-height:50px;margin-left:20px}
	.right .context_detail {height:500px;padding:20px;overflow-y:auto}
	.right .context_detail::-webkit-scrollbar {display: none;}
	.right .context_detail .tit{font-size:30px; font-weight:600;}
	.content_date{font-size:14px; color:#ccc;}
</style>

	<section style="padding:0 0 100px 0">
		<!-- slider Area Start-->
        <div class="slider-area">
            <div class="single-slider hero-overly slider-height2 d-flex align-items-center" data-background="/assets/img/hero/roomspage_hero.jpg" >
                <div class="container">
                    <div class="row ">
                        <div class="col-md-11 offset-xl-1 offset-lg-1 offset-md-1">
                            <div class="hero-caption">
                                <span>Board</span>
                                <h2>Pheed</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
		
		<div class="pheed_wrapper">
			<div class="btn_wrpper">
				<div class="write_btn">
					<a href="/pheed/write">피드작성</a>
				</div>
			</div>
			<div class="pheed_list">
				<ul>
					<c:forEach var="data" items="${boardList}">
						<li>
							<a href="" class="view_detail" id="${data.id}">
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
											<li><span class="bview_${data.id}">${data.bview}</span>views</li>
											<li>
												<span class="reply_count_${data.id}">${data.reply}</span>comments
											</li>
											<li><span>0</span>likes</li>
										</ul>
										<div class="like"></div>
									</div>
								</div>
							</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="dim">
			<div class="cancle"><img src="/assets/img/icon/ico_tab_close.png"></div>
		</div>
		<div id=detail class="detail_view clearfix">
				<div class="left">
					<div class="img_view">
						<img src="/images/place.jpg">
					</div>
				</div>
				<div class="right">
					<div class="top clearfix">
						<div class=p_img><img src="/images/profile_img.png"></div>
						<div class="user_id">홍길동</div>
					</div>
					<div class="context_detail">
						<div class="tit"></div>
						<div class="content_detail"></div>
						<div class="content_date"></div>
						<div class="reply_zone"></div>
					</div>
					<div class="reply_box">
						<input id="id" type="hidden"/>
						id:<input id="member_id" type="text" name="member_id"/><br>
						댓글: <input id="reply" type="text" name="reply"/>
						<button id="write_btn">게시</button>
					</div>
				</div>
			</div>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	//상세페이지 정보 가져오기
	$(".view_detail").click(function(e){
		e.preventDefault();
		var id = $(this).attr('id');
		var offsetTop = $(window).scrollTop();
		$("#detail,.dim").addClass("active");
		$("#detail,.dim").css({top:offsetTop});
		$("body").addClass("fixed");
		
		pheedDetail.increaseView(id);//조회수 증가 DB 업데이트
		pheedDetail.getBoard(id);//상세페이지 글정보 가져오기,view 조회수 업데이트 
		pheedDetail.getReply(id);//댓글 불러오기	
		
	});//e.comment,content click

	
	// s.게시버튼 클릭시(mousedown) 
	$("#write_btn").mousedown(function(){
		//DB에 댓글 데이터 추가
		registReply.register();
	});
	
	// 게시버튼 클릭시(mouseup) 댓글정보 불러와 화면 최신화 
	$("#write_btn").mouseup(function(){
		
		registReply.getBoard();
	});
	
	//상세페이지 닫기
	$(".dim").click(function(e){
		e.preventDefault();
		
		$("#detail,.dim").removeClass("active");
		$("body").removeClass("fixed");
	});
	
	//좋아요 아이콘
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
   