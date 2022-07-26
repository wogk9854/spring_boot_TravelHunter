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
                                <span>Board</span>
                                <h2>pheeds</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->
		<table border="1" style="width:100%">
			<tr>
				<td>번호</td>
				<td>${data.id}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>${data.btitle}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${data.member_id}</td>
			</tr>
			<tr>
				<td>날짜</td>
				<td>${data.bdate}</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center">내용:</td>
			</tr>
			<tr style="height:300px"><td colspan="2">${data.bcontent}</td></tr>
		</table>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
	
</script>
