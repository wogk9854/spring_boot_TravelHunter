<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<style>
div#qna{
        margin-left: 156px;
        margin-right: 156px;

       }
       h2{
        text-align: center;
        font-size: 3.0em;
        padding-top: 20px;
        padding-bottom: 50px;
       }
       table{
        width: 100%;
       }
       td{
       	text-align: center;
       }
       
</style>
	<section style="padding:200px 0 0 0">
		 <div id="qna">
        <h2>Q&A</h2>
          <select>
            <option value='' selected>-- 선택 --</option>
            <option>제목</option>
            <option>내용</option>
            <option>작성자</option>
          </select>
    검색 : <input type="text">
    <input type='submit' value="검색">
    <table border="1">
        <tr>
            <th width="70px">번호</th>
            <th>제목</th>
            <th width="100px">작성자</th>
            <th width="100px">진행상태</th>
            <th width="200px">작성일</th>
        </tr>
        <tr>
            <td>1</td>
            <td>테스트1</td>
            <td>재하</td>
            <td>완료</td>
            <td>2022-07-21</td>
        </tr>
        <tr>
            <td>1</td>
            <td>테스트1</td>
            <td>재하</td>
            <td>완료</td>
            <td>2022-07-21</td>
        </tr>
      	<c:forEach var="board" items="${list}">
      		<tr>
      			<td>${board.bid}</td>
      			<td><a href="contentfrom?bid=${board.bid}">${board.btitle}</a></td>
      			<td>${board.bname}</td>
      			<td></td>
      			<td>${board.bdate}</td>
      		</tr>
      		</c:forEach>
      		<tr>
      			<td colspan="5"><a href="qna/write">글작성</a></td>
      		</tr>
      	
      	
      	
    </table>
    <br/>
    
    
    </div>
	</section>
<%@include file ="../include/footer.jsp" %>

<script>
	
</script>