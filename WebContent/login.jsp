<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>二手车后台管理系统-登录页面</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="js/jquery.js"></script>
<script src="js/verificationNumbers.js"></script>
<script src="js/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();
  //测试提交，对接程序删除即可
  $(".submit_btn").click(function(){
	  location.href="index.html";
	  });
});
</script>
</head>
<body>
 <form method="post" action="AdminServlet">
<dl class="admin_login">
 <dt>
  <strong>二手车后台管理系统-登录页面</strong>
  <em>Management System</em>
 </dt>

 <dd class="user_icon">
  <input type="text"  name="username"  placeholder="账号" class="login_txtbx"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password"   name="password"  placeholder="密码" class="login_txtbx"/>
 </dd>
 <dd class="val_icon">
  <input type="submit" value="立即登陆" class="submit_btn"/>
 </dd>
 <dd>
  <p>© 2015-2016 DeathGhost 版权所有</p>
  <p>陕B2-20080224-1</p>
 </dd>
</dl>
 </form>
</body>
</html>
