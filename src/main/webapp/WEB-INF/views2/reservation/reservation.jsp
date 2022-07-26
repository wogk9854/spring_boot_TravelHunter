<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
    <main>

        <!-- slider Area Start-->
        <div class="slider-area">
            <div class="single-slider hero-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/roomspage_hero.jpg" >
                <div class="container">
                    <div class="row ">
                        <div class="col-md-11 offset-xl-1 offset-lg-1 offset-md-1">
                            <div class="hero-caption">
                                <span>Camping Spot</span>
                                <h2>Reservation</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
        
        <!-- Booking place Start-->
        <div class="booking-area" style="margin:100px 0; padding:0">
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
                                <input class="text" type="text" placeholder="장소입력"/>
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
                        <a href="#" class="btn select-btn">Book Now</a>
                   </div>
                </div>
            </form>
               </div>
               </div>
            </div>
        </div>
        <!-- Booking place End-->
        
        <!-- Room Start -->
        <section class="room-area" style="padding:0 0 100px 0">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8">
                        <!--font-back-tittle  -->
                        <div class="font-back-tittle mb-45">
                            <div class="archivment-front">
                                <h3>Camping Spot</h3>
                            </div>
                            <h3 class="archivment-back">Camping</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="rooms.html"><img src="assets/img/rooms/room1.jpg" alt=""></a>
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
                               <a href="rooms.html"><img src="assets/img/rooms/room2.jpg" alt=""></a>
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
                               <a href="rooms.html"> <img src="assets/img/rooms/room3.jpg" alt=""></a>
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
                                <a href="rooms.html"><img src="assets/img/rooms/room4.jpg" alt=""></a>
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
                                <a href="rooms.html"><img src="assets/img/rooms/room5.jpg" alt=""></a>
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

        <!-- Gallery img Start-->
        <div class="gallery-area fix">
            <div class="container-fluid p-0">
                <div class="row">
                    <div class="col-md-12">
                        <div class="gallery-active owl-carousel">
                            <div class="gallery-img">
                                <a href="#"><img src="assets/img/gallery/gallery1.jpg" alt=""></a>
                            </div>
                            <div class="gallery-img">
                                <a href="#"><img src="assets/img/gallery/gallery2.jpg" alt=""></a>
                            </div>
                            <div class="gallery-img">
                                <a href="#"><img src="assets/img/gallery/gallery3.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Gallery img End-->
    </main>
    
<%@include file ="../include/footer.jsp" %>
   