<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style type="text/css">

body>.grid {
   height: 100%;
}

.image {
   margin-top: -100px;
}

.signUp.column {
   max-width: 450px;
}
</style>
<script>
  $(document)
    .ready(function() {
      $('.ui.signup.form')
        .form({
          fields: {
            email: {
              identifier  : 'email',
              rules: [
                {
                  type   : 'empty',
                  prompt : '이메일을 입력해 주세요!'
                },
                {
                  type   : 'email',
                  prompt : '이메일 형식에 맞게 입력하여 주세요'
                }
              ]
            },
            password: {
              identifier  : 'password',
              rules: [
                {
                  type   : 'empty',
                  prompt : '비밀번호를 입력해 주세요!'
                },
                {
                  type   : 'length[8]',
                  prompt : '비밀번호는 최소 8자리여야 합니다'
                }
               ]
           },
           password_check: {
              identifier : 'sign_up_password_check',
               rules: [
                {
                  type : 'match[pwd]',
                  prompt : '비밀번호가 일치하지 않습니다'
                }
              ]
           },
           userid: {
        	   identifier : 'userid',
        	   rules: [
        	    {
        	      type : 'empty',
        	      prompt : '닉네임을 설정해 주세요'
        	    },
        	    {
        	      type : 'minLength[2]',
        	      prompt : '닉네임은 최소 2글자 입니다'
        	    },
        	    {
        	      type : 'maxLength[15]',
        	      prompt : '닉네임은 최대 15글자 입니다'
        	    }
        	  ]
           }
          } 
        }) 
       ; 
     }) 
    ;
  </script>

   <div class="signUp column">
      <h2 class="ui teal image header">
         <img src="https://semantic-ui.com/examples/assets/images/logo.png"
            class="image">
         <div class="content">Sign-up your account</div>
      </h2>
      <form class="ui large signup form" action="${path}/member/insert.do" method="post">
         <div class="ui stacked segment">
            <div class="field">
               <div class="ui left icon input">
                  <i class="mail icon"></i> <input type="text" name="email" id="semail"
                     placeholder="이메일">
               </div>
            </div>
            <div class="field">
               <div class="ui signup left icon input">
                  <i class="lock icon"></i> <input type="password" name="password" id="pwd"
                     placeholder="비밀번호">
               </div>
            </div>
            <div class="field">
               <div class="ui left icon input">
                  <i class="lock icon"></i> <input type="password" name="sign_up_password_check" id="pwdchk"
                     placeholder="비밀번호 재확인">
               </div>
            </div>
            <div class="field">
               <div class="ui left icon input">
                  <i class="user icon"></i> <input type="text" name="userid" id="userid"
                     placeholder="닉네임">
               </div>
            </div>
            <div class="ui fluid large teal submit button"><i class="checkmark icon"></i>가입</div>
         </div>
         <div><p>가입을 클릭하시면 <a href ="#">서비스 약관</a>과 <a href="#">개인정보 취급방침</a>을 읽고 동의하신 것으로 간주됩니다.</p></div>
         <div class="ui error message"></div>
      </form>
   </div>