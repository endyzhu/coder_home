<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<jsp:include page="top.jsp"></jsp:include>

<!-- Custom styles for this template -->
<link href="static/css/signin.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">

      <form class="form-signin" role="form" action="" method="POST">
        <h2 class="form-signin-heading">请登录</h2>
        <input class="form-control" placeholder="用户名/手机号/邮箱" maxlength="32" id="loginname" required autofocus>
        <input type="password" class="form-control" placeholder="密码" maxlength="32" id="password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" id="remember-me" value="1"> 记住密码
          </label>
        </div>
        <a class="btn btn-lg btn-primary btn-block" id="login-btn">登　　录</a>
      </form>

    </div> <!-- /container -->
<script>
	if (window != top) {
		top.location.href = location.href; 
	}
	$(function () {
		$("#login-btn").click(function(){
			login();
		});
		var loginname = $.cookie('loginname');
		var password = $.cookie('password');
		if(typeof(loginname) != "undefined" && typeof(password) != "undefined"){
			$("#loginname").val(loginname);
			$("#password").val(password);
			$("#remember-me").attr("checked",true);
		}
	})
	function login(){
		if(check()){
			$.ajax({
				type : "POST",
				dataType : "json",
				async: false,
				data : {
					"logindata" : $("#loginname").val()+"_||_"+$("#password").val()
				},
				url : 'login',
				success : function(data) {
					if(data.msg=='success'){
						window.location="manager/dashboard";
					}else if(data.msg=='fail'){
						alert('用户名或密码错误！');
					}else{
						alert('登陆失败！');
					}
				}
			});
		}
	}
	function check(){
		var l = $.trim($("#loginname").val());
		var p = $.trim($("#password").val());
		if(l != '' && p != ''){
			rememberMe();
			return true;
		}else{
			alert('请输入用户名/密码！');
			return false;
		}
	}
	function rememberMe(){
		//alert($("#remember-me").attr("checked"));//值是undefined，需调整
		if($("#remember-me").attr("checked")){
			$.cookie('loginname', $("#loginname").val(), { expires: 7 });
			$.cookie('password', $("#password").val(), { expires: 7 });
		}else{
			$.cookie('loginname', '', { expires: -1 });
			$.cookie('password', '', { expires: -1 });
		}
	}
</script>
<script src="static/js/jquery.cookie.js"></script>
<jsp:include page="footer.jsp"></jsp:include>
