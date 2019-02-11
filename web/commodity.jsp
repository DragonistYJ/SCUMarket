<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品选项卡</title>
    <meta charset="utf-8">
    <meta name="keywords" content="四川大学,二手交易平台">
    <meta name="description" content="这是Dragonists小组的牛啤而且优秀的作品">
    <style>
        .search1 {
            background-color: #F3DD8A;
            height: 35px;
            width: 50px;
            font-weight: bold;
            border-radius: 10px;
            font-family: 幼圆;
        }

        .DSearch {
            width: 1400px;
            height: 70px;
            margin: 15px auto 10px auto;
            font-size: 20px;
            line-height: 35px;
            font-weight: 900;
        }

        .DSearchbox {
            margin: 45px auto 0 auto;
            border-radius: 10px;
            width: 1150px;
            height: 25px;
            background-color: transparent;
            color: #CCCCCC;
            border: 1px SOLID #660000;
        }

        .con {
            width: 960px;
            height: 40px;
            border: 1px solid #d1d1d1;
            list-style: none;
            margin: 0;
            padding: 0;
            text-align: center;
            font-size: 0;
        }

        .con li {
            margin: 7px 5px 0;
            /*把li转为内联块 排成一排*/
            display: inline-block;
        }

        .con a {
            /*转换为内联块 才可以增加a标签的大小*/
            display: inline-block;
            background: gold;
            /*14 12*/
            padding: 7px 10px;
            font-size: 16px;
            /*把行高设置和文字一样 方便计算a标签的高度*/
            line-height: 12px;
            color: #393c35;
            text-decoration: none;
        }

        .con a:hover {
            color: white;
            background-color: #FFE800;
        }

        .con span {
            font-size: 12px;
        }

        @-webkit-keyframes fadeIn {
            0% {
                opacity: 0; /*初始状态 透明度为0*/
            }
            50% {
                opacity: 0; /*中间状态 透明度为0*/
            }
            100% {
                opacity: 1; /*结尾状态 透明度为1*/
            }
        }

        ul {
            list-style-type: none;
            margin: 32px auto 0 auto;
            padding: 0;
            padding-top: 6px;
            padding-bottom: 6px;
        }

        li {
            display: inline;
        }

        a:link, a:visited {
            font-family: "幼圆";
            font-weight: bold;
            color: #660000;
            background-color: transparent;
            text-align: center;
            padding: 6px;
            text-decoration: none;
            text-transform: uppercase;
        }

        /*.tab1:hover{background-color:black;border-width:0 5px 5px 5px;border:solid #FFE800;}
        .tab2:hover{background-color:black;border-width:0 5px 5px 5px;border:solid #FFE800;}*/
        a:hover, a:active {
            background-color: transparent;
            color: black;
            /*animation:fadeIn;
            -webkit-animation:fadeIn;*/
        }

        form {
            font-family: "幼圆";
            color: #660000
        }

        body {

            color: #660000;

            margin: auto auto auto auto;

            background-image: url(commodity/bbb.jpg);
            background-color: black;
            background-repeat: no-repeat;
            background-position: cover;
            background-attachment: fixed;
            background-size: cover;

        }

        a {
            text-decoration: none;
        }

        .tab1 {
            width: 1449px;
            height: 61px;
            border-top-right-radius: 25px;
            border-top-left-radius: 25px;
            margin: 10px auto 0 auto;

            background-image: url(commodity/y.png);

            background-color: #FFE800;
        }

        .tab2 {
            width: 1449px;
            height: 61px;
            border-bottom-right-radius: 25px;
            border-bottom-left-radius: 25px;
            margin: -36px auto 0 auto;
            background-image: url(commodity/y.png);

            background-color: #FFE800;
            /*background-image:url(c.png);*/
        }

        a.classify1 {
            float: left;
            padding-top: 10px;
            margin: 0 5px 0 5px;
            width: 184px;
            height: 32px;
            line-height: 32px;
            font-size: 20px;
            text-align: center;
        }

        a.classify2 {
            float: left;
            padding-top: 10px;
            width: 182px;
            height: 32px;
            margin: 0 5px 0 8px;
            line-height: 32px;
            font-size: 20px;
            text-align: center;
        }

        a.classify3 {
            float: left;
            padding-top: 10px;
            margin: 0 5px 0 8px;
            width: 182px;
            height: 32px;
            line-height: 32px;
            font-size: 20px;
            text-align: center;
        }

        a.classify4 {
            float: left;
            padding-top: 10px;
            margin: 0 5px 0 7px;
            width: 182px;
            height: 32px;

            line-height: 32px;
            font-size: 20px;
            text-align: center;

        }

        a.classify5 {
            float: left;
            padding-top: 10px;
            margin: 0 5px 0 8px;
            width: 182px;
            height: 32px;

            line-height: 32px;
            font-size: 20px;
            text-align: center;

        }

        a.classify6 {
            float: left;
            padding-top: 10px;
            margin: 0 5px 0 7px;
            width: 184px;
            height: 32px;

            line-height: 32px;
            font-size: 20px;
            text-align: center;
            border-width: 5px 5px 5px 8px;
        }

        a.classify7 {
            float: left;
            padding-top: 10px;
            margin: 0 auto 0 7px;
            width: 183px;
            height: 32px;

            line-height: 32px;
            font-size: 20px;
            text-align: center;
            border-width: 5px 5px 5px 8px;
        }

        a.classify8 {
            float: left;
            padding-top: 10px;
            margin: 0 2px 0 108px;
            width: 182px;
            height: 34px;

            line-height: 34px;
            font-size: 20px;
            text-align: center;
        }

        a.classify9 {
            float: left;
            padding-top: 10px;
            margin: 0 5px 0 10px;
            width: 182px;
            height: 34px;

            line-height: 34px;
            font-size: 20px;
            text-align: center;
        }

        a.classify10 {
            float: left;
            padding-top: 10px;
            margin: 0 5px 0 8px;
            width: 182px;
            height: 34px;

            line-height: 34px;
            font-size: 20px;
            text-align: center;
        }

        .error {
            color: #FF0000;
        }

        .search {
            float: left;
        }

        ul.zrj {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        a.z {
            float: left;
            padding-top: 10px;
            margin: 0 4px 0 8px;
            width: 182px;
            height: 34px;

            line-height: 32px;
            font-size: 20px;
            text-align: center;

        }

        a.z3 {
            float: left;
            padding-top: 10px;
            margin: 0 4px 0 9px;
            width: 182px;
            height: 34px;

            line-height: 32px;
            font-size: 20px;
            text-align: center;

        }

        .box {
            width: 0px;
            height: 0px;
            margin: 0 auto;
            overflow: hidden;
        }

        .box img {
            float: left;
        }
    </style>
    <link rel="stylesheet" href="css/commodity.css">
</head>

<body>

<form name="searchTop" action="" class="DSearch" target="_top" accept-charset="gbk">
    <label>DragonistSearh</label>
    <div class="DSearch-input-wrap" style="display:inline;">
        <input type="text" class="DSearchbox" name="q" accesskey="s" autocomplete="off" value="请输入你想搜索的商品"
               class="s-combobox-input" role="combobox" aria-haspopup="true" title="请输入搜索文字" aria-label="请输入搜索文字">
        <button type="submit" class="search1">搜索</button>
    </div>
</form>

<div class="tab1">
    <ul>
        <a class="classify1" href="#"> <b>服装配饰</b></a>
        <a class="classify2" href="#"> <b>交通工具</b></a>
        <a class="classify3" href="#"> <b>书籍</b></a>
        <a class="classify4" href="#"> <b>文具用品</b></a>
        <a class="classify5" href="#"> <b>服装配饰</b></a>
        <a class="classify6" href="#"> <b>护肤品</b></a>
        <a class="classify7" href="#"> <b>化妆品</b></a>

    </ul>
</div>
<div class="tab2">
    <ul>
        <a class="classify8" href="#"> <b>电子产品</b></a>
        <a class="classify9" href="#"> <b>乐器</b></a>
        <a class="classify10" href="#"> <b>加急</b></a>
        <ul class="zrj" style="display:inline;" style="margin:auto auto 0 0;">
            <li><a class="z"
                   href="#"
                   title="点击后恢复默认排序">综合<i class="e"></i></a></li>
            <li><a class="z"
                   href="#"
                   title="点击后按人气从高到低">人气<i class="f-ico-arrow-d"></i></a></li>
            <li><a class="z3"
                   href="#"
                   title="点击后按价格升序">价格<i class="f-ico-triangle-mt"></i></a></li>
        </ul>
    </ul>

    </br>
    <div style="float:left;display:inline;width:1449px;margin-left:auto;margin-top:10px;margin-right:auto;"
         class="bottomboxes">
        <form method="post" class="campus">
            校区：
            <input type="radio" name="campus" value="Wangjiang">望江
            <input type="radio" name="campus" value="Jiangan">江安
            <input type="radio" name="campus" value="Huaxi">华西
            <input type="submit" name="submit" value="搜索"
                   style="background-color: #F3DD8A; border-radius:10px;font-family:幼圆;font-weight:bold;">

            <label><input type="checkbox" name="post_fee" value="-1" aria-label="包邮">包邮</label>
            <label><input type="checkbox" name="combo" value="1" aria-label="搭配减价">搭配减价</label>
            <label><input type="checkbox" name="support_cod" value="1" style="font-weight:bold;"
                          aria-label="货到付款">货到付款</label>

            <b>from</b><input type="text" name="start_price" autocomplete="off" maxlength="6" value=""
                              style="background-color:transparent;" class="j_FPInput" aria-label="最低价"
                              placeholder="请输入最低价"><b>to</b>
            <input type="text" name="end_price" autocomplete="off" value="" maxlength="6"
                   style="background-color:transparent;" class="j_FPInput" aria-label="最高价" placeholder="请输入最高价">
            <a class="ui-btn-s" id="J_FPCancel">清空</a>
            <a class="ui-btn-s-primary" id="J_FPEnter" atpanel=",,,,spu-fprice,20,fprice,">确定</a>
        </form>
    </div>
</div>
</div>
<div class="box">
</div>
<div class="sep" id="out">

</div>
<ul class="con" style="margin:0 auto 0 auto;">
    <li>
        <a href="">上一页</a>
    </li>
    <li><a href="">1</a></li>
    <li><a href="">2</a></li>
    <li><a href="">3</a></li>
    <li><a href="">4</a></li>
    <li><span>...</span></li>
    <li><a href="">17</a></li>
    <li><a href="">18</a></li>
    <li><a href="">19</a></li>
    <li><a href="">20</a></li>
    <li><a href="">下一页</a></li>
</ul>


</body>

<script>
    var box = document.querySelector(".box");
    /*用box存储页面中的box对象*/
    var imglist = [];
    var imglist1 = [];
    var length = 16;
    var line = 4;
    var count = 0;
    var wid = [];
    for (var f = 0; f < 16; f++) {
        var a = document.getElementById('out');
        var div = document.createElement('div');
        div.className = 'imagechange-3d image-hover hover';
        div.id = f;
        div.style.cursor = 'pointer';
        div.href = "detail.jsp";
        a.appendChild(div);
    }

    function loadpicture(i) {
        var img = document.createElement("img");
        /*创建结点*/
        img.src = 'commodity/img' + i + '.jpg';//设置图片地址
        imglist.push(img);//图片放入
        box.appendChild(img);
        /*添加元素*/
        img.onload = function () {//图片加载完成后，获取图片尺寸
            img.prop = img.width / img.height;
            count++;
            if (count == length) {
                fomate();
            }
        }
    }

    for (var i = 1; i <= length; i++) {
        loadpicture(i);
    }

    function fomate() {//调整我们的图片
        for (var j = 0; j < 16; j++) {
            imglist1[j].style.height = 187.5 + 'px';
            imglist1[j].style.width = 300 + 'px';
        }

    }

    for (var g = 0; g < 16; g++) {
        var b = document.getElementById(g);
        var div = document.createElement('div');
        div.className = 'imagechange-3d-inner';
        div.id = 16 + g;
        div.href = "detail.jsp";
        b.appendChild(div);
    }

    for (var z = 1; z <= 16; z++) {
        var c = document.getElementById(z + 15);
        var div = document.createElement('div');
        var img = document.createElement('img');
        img.src = 'commodity/img' + z + '.jpg';
        imglist1.push(img);//图片放入
        imglist1[z - 1].style.height = imglist[z - 1].style.height;
        imglist1[z - 1].style.width = imglist[z - 1].style.width;
        div.appendChild(img);
        div.className = 'imgchange-1';
        div.href = "detail.jsp";
        c.appendChild(div);
    }
    for (var n = 1; n <= 16; n++) {
        d = document.getElementById(n + 15);
        var div = document.createElement('div');
        div.className = 'imgchange-2';

        var text = document.createTextNode('商品简介');
        div.style.fontSize = 20 + 'px';
        div.style.lineHeight = 187.5 + 'px';
        div.appendChild(text);

        div.style.backgroundImage = 'url(commodity/f.jpg)';
        div.href = "detail.jsp";
        d.appendChild(div);
    }
</script>
</html>
