<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/xiaomimall/layui/css/layui.css"/>
    <script type="text/javascript" src="/xiaomimall/layui/layui.js"></script>
    <script type="text/javascript" src="/xiaomimall/js/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="/xiaomimall/css/header.css"/>
    <link rel="stylesheet" href="/xiaomimall/css/login-reg.css"/>
    <link rel="stylesheet" href="/xiaomimall/css/yzmStyle.css"/>
    <script type="text/javascript" src="js/yzm.js"></script>
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

    <style>
        .login-reg-header {

        }
    </style>
</head>
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

        <img src="img/bg.png" width="100%"/>
        <div class="my-login-inp">
            <span>会员登陆</span>
            <form action="/xiaomimall/LoginAction" onsubmit="return loginYz()" method="post">
                <p>
                    <input class="login-inp" type="text" name="username" placeholder="输入用户名/邮箱"/>
                </p>
                <p>
                    <input class="login-inp" type="password" name="password" placeholder="输入密码"/>
                </p>
                <font id="yz-font">验证：</font>
                <div id="hkdiv" style="top: 200px;right: 50px;">
                    <font>按住滑块，拖到最右侧</font>
                    <div id="green"></div>
                    <div id="kuai">>></div>
                </div>
                <div style="color:red;">${message}</div>
                <p style="margin-top: 90px;margin-bottom: 5px;">
                    <input class="login-submit" type="submit" value="登录"/>
                </p>
            </form>
            <!--会员注册、忘记密码-->
            <div id="login-result"></div>
            <div class="my-reg">
                <a href="">忘记密码？</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="reg.html">去注册</a>
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