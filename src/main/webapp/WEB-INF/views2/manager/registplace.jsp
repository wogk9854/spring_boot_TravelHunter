<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
	<section>
		<!-- slider Area Start-->
        <div class="slider-area">
            <div class="single-slider hero-overly slider-height2 d-flex align-items-center" data-background="/assets/img/hero/roomspage_hero.jpg" >
                <div class="container">
                    <div class="row ">
                        <div class="col-md-11 offset-xl-1 offset-lg-1 offset-md-1">
                            <div class="hero-caption">
                                <span>Manager</span>
                                <h2>Regist Room</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
        
		<form action="/manager/registPlace" method="POST">
			
			작성자: <input type="text" name="member_id"/><br><br>
			사업장명: <input type="text"  name="pname"/><br><br>
			주소:<br>
			<select name="location">
				<option selected>위치선택</option>
				<option value="서울">서울</option>
				<option value="부산">부산</option>
				<option value="강원도">강원도</option>
				<option value="제주도">제주도</option>
			</select>
			<br><br><br>
			연락처:<input type="number"  name="pphone"/><br>
			<input type="submit" value="등록"/>
		</form>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>