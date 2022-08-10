<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<style>
#qna .tit{text-align:center; font-size:40px;font-weight:600;}
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
</style>
	<section style="padding:200px 0 0 0">
		<div id="qna">
        <div class="tit"><h2>Q&A</h2></div>
        <div class="btn_wrpper">
			<div class="write_btn">
				<a href="/qna/write">문의하기</a>
			</div>
		</div>
        <form id="searchForm" action="/qna/search" method="post">
        	<select name="searchType">
	            <option value="">-- 선택 --</option>
	            <option value="btitle">제목</option>
	            <option value="bcontent">내용</option>
	            <option value="member_id">작성자</option>
	          </select>
	    	검색 : <input type="text" name="keyword">
	    	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
        	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
	    	<button type="submit">검색</button>
        	
        	
        </form>
        
          
    <table border="1">
        <tr>
            <th width="70px">번호</th>
            <th>제목</th>
            <th width="100px">작성자</th>
            <th width="100px">조회수</th>
            <th width="200px">작성일</th>
        </tr>
       
      	<c:forEach var="data" items="${boardList}">
      		<tr>
      			<td>${data.id}</td>
      			<td><a href="/qna/detail?id=${data.id}">${data.btitle}</a></td>
      			<td>${data.member_id}</td>
      			<td>${data.bview }</td>
      			<td>${data.bdate}</td>
      		</tr>
      	</c:forEach>
    </table>
    
    <c:if test="${pageMaker.prev}">
		<a href="qna${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
	</c:if>
    
    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
		<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
		<a href="qna${pageMaker.makeQuery(idx)}">${idx}</a>
	</c:forEach>
		
	<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
		<a href="qna${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
	</c:if> <br>
    
    
    </div>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>