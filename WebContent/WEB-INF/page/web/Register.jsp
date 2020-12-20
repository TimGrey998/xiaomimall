<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="layui/css/layui.css"/>
    <script type="text/javascript" src="/xiaomimall/layui/layui.js"></script>
    <script type="text/javascript" src="/xiaomimall/js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="/xiaomimall/css/header.css"/>
    <link rel="stylesheet" href="/xiaomimall/css/login-reg.css"/>
    <link rel="stylesheet" href="/xiaomimall/css/yzmStyle.css"/>
    <script type="text/javascript" src="/xiaomimall/js/yzm.js"></script>
    <script>
        $(".back-index").click(function () {

            window.location.href = 'index.html';
        });

        //登录验证
        function loginYz() {
            if (!hkrel) {
                $("#login-result").text("验证无效，重新滑动验证！").show()
                return false;
            }
        }
    </script>
<body>


<div class="layui-container">
	<div class="layui-row layui-col-space15">
		<!--显示logo-->
		<div class="layui-col-md2" style="cursor:pointer;z-index:99;" onclick="javascript:window.location.href='index.html'">
			<div class="my-logo">
				<span><img src="images/xiaomi_logo.jpg"></span>
			</div>
			<div class="my-logo-font">
				小米商城
			</div>
		</div>
		<!--显示logo end-->
	</div>
</div>

<div class="my-body">
    <!--登录-->
    <div class="my-logindiv">

        <img src="img/bg2.jpg" width="100%"/>
        <div class="my-login-inp">
            <span>会员注册</span>
            <form action="/xiaomimall/RegisterAction"  method="post">
                <p>
                    <input class="login-inp" type="text" name="username" placeholder="输入用户名"/>
                </p>
                <p>
                    <input class="login-inp" type="password" name="password" placeholder="输入密码"/>
                </p>
                <p>
                    <input class="login-inp" type="text" name="randomCode" placeholder="输入验证码"/>
                </p>
                <p>
                    <img src="images/radomcode.jpg"/>
                </p>
                <p style="margin-top: 10px;margin-bottom: 5px;">
                    <input class="login-submit" type="submit" value="注册" style="background-color: #FF5722;"/>
                </p>
            </form>
            <!--会员注册、忘记密码-->
            <div id="login-result"></div>
            <div class="my-reg" style="width: 210px;">
                <a href="login.html">已有账号，现在去登录</a>
            </div>
        </div>
    </div>
    <!--登录end-->

    <!--引入底部-->
    <div class="my-footer">
        <iframe src="/xiaomimall/footer.jsp" style="border: 0px;width: 100%;height: 291px;"></iframe>
    </div>
    <!--引入底部end-->
</div>
</body>
</html>