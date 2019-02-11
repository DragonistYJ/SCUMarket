<%--
  Created by IntelliJ IDEA.
  User: 11214
  Date: 2018/11/16
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width,initial-scale=1" name="viewport">
    <link rel="stylesheet" type="text/css" href="css/mine/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/mine/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/mine/style.css">
    <link rel="stylesheet" type="text/css" href="css/mine/simpletextrotator.css">
    <script src="js/vue.js"></script>
    <script src="js/jquery.js"></script>
</head>
<body>


<div class="loading-screen"></div>

<div id="frontpage">
    <div class="shadow-img"></div>
    <img src="images/mine/bg.jpg" class="front-img img-responsive">
    <h1>个人中心</h1>
</div>

<div class="container" id="mine">
    <div id="content" class="row hidden">
        <div class="col-sm-4">
            <div id="namecard" class="namecard" style="height: 200px">
                <div class="shadow-img"></div>
                <h1 class="maintitle">{{nickName}}</h1>
                <h3 class="invert sub-maintitle">
                    <span class="rotate">{{nickName}}</span>
                </h3>
                <img id="profile-img" class="profile-img transparent" v-bind:src="portrait" alt="profile-image">
            </div>
            <div id="menu-container" style="height: 200px">
                <ul class="nav-menu no-padding">
                    <li class="nav-btn" id="resume-btn" title="Resume" data-page="resume">
                        <div class="hover-background"></div>
                        <span>个人信息</span><i class="fa fa-file-text fa-fw"></i>
                    </li>
                    <li class="nav-btn folio-btn" data-filter="*" title="Portfolio" data-page="portfolio"
                        @click="getCommodity">
                        <div class="hover-background"></div>
                        <span>上传的商品</span><i class="fa fa-suitcase fa-fw"></i>
                    </li>
                </ul>
            </div>
        </div>
        <div class="col-sm-8 page-segment">
            <ul class="page-container no-padding">
                <li id="resume" class="selected">
                    <div class="title-container">
                        <div class="shadow-img"></div>
                        <h2 class="rotate-out rotated"><span class="invert">{{nickName}}</span> 个人信息</h2>
                    </div>
                    <div class="description">
                        <div class='tabs tabs_animate'>
                            <ul class='horizontal no-padding'>
                            </ul>
                            <div id='tab-2'>
                                <h3 class="title"></h3>
                                <ul class="education-class">
                                    <li>
                                        <h4 class="title">昵称<i class="fa fa-sort-desc pull-right"></i></h4>
                                        <div class="list-content">
                                            <h5 class="title">{{nickName}}</h5>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="title">校区<i class="fa fa-sort-desc pull-right"></i></h4>
                                        <div class="list-content current">
                                            <h5 class="title">{{campus}}</h5>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="title">QQ<i class="fa fa-sort-desc pull-right"></i></h4>
                                        <div class="list-content">
                                            <h5 class="title">{{qq}}</h5>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="title">微信<i class="fa fa-sort-desc pull-right"></i></h4>
                                        <div class="list-content">
                                            <h5 class="title">{{weChat}}</h5>
                                        </div>
                                    </li>
                                    <li>
                                        <h4 class="title">手机号<i class="fa fa-sort-desc pull-right"></i></h4>
                                        <div class="list-content">
                                            <h5 class="title">{{username}}</h5>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </li>
                <li id="portfolio" class="hidden">
                    <div class="title-container">
                        <div class="shadow-img"></div>
                        <h2 class="rotate-out rotated">{{nickName}}上传的商品</h2>
                    </div>
                    <div class="sec-porfolio description">
                        <div class="row">
                            <div class="folio-container">
                                <ul class="folio-item" id="goods">
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li id="contact" class="hidden">
                </li>
            </ul>
        </div>
    </div>
</div>
<script>
    var mine = new Vue({
        el: "#mine",
        data: {
            username: "",
            password: '',
            nickName: '',
            campus: '',
            major: '',
            qq: '',
            weChat: '',
            id: '',
            portrait: "",
            ids: [],
            names: [],
            imgs: [],
        },
        methods: {
            getCommodity: function () {
                var data = new FormData();
                data.append("nickName", mine.nickName);
                $.ajax({
                    url: "CommodityOP/getGoods",
                    type: "post",
                    async: true,
                    data: data,
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    success: function (data, textStatus) {
                        $.each(data, function (index, obj) {
                            mine.ids.push(obj["id"]);
                            mine.names.push(obj["name"]);
                            mine.imgs.push("commodity/img" + obj["id"] + ".jpg");
                        })

                        $("#goods").empty();
                        for (var i=0; i<mine.ids.length; i++) mine.addGood(i);
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert(textStatus);
                    }
                });
            },
            addGood:function (x) {
                var li = document.createElement("li");
                li.setAttribute("class","view view-first photography");
                var img = document.createElement("img");
                img.setAttribute("src",mine.imgs[x]);
                var div = document.createElement("div");
                div.setAttribute("class","mask");
                var h2 = document.createElement("h2");
                h2.append(mine.names[x]);
                var h2_2 = document.createElement("h2");
                h2_2.append("删除");
                var a = document.createElement("a");
                a.append("了解更多");
                a.setAttribute("href","detail.jsp?id="+mine.ids[x]);

                div.append(h2);
                div.append(a);
                div.append(h2_2);
                li.append(img);
                li.append(div);

                $("#goods").append(li);
            }
        },
        mounted: function () {
            var data = new FormData();
            data.append("username", "<%=request.getParameter("username")%>");
            $.ajax({
                url: "Validation/getUserInfo",
                type: "post",
                async: true,
                data: data,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus) {
                    mine.username = data.username;
                    mine.password = data.password;
                    mine.nickName = data.nickName;
                    mine.campus = data.campus;
                    mine.major = data.major;
                    mine.qq = data.qq;
                    mine.weChat = data.weChat;
                    mine.id = data.id;
                    mine.portrait = "user/" + data.username + ".jpg";
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        }
    })
</script>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">二级界面商品名称</h4>
            </div>
            <div class="modal-body">
                <img src="images/folio/logs.jpg" class="img-responsive" alt="modal-image"><!--商品图片地址-->
            </div>
            <div class="modal-footer">
                <div class="mf-content">
                    <p>商品简介</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">二级界面商品名称</h4>
            </div>
            <div class="modal-body">
                <img src="images/folio/book.jpg" class="img-responsive" alt="modal-image"><!--商品图片地址-->
            </div>
            <div class="modal-footer">
                <div class="mf-content">
                    <p>商品简介</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel3">二级界面商品名称</h4>
            </div>
            <div class="modal-body">
                <img src="images/folio/guy.jpg" class="img-responsive" alt="modal-image"><!--商品图片地址-->
            </div>
            <div class="modal-footer">
                <div class="mf-content">
                    <p>商品简介</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel4" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel4">二级界面商品名称</h4>
            </div>
            <div class="modal-body">
                <img src="images/folio/illustration.jpg" class="img-responsive" alt="modal-image"><!--商品图片地址-->
            </div>
            <div class="modal-footer">
                <div class="mf-content">
                    <p>商品简介</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel5" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel5">二级界面商品名称</h4>
            </div>
            <div class="modal-body">
                <img src="images/folio/beach.jpg" class="img-responsive" alt="modal-image"><!--商品图片地址-->
            </div>
            <div class="modal-footer">
                <div class="mf-content">
                    <p>商品简介</p>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/jQueryTween-aio-min.js"></script>
<script type="text/javascript" src="js/jquery.tabslet.min.js"></script>
<script type="text/javascript" src="js/progressbar.min.js"></script>
<script type="text/javascript" src="js/jquery.simple-text-rotator.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyBPNkCVoBW_Jzl6x-hgGU6e7QW1QMwKles"></script>
<script type="text/javascript" src="js/custom.js"></script>
</body>
</html>
