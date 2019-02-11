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
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/regist.css" type="text/css">
    <script type="text/javascript" src="js/vue.js"></script>
    <script type="text/javascript" src="js/vue-resource.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>

</head>
<body>

<img src="images/regist_login/registerbg.jpg" style="z-index: -1; position: absolute; padding: 0px;
  width: 100%; height: 100%">

<div class="w3ls-banner">
    <div class="heading">
        <h1>四川大学二手交易平台</h1>
    </div>
    <div class="container">
        <div class="heading" style="margin-bottom: 40px">
            <h2>注册用户</h2>
            <p>该账号信息仅用于交易双方的联系</p>
        </div>
        <div class="agile-form">
            <form id="form" method="post" action="SCUMarket/Validation/register" enctype="multipart/form-data">
                <ul class="field-list">
                    <li class="name">
                        <label class="form-label"> 手机号 <span class="form-required"> * </span></label>
                        <div class="form-input">
                            <input type="text" name="username" placeholder="请输入您的手机号" required
                                   style="text-align: center">
                        </div>
                    </li>
                    <li>
                        <label class="form-label"> 密码 <span class="form-required"> * </span></label>
                        <div class="form-input">
                            <input type="text" name="password" placeholder="请输入您的密码" required
                                   style="text-align: center">
                        </div>
                    </li>
                    <li>
                        <label class="form-label"> 昵称 <span class="form-required"> * </span></label>
                        <div class="form-input">
                            <input type="text" name="nickName" placeholder="请取一个合适的昵称" required
                                   style="text-align: center">
                        </div>
                    </li>
                    <li>
                        <label class="form-label"> 校区 <span class="form-required"> * </span></label>
                        <div class="form-input">
                            <select class="form-dropdown" name="campus" required>
                                <option value="江安校区">江安校区</option>
                                <option value="望江校区">望江校区</option>
                                <option value="华西校区">华西校区</option>
                            </select>
                        </div>
                    </li>
                    <li>
                        <label class="form-label"> 专业 <span class="form-required"> * </span></label>
                        <div class="form-input">
                            <input type="text" name="major" placeholder="请填写您的专业" required style="text-align: center">
                        </div>
                    </li>
                    <li>
                        <label class="form-label"> QQ </label>
                        <div class="form-input">
                            <input type="text" name="qq" placeholder="请填写您的QQ号，方便联系"
                                   style="text-align: center">
                        </div>
                    </li>
                    <li>
                        <label class="form-label"> 微信 </label>
                        <div class="form-input">
                            <input type="text" name="weChat" placeholder="请填写您的微信号，方便联系"
                                   style="text-align: center">
                        </div>
                    </li>
                    <li>
                        <label class="form-label"> 头像 <span class="form-required"> * </span></label>
                        <div class="form-input">
                            <input type="file" accept="image/*" id="file" name="file" onchange="addImage()" required>
                        </div>
                    </li>
                    <li>
                        <label class="form-label"></label>
                        <div class="form-input">
                            <img src="images/regist_login/default.jpg" id="image" style="width: auto; height: 10%">
                        </div>
                    </li>
                </ul>
                <div class="submit_btn" id="submit_btn">
                    <input type="submit" value="注册">
                </div>
            </form>
        </div>
    </div>
</div>
</body>

<script>
    function addImage() {
        var docObj = document.getElementById("file");//file文本框id
        console.log(window.URL.createObjectURL(docObj.files[0]));
        var imgObjPreview = document.getElementById("image");//预显示的图片
        imgObjPreview.src = window.URL.createObjectURL(docObj.files[0]);
    }
</script>
</html>
