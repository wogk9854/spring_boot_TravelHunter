<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
    
    <main>
        <!-- slider Area Start-->
        <div class="slider-area ">
            <!-- Mobile Menu -->
            <div class="slider-active dot-style">
                <div class="single-slider  hero-overly slider-height d-flex align-items-center" data-background="/images/main_slider5.png" >
                    <div class="container">
                        <div class="row justify-content-center text-center">
                            <div class="col-xl-9">
                                <div class="h1-slider-caption">
                                    <h1 data-animation="fadeInUp" data-delay=".4s">Travel Hunter</h1>
                                    <h3 data-animation="fadeInDown" data-delay=".4s">Camping</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider  hero-overly slider-height d-flex align-items-center" data-background="/images/main_slider1.png" >
                    <div class="container">
                        <div class="row justify-content-center text-center">
                            <div class="col-xl-9">
                                <div class="h1-slider-caption">
                                    <h1 data-animation="fadeInUp" data-delay=".4s">Travel Hunter</h1>
                                    <h3 data-animation="fadeInDown" data-delay=".4s">Camping</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="single-slider  hero-overly slider-height d-flex align-items-center" data-background="/images/main_slider3.png" >
                    <div class="container">
                        <div class="row justify-content-center text-center">
                            <div class="col-xl-9">
                                <div class="h1-slider-caption">
                                    <h1 data-animation="fadeInUp" data-delay=".4s">Travel Hunter</h1>
                                    <h3 data-animation="fadeInDown" data-delay=".4s">Camping</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->

        <!-- Booking place Start-->
        <div class="booking-area">
            <div class="container">
               <div class="row ">
               <div class="col-12">
                <form action="">
                <div class="booking-wrap d-flex justify-content-between align-items-center">
                 
                    <!-- select in date -->
                    <div class="single-select-box mb-30">
                        <!-- select out date -->
                        <div class="boking-tittle">
                            <span> Check In Date:</span>
                        </div>
                        <div class="boking-datepicker">
                            <input id="datepicker1"  placeholder="10/12/2020" />
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box mb-30">
                        <!-- select out date -->
                        <div class="boking-tittle">
                            <span>Check OutDate:</span>
                        </div>
                        <div class="boking-datepicker">
                            <input id="datepicker2"  placeholder="12/12/2020" />
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box mb-30">
                        <div class="boking-tittle">
                            <span>숙박인원</span>
                        </div>
                        <div class="select-this">
                            <form action="#">
                                <div class="select-itms">
                                    <select name="select" id="select1">
                                        <option value="">1</option>
                                        <option value="">2</option>
                                        <option value="">3</option>
                                        <option value="">4+</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box mb-30">
                        <div class="boking-tittle">
                            <span>장소,지역</span>
                        </div>
                        <div class="select-this">
                            <form action="#">
                            	<!--  
                                <div class="select-itms">
                                    <select name="select" id="select2">
                                        <option value="">서울</option>
                                        <option value="">부산</option>
                                        <option value="">경기도</option>
                                        <option value="">강원도</option>
                                        <option value="">충청도</option>
                                        <option value="">경상도</option>
                                        <option value="">전라도</option>
                                    </select>
                                </div>
                               	-->
                                <input class="text"  placeholder="장소입력" />
                            </form>
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box mb-30">
                        <div class="boking-tittle">
                            <span>타입 선택</span>
                        </div>
                        <div class="select-this">
                            <form action="#">
                                <div class="select-itms">
                                    <select name="place_type_num" id="select3">
                                    	<option selected>선택하세요</option>
                                        <option value="0">노지캠핑</option>
                                        <option value="1">오토캠핑</option>
                                        <option value="2">글램핑</option>
                                        <option value="3">차박</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box pt-45 mb-30">
                        <a href="#" class="btn select-btn">예약하기</a>
                   </div>
                </div>
            </form>
               </div>
               </div>
            </div>
        </div>
        <!-- Booking place End-->

        <!-- Room Start -->
        <section class="room-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8">
                        <!--font-back-tittle  -->
                        <div class="font-back-tittle mb-45">
                            <div class="archivment-front">
                                <h3>Best Spot</h3>
                            </div>
                            <h3 class="archivment-back">Best Spot</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="rooms.html"><img src="/assets/img/rooms/room1.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">Classic Double Bed</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="rooms.html"><img src="/assets/img/rooms/room2.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">Classic Double Bed</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="rooms.html"> <img src="/assets/img/rooms/room3.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">Classic Double Bed</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                                <a href="rooms.html"><img src="/assets/img/rooms/room4.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">Classic Double Bed</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                                <a href="rooms.html"><img src="/assets/img/rooms/room5.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">Classic Double Bed</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="rooms.html"> <img src="assets/img/rooms/room6.jpg" alt=""></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="rooms.html">Classic Double Bed</a></h3>
                                <div class="per-night">
                                    <span><u>$</u>150 <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="room-btn pt-70">
                        <a href="#" class="btn view-btn1">View more  <i class="ti-angle-right"></i> </a>
                    </div>
                </div>
            </div>

        </section>
        <!-- Room End -->

        <!-- Dining Start -->
        <div class="dining-area dining-padding-top">
            <!-- Single Left img -->
            <div class="single-dining-area left-img">
                <div class="container">
                    <div class="row justify-content-end">
                        <div class="col-lg-8 col-md-8">
                            <div class="dining-caption">
                                <span>Our resturent</span>
                                <h3>Dining & Drinks</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br> tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <br>veniam, quis nostrud.</p>
                                <a href="#" class="btn border-btn">Learn More <i class="ti-angle-right"></i> </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
            <!-- single Right img -->
            <div class="single-dining-area right-img">
                <div class="container">
                    <div class="row justify-content-start">
                        <div class="col-lg-8 col-md-8">
                            <div class="dining-caption text-right">
                                <span>Our Pool</span>
                                <h3>Swimming Pool</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br> tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim <br>veniam, quis nostrud.</p>
                                <a href="#" class="btn border-btn">Learn More  <i class="ti-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <!-- Dining End -->

        <!-- Pheed Start -->
       <div class="blog-area" style="padding:150px 0">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8">
                        <!-- Seciton Tittle  -->
                        <div class="font-back-tittle mb-50">
                            <div class="archivment-front">
                                <h3>인기 피드</h3>
                            </div>
                            <h3 class="archivment-back">pheed</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
               		 <c:forEach begin="0" end="2" var="data" items="${data}">
               		 	<div class="col-xl-4 col-lg-4 col-md-6">
	                        <!-- Single Blog -->
	                        <div class="single-blog mb-30">
	                            <div class="blog-img">
	                                <a href="/pheed/detail?id=${data.id}"><img src="assets/img/our_blog/blog-img1.jpg" alt=""></a>
	                            </div>
	                            <div class="blog-caption">
	                                <div class="blog-cap-top d-flex justify-content-between mb-40">
	                                    <span>${data.bview} views</span>
	                                    <ul><li>by<a href="#">${data.member_id}</a></li></ul>
	                                </div>
	                                <div class="blog-cap-mid">
	                                    <p><a href="/pheed/detail?id=${data.id}">${data.bcontent}</a></p>
	                                </div>
	                                <!-- Comments -->
	                                <div class="blog-cap-bottom d-flex justify-content-between">
	                                    <span>${data.bdate}</span>
	                                    <span><img src="assets/img/our_blog/blog-comments-icon.jpg" alt="">0</span>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
               		</c:forEach>
                    
                    
                </div>
            </div>
       </div>
        <!-- Pheed End -->
    </main>
<%@include file ="../include/footer.jsp" %>
   