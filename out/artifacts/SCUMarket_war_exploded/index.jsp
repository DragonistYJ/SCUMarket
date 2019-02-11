<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset=utf-8>
    <%
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
    %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SCUMarket</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css"/>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/pluton.css"/>
    <link rel="stylesheet" type="text/css" href="css/pluton-ie7.css"/>
    <link rel="stylesheet" type="text/css" href="css/jquery.cslider.css"/>
    <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css"/>
    <link rel="stylesheet" type="text/css" href="css/animate.css"/>
    <script type="text/javascript" src="js/vue.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
</head>

<body>
<div class="navbar">
    <div class="navbar-inner">
        <div class="container">
            <a href="#" class="brand">
                <img src="images/logo.png" width="120" height="40" alt="Logo"/>
            </a>
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <i class="icon-menu"></i>
            </button>
            <div class="nav-collapse collapse pull-right">
                <ul class="nav" id="top-navigation">
                    <li class="active"><a href="#home">主页</a></li>
                    <li><a href="#portfolio">商品展示</a></li>
                    <li><a href="commodity.jsp" target="_blank">逛商场</a></li>
                    <li><a href="#developer">团队</a></li>
                    <li><a href="#clients">客户</a></li>
                    <li><a href="#contact">联系我们</a></li>
                    <li><a v-bind:href="href">{{log}}</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<script>
    var v = new Vue({
        el: "#top-navigation",
        data: {
            log: "登录/注册",
            href: "login.jsp",
        }
    })

    window.onload = function () {
        var x = window.sessionStorage.getItem("username");
        if (x != null) {
            v.log = x;
            v.href = "mine.jsp?username=" + v.log;
        }
    }
</script>

<div id="home">
    <!-- 轮播台 -->
    <div id="da-slider" class="da-slider">
        <div class="triangle"></div>
        <div class="mask"></div>
        <div class="container">
            <div class="da-slide">
                <h2 class="fittext2">相当崭新的服饰</h2>
                <h4>！超乎你的想象！</h4>
                <p>品牌: Asus/华硕;内存容量: 8GBx2根;硬盘容量: 250GB;电源功率: 1000W;显存容量: 11GB;机箱结构: ATX
                    ;显卡系列: RTX 2080 Ti;散热方式: 水冷;硬盘类型: 固态硬盘(SSD);ddCPU型号: i9-7900X</p>
                <div class="da-img">
                    <img src="images/slider01.png" alt="image01" width="320">
                </div>
            </div>
            <div class="da-slide">
                <h2>《三体》全集</h2>
                <h4>贼好看</h4>
                <p>《三体》是刘慈欣创作的系列长篇科幻小说，由《三体》、《三体Ⅱ·黑暗森林》、《三体Ⅲ·死神永生》组成，
                    作品讲述了地球人类文明和三体文明的信息交流、生死搏杀及两个文明在宇宙中的兴衰历程。其第一部经过翻译后获得了第73届雨果奖最佳长篇小说奖。
                </p>
                <div class="da-img">
                    <img src="images/slider02.png" width="320" alt="image02">
                </div>
            </div>
            <div class="da-slide">
                <h2>三只松鼠蔓越莓曲奇饼干</h2>
                <h4>活动商品</h4>
                <p>本店活动，满2件9折；满4件8折。手工制作，用料上乘，包装精美。
                    作为一款常见的休闲零食，蔓越莓曲奇饼干不仅美味可口，而且富含令肌肤美丽健康的维生素C
                </p>
                <div class="da-img">
                    <img src="images/slider03.png" width="320" alt="image03">
                </div>
            </div>
            <div class="da-arrows">
                <span class="da-arrows-prev"></span>
                <span class="da-arrows-next"></span>
            </div>
        </div>
    </div>
</div>

<div class="section primary-section" id="service">
    <div class="container">
        <div class="title">
            <h1>SCUMarket</h1>
            <p>我们不生产商品，我们只是商品的搬运工</p>
        </div>
        <div class="row-fluid">
            <div class="span4">
                <div class="centered service">
                    <div class="circle-border zoom-in">
                        <img class="img-circle" src="images/service02.png" alt="service 1">
                    </div>
                    <h3>公开</h3>
                    <p>商品信息交易<br>结果完全公开透明</p>
                </div>
            </div>
            <div class="span4">
                <div class="centered service">
                    <div class="circle-border zoom-in">
                        <img class="img-circle" src="images/service01.png" alt="service 2"/>
                    </div>
                    <h3>实惠</h3>
                    <p>价格完全由买家和卖家线下决定<br>没有中间商赚差价</p>
                </div>
            </div>
            <div class="span4">
                <div class="centered service">
                    <div class="circle-border zoom-in">
                        <img class="img-circle" src="images/service03.png" alt="service 3">
                    </div>
                    <h3>安全</h3>
                    <p>用户的个人信息完全保密<br>交易不经过第三方<br>保证了商品的安全</p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section secondary-section " id="portfolio">
    <div class="triangle"></div>
    <div class="container">
        <div class=" title">
            <h1>商品展示</h1>
            <p>没有最美，只有更美</p>
        </div>
        <ul id="portfolio-grid" class="thumbnails row">
            <li class="span4 mix web">
                <div class="thumbnail" style="height: 320px" @click="detail(ids[0])">
                    <img v-bind:src="img[0]">
                    <a class="more show_hide" rel="#slidingDiv">
                        <i class="icon-plus"></i>
                    </a>
                    <h3>{{names[0]}}</h3>
                    <div class="mask"></div>
                </div>
            </li>
            <li class="span4 mix photo">
                <div class="thumbnail" style="height: 320px" @click="detail(ids[1])">
                    <img v-bind:src="img[1]">
                    <a class="show_hide more" rel="#slidingDiv1">
                        <i class="icon-plus"></i>
                    </a>
                    <h3>{{names[1]}}</h3>
                    <div class="mask"></div>
                </div>
            </li>
            <li class="span4 mix identity">
                <div class="thumbnail" style="height: 320px" @click="detail(ids[2])">
                    <img v-bind:src="img[2]">
                    <a class="more show_hide" rel="#slidingDiv2">
                        <i class="icon-plus"></i>
                    </a>
                    <h3>{{names[2]}}</h3>
                    <div class="mask"></div>
                </div>
            </li>
            <li class="span4 mix web">
                <div class="thumbnail" style="height: 320px" @click="detail(ids[3])">
                    <img v-bind:src="img[3]">
                    <a class="show_hide more" rel="#slidingDiv3">
                        <i class="icon-plus"></i>
                    </a>
                    <h3>{{names[3]}}</h3>
                    <div class="mask"></div>
                </div>
            </li>
            <li class="span4 mix photo">
                <div class="thumbnail" style="height: 320px" @click="detail(ids[4])">
                    <img v-bind:src="img[4]">
                    <a class="show_hide more" rel="#slidingDiv4">
                        <i class="icon-plus"></i>
                    </a>
                    <h3>{{names[4]}}</h3>
                    <div class="mask"></div>
                </div>
            </li>
            <li class="span4 mix identity">
                <div class="thumbnail" style="height: 320px" @click="detail(ids[5])">
                    <img v-bind:src="img[5]">
                    <a class="show_hide more" rel="#slidingDiv5">
                        <i class="icon-plus"></i>
                    </a>
                    <h3>{{names[5]}}</h3>
                    <div class="mask"></div>
                </div>
            </li>
            <li class="span4 mix web">
                <div class="thumbnail" style="height: 320px" @click="detail(ids[6])">
                    <img v-bind:src="img[6]"/>
                    <a class="show_hide more" rel="#slidingDiv6">
                        <i class="icon-plus"></i>
                    </a>
                    <h3>{{names[6]}}</h3>
                    <div class="mask"></div>
                </div>
            </li>
            <li class="span4 mix photo">
                <div class="thumbnail" style="height: 320px" @click="detail(ids[7])">
                    <img v-bind:src="img[7]">
                    <a class="show_hide more" rel="#slidingDiv7">
                        <i class="icon-plus"></i>
                    </a>
                    <h3>{{names[7]}}</h3>
                    <div class="mask"></div>
                </div>
            </li>
            <li class="span4 mix identity">
                <div class="thumbnail" style="height: 320px" @click="detail(ids[8])">
                    <img v-bind:src="img[8]">
                    <a class="show_hide more" rel="#slidingDiv8">
                        <i class="icon-plus"></i>
                    </a>
                    <h3>{{names[8]}}</h3>
                    <div class="mask"></div>
                </div>
            </li>
        </ul>
    </div>
</div>
</div>
<script>
    var goods = new Vue({
        el: "#portfolio-grid",
        data: {
            names: [],
            ids: [],
            img: [],
        },
        methods: {
            detail: function (x) {
                window.open("/SCUMarket/detail.jsp?id" + "=" + x);
            }
        },
        mounted: function () {
            $.ajax({
                url: "CommodityOP/recommendGoods",
                type: "get",
                async: true,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus) {
                    $.each(data, function (index, obj) {
                        goods.names.push(obj["name"]);
                        goods.ids.push(obj["id"]);
                        goods.img.push("commodity/img" + obj["id"] + ".jpg");
                    })
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        }
    })
</script>

<!-- 团队介绍 -->
<div class="section primary-section" id="developer">
    <div class="container">
        <div class="title">
            <h1>团队</h1>
            <p></p>
        </div>
        <div class="row-fluid team">
            <div class="span4" id="first-person">
                <div class="thumbnail" style="height: 450px">
                    <img src="images/ygy.jpg" alt="team 1">
                    <h3>于广宇</h3>
                    <div class="mask">
                        <h3>队长</h3>
                        <p>软件学院</p>
                    </div>
                </div>
            </div>
            <div class="span4" id="second-person">
                <div class="thumbnail" style="height: 450px">
                    <img src="images/lxw.jpg" alt="team 1">
                    <h3>李夏薇</h3>
                    <div class="mask">
                        <h2>设计</h2>
                        <p>软件学院</p>
                    </div>
                </div>
            </div>
            <div class="span4" id="third-person">
                <div class="thumbnail" style="height: 450px">
                    <img src="images/slt.jpg" alt="team 1">
                    <h3>宋俐潼</h3>
                    <div class="mask">
                        <h2>美工</h2>
                        <p>软件学院</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="section secondary-section">
    <div class="triangle"></div>
    <div class="container centered">
        <p class="large-text">如果您已经迫不及待地想买买买了，那就开始吧</p>
        <a href="#" class="button">随便逛逛</a>
    </div>
</div>
<!-- Client section start -->
<!-- Client section start -->
<div id="clients">
    <div class="section primary-section">
        <div class="triangle"></div>
        <div class="container">
            <div class="title">
                <h1>客户说</h1>
            </div>
            <div class="row">
                <div class="span4">
                    <div class="testimonial">
                        <p>{{comments[0]}}</p>
                        <div class="whopic">
                            <div class="arrow"></div>
                            <img v-bind:src="portraits[0]" class="centered" alt="client 1">
                            <strong>{{names[0]}}</strong>
                        </div>
                    </div>
                </div>
                <div class="span4">
                    <div class="testimonial">
                        <p>{{comments[1]}}</p>
                        <div class="whopic">
                            <div class="arrow"></div>
                            <img v-bind:src="portraits[1]" class="centered" alt="client 2">
                            <strong>{{names[1]}}</strong>
                        </div>
                    </div>
                </div>
                <div class="span4">
                    <div class="testimonial">
                        <p>{{comments[2]}}</p>
                        <div class="whopic">
                            <div class="arrow"></div>
                            <img v-bind:src="portraits[2]" class="centered" alt="client 3">
                            <strong>{{names[2]}}</strong>
                        </div>
                    </div>
                </div>
            </div>
            <p class="testimonial-text">
                客户的回馈是我们进步的阶梯
            </p>
        </div>
    </div>
</div>

<script>
    var comment = new Vue({
        el: "#clients",
        data: {
            comments: [],
            names: [],
            portraits: []
        },
        mounted: function () {
            $.ajax({
                url: "Comment/showComments",
                type: "get",
                async: true,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus) {
                    $.each(data, function (index, obj) {
                        comment.names.push(obj["name"]);
                        comment.comments.push(obj["comment"]);
                        comment.portraits.push("user/" + obj["portrait"]);
                    })
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            })
        }
    })
</script>

<div class="section third-section">
    <div class="container centered">
        <div class="sub-section">
            <div class="title clearfix">
                <div class="pull-left">
                    <h3>最近客户</h3>
                </div>
                <ul class="client-nav pull-right">
                    <li id="client-prev"></li>
                    <li id="client-next"></li>
                </ul>
            </div>
            <ul class="row client-slider" id="clint-slider">
                <li>
                    <img v-bind:src="client1" alt="client logo 1">
                </li>
                <li>
                    <img v-bind:src="client2" alt="client logo 2">
                </li>
                <li>
                    <img v-bind:src="client3" alt="client logo 3">
                </li>
                <li>
                    <img v-bind:src="client4" alt="client logo 4">
                </li>
                <li>
                    <img v-bind:src="client5" alt="client logo 5">
                </li>
                <li>
                    <img v-bind:src="client6" alt="client logo 6">
                </li>
                <li>
                    <img v-bind:src="client7" alt="client logo 7">
                </li>
            </ul>
        </div>
    </div>
</div>
<script>
    var portrait = new Vue({
        el: "#clint-slider",
        data: {
            client1: "",
            client2: "",
            client3: "",
            client4: "",
            client5: "",
            client6: "",
            client7: "",
        },
        mounted: function () {
            var data = new FormData();
            data.append("1", "1");
            $.ajax({
                url: "Comment/portrait",
                type: "post",
                async: true,
                data: data,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus) {
                    portrait.client1 = "user/" + data.p1;
                    portrait.client2 = "user/" + data.p2;
                    portrait.client3 = "user/" + data.p3;
                    portrait.client4 = "user/" + data.p4;
                    portrait.client5 = "user/" + data.p5;
                    portrait.client6 = "user/" + data.p6;
                    portrait.client7 = "user/" + data.p7;
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        }
    })
</script>

<!-- 特色 -->
<div id="price" class="section secondary-section">
    <div class="container">
        <div class="title">
            <h1>特色</h1>
            <p>卖家与买家直接联系，没有中间商赚差价</p>
        </div>
        <div class="price-table row-fluid">
            <div class="span4 price-column">
                <h3>即时</h3>
                <ul class="list">
                    <li><strong>时刻更新</strong></li>
                    <li><strong>提醒卖家下架商品</strong></li>
                    <li><strong>发送最新消息</strong></li>
                </ul>
            </div>
            <div class="span4 price-column">
                <h3>合理</h3>
                <ul class="list">
                    <li><strong>买卖双发自行协商</strong></li>
                    <li><strong>平台公开</strong></li>
                    <li><strong>上下架迅速</strong></li>
                    <li><strong>设计合理</strong></li>
                </ul>
            </div>
            <div class="span4 price-column">
                <h3>精美</h3>
                <ul class="list">
                    <li><strong>上过天猫吗</strong></li>
                    <li><strong>去过京东吗</strong></li>
                    <li><strong>逛过唯品会吗</strong></li>
                    <li><strong>还有我们</strong></li>
                </ul>
            </div>
        </div>
        <div class="centered">
            <p class="price-text">我们为您提供最诚挚的服务</p>
        </div>
    </div>
</div>

<div class="section third-section">
    <div class="container newsletter">
        <p></p>
        <p></p>
        <p></p>
    </div>
</div>

<div id="contact" class="contact">
    <div class="section secondary-section">
        <div class="container">
            <div class="title">
                <h1>联系我们</h1>
                <p>如果您有什么好的意见或者建议，欢迎向我们提出。在收到您的意见后，我们会进行及时的回复</p>
            </div>
        </div>
        <div class="map-wrapper">
            <div class="map-canvas" style="background:#444"></div>
            <div class="container">
                <div class="row-fluid">
                    <div class="span5 contact-form centered">
                        <h3>请写下您的意见</h3>
                        <div id="successSend" class="alert alert-success invisible">
                            <strong>成功</strong>您的意见正在发送
                        </div>
                        <div id="errorSend" class="alert alert-error invisible">不好意思，出错了</div>
                        <form id="contact-form">
                            <div class="control-group">
                                <div class="controls">
                                    <input class="span12" type="text" id="name" name="name"
                                           placeholder="* 您的姓名..."/>
                                    <div class="error left-align" id="err-name">请留下您的称呼，谢谢</div>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <input class="span12" type="email" name="email" id="email"
                                           placeholder="* 您的联系方式..."/>
                                    <div class="error left-align" id="err-email">请留下您的联系方式，谢谢</div>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <textarea class="span12" name="comment" id="comment"
                                              placeholder="* 您的建议..."></textarea>
                                    <div class="error left-align" id="err-comment">请写下您宝贵的意见，谢谢</div>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <button id="send-mail" class="message-btn">发送</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="span9 center contact-info">
                <p>四川大学二手交易平台</p>
                <p>SCUMarket</p>
                <div class="title">
                    <h3>欢迎您</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="scrollup">
    <a href="#">
        <i class="icon-up-open"></i>
    </a>
</div>
<script type="text/javascript" src="js/jquery.mixitup.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/modernizr.custom.js"></script>
<script type="text/javascript" src="js/jquery.bxslider.js"></script>
<script type="text/javascript" src="js/jquery.cslider.js"></script>
<script type="text/javascript" src="js/jquery.placeholder.js"></script>
<script type="text/javascript" src="js/jquery.inview.js"></script>
<script src="js/respond.min.js"></script>
<script type="text/javascript" src="js/app.js"></script>

</body>
</html>