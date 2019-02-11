<%--
  Created by IntelliJ IDEA.
  User: 11214
  Date: 2018/11/16
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品上传</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Great Taste Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="css/upload/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/upload/style.css" rel="stylesheet" type="text/css" media="all"/>

</head>
<body>

<!-- banner-body -->

<div class="banner-body">
    <div class="shangchuan">
        <div class="banner-body-content">
            <div class="juzhong">
                <div class="col-xs-9 banner-body-right">
                    <div class="pict">

                    </div>

                    <div class="banner-bottom">

                        <div class="col-md-4 banner-left">
                            <div class="col-xs-9 banner-right1">
                                <h3>商品名称</h3>
                            </div>
                            <div class="clearfix"></div>
                            <form method="post" action="http://uploadUrl" enctype="multipart/form-data">
                                <input type="text" style="height:20px;width:175px;"/>
                            </form>
                        </div>

                        <div class="col-md-4 banner-left">
                            <div class="col-xs-9 banner-right1">
                                <h3>商品价格</h3>
                            </div>
                            <div class="clearfix"></div>
                            <form method="post" action="http://uploadUrl" enctype="multipart/form-data">
                                <input type="text" style="height:20px;width:175px;"/>
                            </form>
                        </div>

                        <div class="col-md-4 banner-left">
                            <div class="col-xs-9 banner-right1">
                                <h3>所在校区</h3>
                            </div>
                            <div class="clearfix"></div>
                            <form method="post" action="http://uploadUrl" enctype="multipart/form-data">
                                <input type="text" style="height:20px;width:175px;"/>
                            </form>
                        </div>

                        <div class="clearfix"></div>
                    </div>
                </div>


                <div class="col-xs-9 banner-body-right">
                    <div class="msg-text">
                        <div class="col-xs-2 msg-text-left">
                            <div class="col-xs-9 banner-right1">
                                <h3>商品信息</h3>
                            </div>
                        </div>
                        <div class="col-xs-10 msg-text-right">
                            <form method="post" action="http://uploadUrl" enctype="multipart/form-data">
                                <textarea style="width:500px;height:140px;"></textarea>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="msg-text-bottom">
                        <div class="col-md-4 msg-text-bottom-left">
                            <div class="col-xs-9 banner-right1">
                                <h3>电话号码</h3>
                            </div>
                            <div class="clearfix"></div>
                            <form method="post" action="http://uploadUrl" enctype="multipart/form-data">
                                <input type="text" style="height:20px;width:175px;"/>
                            </form>
                        </div>

                        <div class="col-md-4 msg-text-bottom-left">
                            <div class="col-xs-9 banner-right1">
                                <h3>QQ号码</h3>
                            </div>
                            <div class="clearfix"></div>
                            <form method="post" action="http://uploadUrl" enctype="multipart/form-data">
                                <input type="text" style="height:20px;width:175px;"/>
                            </form>
                        </div>

                        <div class="col-md-4 msg-text-bottom-left">
                            <div class="col-xs-9 banner-right1">
                                <h3>微信号码</h3>
                            </div>
                            <div class="clearfix"></div>
                            <form method="post" action="http://uploadUrl" enctype="multipart/form-data">
                                <input type="text" style="height:20px;width:175px;"/>
                            </form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="upload">
                <form method="post" action="" enctype="multipart/form-data">
                    <input type="submit" value="提交"/>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
