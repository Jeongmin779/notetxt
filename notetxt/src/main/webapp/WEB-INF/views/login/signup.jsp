<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css">
    <link href="css/css.css" rel="stylesheet">
    <link href="css/loginpage.css" rel="stylesheet">
    <title>Share_Memories</title>
</head>
<body>
<div class="login-container">
    <div class="login-text">
        <div class="mb-3 row">
            <h1 class="col-sm-12">회원가입</h1>
        </div>
        <form action="../action/signup.jsp" onsubmit="return jbSubmit()" id="fr">
            <div class="mb-3 row">
                <label for="id" class="col-sm-3 col-form-label">ID</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="id" autofocus="" required="" minlength="2" name="id" placeholder="아이디 입력">
                </div>
            </div>
            <div class="mb-1 row">
                <label for="password" class="col-sm-3 col-form-label">비밀번호</label>
                <div class="col-sm-6">
                    <input type="password" class="form-control" id="password" placeholder="비밀번호 입력" minlength="8" maxlength="20" required name="pwd"/>
                </div>
                <div class="col-sm-3 col-flex">
					    <span id="passwordHelpInline" class="form-text" >
					      <p>8자리 이상 <br/>20자리 이하<p>
					    </span>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="password2" class="col-sm-3 col-form-label">비밀번호 확인</label>
                <div class="col-sm-6">
                    <input type="password" class="form-control" id="password2" placeholder="비밀번호 재입력" minlength="8" maxlength="20" required/>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="name" class="col-sm-3 col-form-label">이름</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="name" placeholder="이름 입력" minlength="2" required name="name"/>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="nickname" class="col-sm-3 col-form-label">닉네임</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="nickname" placeholder="닉네임 입력" minlength="2" required name="nickname"/>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="phone" class="col-sm-3 col-form-label">전화번호</label>
                <div class="col-sm-6">
                    <input type="tel" class="form-control" id="phone" placeholder="전화번호 입력" minlength="2" required name="phone"/>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="email" class="col-sm-3 col-form-label">이메일</label>
                <div class="col-sm-6">
                    <input type="email" class="form-control" id="email" placeholder="이메일 입력" required name="email"/>
                </div>
            </div>
            <div class="mb-3 row">
                <label for="address" class="col-sm-3 col-form-label">주소</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="address" placeholder="주소 입력" required name="address"/>
                </div>
            </div>
            <div class="col-12">
                <button type="submit" class="btn btn-primary col-sm-5">회원가입</button>
                <button type="button" class="btn btn-secondary col-sm-5" onclick="location.href='loginpage'">로그인</button>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    function jbSubmit() {
        var password = document.getElementById( 'password' ).value;
        var password2 = document.getElementById( 'password2' ).value;
        var id = document.getElementById( 'id' ).value;
        var email = document.getElementById( 'email' ).value;
        console.log(id);
        var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
        var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        if(check.test(id)){
            alert("아이디는 한글이 포합될 수 없습니다.");
            return false;
        }
        if(regExp.test(email)){
            alert("이메일 형식이 잘못되었습니다.");
        }
        if(password == password2){
            return true;
        }else{
            alert("비밀번호가 일치하지 않습니다.");
            return false;
        }

    }
</script>
</body>
</html>