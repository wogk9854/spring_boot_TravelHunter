<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
    
<style>

#qna .btn_wrpper{text-align: right;}
#qna .write_btn{display:inline-block;background-color:#AD9E87;margin:20px 0;border-radius:50px}
#qna .write_btn a{display:block;padding:0 50px; line-height:50px; border-radius:50px;color:#fff}
div#qna{
        margin-left: 156px;
        margin-right: 156px;

       }
       h1{
        text-align: center;
       }
       table{
        width: 100%;
       }
       p{
        position: relative;
        left: 1350px;
       }
.paging{text-align:center;}
</style>

	<!-- slider Area Start-->
    <div class="slider-area">
        <div class="single-slider hero-overly slider-height2 d-flex align-items-center" data-background="/assets/img/hero/roomspage_hero.jpg" >
            <div class="container">
                <div class="row ">
                    <div class="col-md-11 offset-xl-1 offset-lg-1 offset-md-1">
                        <div class="hero-caption">
                            <span>Board</span>
                            <h2>Q&A</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->
	<section>
		<div id="qna">
        <div class="btn_wrpper">
			<div class="write_btn">
				<a href="/qna/write">문의하기</a>
			</div>
		</div>
        <form action="/qna/search" method="GET">
        	<select>
	            <option selected>-- 선택 --</option>
	            <option>제목</option>
	            <option>내용</option>
	            <option>작성자</option>
	        </select>
	    	검색 : <input type="text" name="member_id">
	    	<input type='submit' value="검색">
        </form>
          
    <table border="1">
        <tr>
            <th width="70px">번호</th>
            <th>제목</th>
            <th width="100px">작성자</th>
            <th width="100px">진행상태</th>
            <th width="200px">작성일</th>
        </tr>
       
      	<c:forEach var="data" items="${boardList}">
      		<tr>
      			<td>${data.rownum}</td>
      			<td><a href="/qna/detail?id=${data.id}">${data.btitle}</a></td>
      			<td>${data.member_id}</td>
      			<td></td>
      			<td>${data.bdate}</td>
      			
      			
      		</tr>
      	
      	</c:forEach>
      	
    </table>
    <div class="paging">
	    <c:if test="${pageMaker.prev}">
			<a href="qna${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
		</c:if>
	    
	    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
			<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
		</c:forEach>
			
		<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
			<a href="qna${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
		</c:if>
    </div>
    
    
    </div>
	</section>
    
<%@include file ="../include/footer.jsp" %>
   