<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Hello Movie</title>    
<link rel="stylesheet" href="./css/login.css">

<script src="../lib/jquery-3.6.0.min.js"></script>
<meta name="description" content="Thoughts, reviews and ideas since 1999."/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<link rel="stylesheet" type="text/css" href="assets/css/screen.css"/>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:400,300italic,300,400italic,700,700italic|Playfair+Display:400,700,400italic,700italic"/>
</head>

<body class="home-template">
<div class="site-wrapper">
	<jsp:include page="../inc/top.jsp"/>

 <section class="login-form">
	 <div class="panel border bg-white">
        <h1>비밀번호 찾기</h1>
        <form action="./findPwAction.me"  method="post" name="fPw">
            <div class="int-area">
                <input type="text" name="Mem_name" id="Mem_name" autocomplete="off" required>
                <label for="mem_name"> 이름 </label> 
            </div>
            <div class="int-area">
                <input type="text" name="Mem_id" id="Mem_id" autocomplete="off" required>
                <label for="pw">아이디</label>
            </div>
            <div class="btn-area">
                <button id="btn" type="submit">비밀번호 찾기</button>
            </div>
        </form>
     </div>
 </section>  
 
</div>
<!-- <footer class="site-footer clearfix" style="position: absolute;">
	<a href="#top" id="back-to-top" class="back-top"></a>
	<div class="text-center">
		 	<a>안영화세요</a><br>
		 	<a href="./NoticeListAction.no"><span class="notice1">공지사항</span></a>
			 <a href="./QnaListAction.qa"><span class="notice1">고객센터</span></a><br>
			 Copyright &copy;<script>document.write(new Date().getFullYear());</script>
			All rights reserved
	</div>
	</footer> -->
<jsp:include page="../inc/footer.jsp"/>
</body>
</html>