<%--
  Created by IntelliJ IDEA.
  User: 11214
  Date: 2018/10/26
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SCUMarket</title>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    %>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<%=basePath%>/css/regist.css" type="text/css">
    <script type="text/javascript" src="<%=basePath%>/js/vue.js"></script>
    <script type="text/javascript" src="<%=basePath%>/js/vue-resource.js"></script>
    <script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>

</head>
<body>

<img src="<%=basePath%>/images/regist_login/loginbg.jpg" style="z-index: -1; position: absolute; padding: 0px;
  width: 100%; height: 100%">

<div class="w3ls-banner">
    <div class="heading" style="margin-top: 10%; margin-left: 19%; text-align: left">
        <h1>四川大学二手交易平台</h1>
    </div>
    <div class="container" style="margin-left: 15%">
        <div class="heading" style="margin-bottom: 40px">
            <h2>登录</h2>
        </div>
        <div class="agile-form">
            <form id="form" @submit.prevent="login">
                <ul class="field-list">
                    <li class="name">
                        <label class="form-label"> 账号（手机号） <span class="form-required"> * </span></label>
                        <div class="form-input">
                            <input type="text" ref="username" placeholder="请输入您的帐号" required
                                   style="text-align: center">
                        </div>
                    </li>
                    <li>
                        <label class="form-label"> 密码 <span class="form-required"> * </span></label>
                        <div class="form-input">
                            <input type="text" ref="password" placeholder="请输入您的密码" required
                                   style="text-align: center">
                        </div>
                    </li>
                </ul>
                <div class="submit_btn" id="submit_btn">
                    <input type="submit" value="登录">
                </div>
            </form>
        </div>
    </div>
    <br>
    <a href="register.jsp" style="margin-left: 33%; margin-top: 10px">没有帐号？快速注册</a>
</div>
</body>
<script>
    var vm = new Vue({
        el: "#form",
        methods: {
            login: function () {
                var formData = new FormData();
                formData.append("username", this.$refs.username.value);
                formData.append("password", this.$refs.password.value);
                this.$http.post("Validation/login",
                    formData,
                    {
                        emulateJSON: true,
                        headers: {'Content-Type': 'multipart/form-data'}
                    }).then(function (value) {
                    var status = value.body.status;
                    if (status == 404) {
                        alert("您输入的帐号不存在");
                        this.$refs.username.value = null;
                        this.$refs.password.value = null;
                    }
                    else if (status == 401) {
                        alert("您输入的密码错误");
                        this.$refs.password.value = null;
                    }
                    else {
                        window.sessionStorage.setItem("username",this.$refs.username.value);
                        window.location.href = "index.jsp";
                    }
                })
            }
        }
    })
</script>
</html>
