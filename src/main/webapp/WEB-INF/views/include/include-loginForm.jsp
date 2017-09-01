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

.login.column {
   max-width: 450px;
}
</style>
<script>
  $(document)
    .ready(function() {
      $('.ui.login.form')
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
            }
          } 
        }) 
       ;
     }) 
   ;
  </script>


   <div class="login column">
      <h2 class="ui teal image header">
         <img src="https://semantic-ui.com/examples/assets/images/logo.png"
            class="image">
         <div class="content">Log-in to your account</div>
      </h2>
      <form class="ui large login form" action="/web/member/loginCheck_test.do" method="post" name="login">
         <div class="ui stacked segment">
            <div class="field">
               <div class="ui left icon input">
                  <i class="user icon"></i> <input type="text" name="email" id="email"
                     placeholder="이메일">
               </div>
            </div>
            <div class="field">
               <div class="ui login left icon input">
                  <i class="lock icon"></i> <input type="password" name="password" id="password"
                     placeholder="비밀번호">
               </div>
            </div>
            <div class="ui fluid large teal submit button">로그인</div>
         </div>

         <div class="ui error message"></div>

      </form>

      <div class="ui message">
         처음이신가요? <a href="javascript:signupForm()">가입</a>
      </div>
   </div>


<!-- DIMMER 처리된 회원가입 페이지  -->
<div class="ui container">
   <div class="ui basic signupForm modal" style="width:450px; text-align:center; margin-left:-250px;">
         <%@ include file="../include/include-signUpForm.jsp"%>
   </div>
</div>
<script>
function signupForm() {
   $('.ui.signupForm.modal')
   .modal({
        onHide : function(){
           document.getElementById("semail").value = "";
           document.getElementById("pwd").value = "";
           document.getElementById("pwdchk").value = "";
           document.getElementById("userid").value = "";
        }
     })
   .modal('show');
}
</script>