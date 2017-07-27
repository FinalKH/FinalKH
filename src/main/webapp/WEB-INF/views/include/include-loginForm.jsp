<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style type="text/css">
body {
	background-color: #DADADA;
}

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
                  prompt : 'Please enter your e-mail'
                },
                {
                  type   : 'email',
                  prompt : 'Please enter a valid e-mail'
                }
              ]
            },
            password: {
              identifier  : 'password',
              rules: [
                {
                  type   : 'empty',
                  prompt : 'Please enter your password'
                },
                {
                  type   : 'length[8]',
                  prompt : 'Your password must be at least 8 characters'
                } 
              ] 
            }
          } 
        }) 
       ;
     }) 
   ;
  </script>

<div class="ui middle aligned center aligned grid">
	<div class="login column">
		<h2 class="ui teal image header">
			<img src="https://semantic-ui.com/examples/assets/images/logo.png"
				class="image">
			<div class="content">Log-in to your account</div>
		</h2>
		<form class="ui large login form" action="/web/member/loginCheck_test.do" method="post">
			<div class="ui stacked segment">
				<div class="field">
					<div class="ui left icon input">
						<i class="user icon"></i> <input type="text" name="email"
							placeholder="E-mail address">
					</div>
				</div>
				<div class="field">
					<div class="ui login left icon input">
						<i class="lock icon"></i> <input type="password" name="password"
							placeholder="Password">
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
</div>

<!-- DIMMER 처리된 회원가입 페이지  -->
<div class="ui container">
	<div class="ui basic signupForm modal">
		<i class="close icon"></i>
		<div class="content">
			<%@ include file="../include/include-signUpForm.jsp"%>
		</div>
	</div>
</div>
<script>
function signupForm() {
	$('.ui.signupForm.modal').modal('show');
}
</script>