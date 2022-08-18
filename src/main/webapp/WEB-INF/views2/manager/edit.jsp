<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="include/header.jsp" %>
<style>
	.tab_contents .room_list li{border:1px solid #eaeaea;overflow:hidden;margin-bottom:20px;}
	.tab_contents .room_list li .room_img{float:left}
	.tab_contents .room_list li .room_desc{float:left}
	
	.tab_contents{display:none}
	.tab_contents.active{display:block}
	
	.tab_contents .room_info h3{margin:32px 0;}
	.tab_contents .room_info .info_box{padding:40px;background:#eaeaea;color:#0000008f}
	.room_img img{width:300px; height:200px}
	.review_list li li{width:300px;float:left;}
</style>

     <div class="row bg-title">
       <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
         <h4 class="page-title">Profile page</h4>
       </div>
       
     </div>
     <!-- /.row -->
     <!-- .row -->
     <div class="row">
       <div class="col-md-4 col-xs-12">
         <div class="white-box">
           <div class="user-bg">
             <img
               width="100%"
               alt="user"
               src="/images/place.jpg"
             />
             
           </div>
           <div class="user-btm-box">
             <div class="col-md-4 col-sm-4 text-center">
               <p class="text-purple"><i class="ti-facebook"></i></p>
               <h1>258</h1>
             </div>
             <div class="col-md-4 col-sm-4 text-center">
               <p class="text-blue"><i class="ti-twitter"></i></p>
               <h1>125</h1>
             </div>
             <div class="col-md-4 col-sm-4 text-center">
               <p class="text-danger"><i class="ti-dribbble"></i></p>
               <h1>556</h1>
             </div>
           </div>
         </div>
       </div>
       <div class="col-md-8 col-xs-12">
         <div class="white-box">
           <form class="form-horizontal form-material">
           
             <div class="form-group">
               <label class="col-md-12">업장명</label>
               <div class="col-md-12">
                 <input
                   type="text"
                   value="서울캠핑장"
                   class="form-control form-control-line"
                 />
               </div>
             </div>
             
             <div class="form-group">
               <label class="col-md-12">관리자</label>
               <div class="col-md-12">
                 <input
                   type="text"
                   value="홍길동"
                   class="form-control form-control-line"
                 />
               </div>
             </div>
             <div class="form-group">
               <label for="example-email" class="col-md-12">주소</label>
               <div class="col-md-12">
                 <input
                   type=text"
                   value="서울"
                   class="form-control form-control-line"
                   name="location"
                   id="example-email"
                 />
               </div>
             </div>
            
             <div class="form-group">
               <label class="col-md-12">Phone No</label>
               <div class="col-md-12">
                 <input
                   type="text"
                   value="010-000-0000"
                   class="form-control form-control-line"
                 />
               </div>
             </div>
             <div class="form-group">
               <div class="col-sm-12">
                 <button class="btn btn-success">Update Profile</button>
               </div>
             </div>
           </form>
         </div>
       </div>
     </div>
     
     <!-- s.객실관리 -->
     <h1>객실관리</h1>
     <div class="tab_contents active">
    		
    		<div class="room_list">
    			<ul>
	     			<c:forEach begin="1" end="5" var="room">
			     		<li>
	    					<div class="room_img">
	     						<ul>
	     							<li>
	     								<img src="/assets/img/rooms/room1.jpg">
	     							</li>
	     						</ul>
	    					</div>
	     					
	     					<div class="room_desc">
	     						<h2>101호</h2>
	     						<div class="cpacity">기준2명/최대4}명</div>
	     						<div class="check_in">체크인  15:00</div>
	     						<div class="check_out">체크아웃 11:00</div>
	     						<div class="price">50000원</div>
	     						<button>수정하기</button>
	     					</div>
	     				</li>
	     			</c:forEach>
    			</ul>
    		</div>
    	</div>
    <!-- e.객실예약 -->
  <%@include file ="include/footer.jsp" %>