<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file ="../include/header.jsp" %>
<style>
*{ padding: 0; margin: 0; } /* 태그 여백 없앰 */
li{ list-style: none; } /* 기호나 번호를 제거 */
a{ text-decoration: none; } /* 링크텍스트에 밑줄없앰 */
button{ cursor: pointer; } /* 모든 버튼에 마우스손모양 처리 */

/* body설정 */
body{ background-color: #ededed; }
section{padding:50px 0}
.loginbox{
    width: 780px;
    margin: 0 auto; /* 블록요소를 부모영역에서 가운데 처리 */
}
.loginbox h2{
    width: 100%; /* 부모영역을 상속 */

    /* 한줄텍스트인 경우만 height와 line-height가 같으면 세로 가운데 처리 */
   
    text-align: center; font-size: 20px;
    font-weight: normal;
}
.loginbox form{
    width: 100%;
    background-color: #fff;
    /* 패딩수치를 인사이드 처리 */
    padding: 60px; box-sizing: border-box;
}
.loginbox legend{
    /* 요소를 화면 밖으로 처리 */
    position: absolute; left: -999em;

    /* 웹접근성으로 스크린리더기가 읽어줘야 하므로 display: none;을 사용하지 말것 */
}
.loginbox label{
    display: block;
    font-size: 12px; color: #333;
    margin-bottom: 10px; /* 동위선택자와의 간격 조정 */
}
.loginbox input{
    display: block;
    width: 100%; height: 50px;
    margin-bottom: 25px; /* 동위선택자와의 간격 조정 */
    border: none; background-color: #ededed;
    padding: 0 20px; /* 앞상하 뒷좌우 */
    box-sizing: border-box; /* 패딩수치를 인사이드 처리 */
}

.loginbox ul{
    width: 100%;
    text-align: right; /* 글자를 오른쪽으로 처리 */
    margin-bottom: 60px;
}
.loginbox li{
    display: inline-block;
    height: 12px; line-height: 12px;
}
.loginbox li:last-child{
    border-left: 1px solid #333;
    padding-left: 10px; /* 테두리 안쪽 여백 */
    margin-left: 4px; /* 테두리 바깥쪽 여백 */
}
.loginbox a{
    /* 글자관련은 보통 최종태그에 줘야 적용 */
    color: #333; font-size: 12px;

    /* 현재 위치에서 상대적 이동 */
    position: relative; top: -2px;
}
.loginbox button{
    display: block;
    width: 220px; height: 50px;
    margin: 0 auto; /* 블록요소가 부모 영역에서 가운데 오기 */
    border: none;
    background-color: #AD9E87;
    color: #fff; font-size: 14px; font-weight: bold;
}

.sociallogin{
	width: 220px;
	margin: 0 auto;
	margin-bottom: 5px;
	
}
.sociallogin img{
	width: 100%;
}

</style>



<section>
	<div class="loginbox">
        <h2>로그인</h2>
        <form action="/login" method="POST">
            
                  
                <legend>로그인 구역</legend>
                <label for="id">아이디 : </label>
                <input type="text" id="id" name="username"><br>
                <label for="mpw">비밀번호 : </label>
                <input type="password" id="mpw" name="password"><br>
                <ul>
                    <li><a href="">아이디/비밀번호찾기</a></li>
                    <li><a href="/join">회원가입</a></li>
                </ul>
                <button type="submit">로그인</button>    
                <br>
                <div class="sociallogin">
                	<a href="/oauth2/authorization/google"><img src="/assets/img/loginbutton/googlelogin.png"></a> <br>
                </div>
                <div class="sociallogin">
                	<a href="/oauth2/authorization/facebook"><img src="/assets/img/loginbutton/facebooklogin.png"></a> <br>
                </div>
                <div class="sociallogin">
                	<a href="/oauth2/authorization/naver"><img src="/assets/img/loginbutton/naverlogin.png"></a> <br>
                </div>
                <div class="sociallogin">
                	<a href="/oauth2/authorization/kakao"><img src="/assets/img/loginbutton/kakaologin.png"></a> <br>
                </div>	
                	
                	
               
        </form>	
        <br>
        
        
        
    </div>
	
			
		
		
		
</section>

<%@include file ="../include/footer.jsp" %>
			


<script>
	
</script>