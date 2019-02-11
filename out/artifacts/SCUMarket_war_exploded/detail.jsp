<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8"/>
    <title></title>
    <style type="text/css">
        .btn {
            color: black;
            background-color: #FFC125;
            width: 100px;
            height: 50px;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #FFFF00;
        }

        /*active 要在后面 否则会被hover覆盖*/

        .btn:focus {
            background-color: #FFFF00;
        }

        .btn:active {
            background-color: #FFFF00;
        }
    </style>
    <script type="text/javascript" src="js/vue.js"></script>
    <script type="text/javascript" src="js/vue-resource.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
</head>

<body style="background-image: url('images/detailbg.jpg');background-repeat: no-repeat; background-position: 800px 200px; margin: 0; padding: 0">
<br/>
<div id="context">
    <div>
        <div style="padding: 20px 0px 20px 50px; float: left;">
            <font size="7" color="black" face="times new roman">Dragonists</font>
        </div>
        <div style="text-align:right ; padding: 20px 50px 20px 700px; float: left;">
            <font size="7" color="black" face="times new roman">SCU</font>
            <font size="7" color="black" face="宋体">二手交易平台</font>
        </div>

    </div>

    <div style="height: 50px; width: 100%; background: #FFC125; overflow: hidden;text-align:center">
        <div style="height: 50px ; width: 600px; background: #FFC125; ">
            <button class="btn"><a>首页</a></button>
            <button class="btn"><a>加急</a></button>
            <button class="btn"><a>发现</a></button>
        </div>
    </div>

    <div style="height: 500px; width: 500px; margin: 100px 0px 100px 200px; display: block;  border-style:solid ;border-color:#EEE685 ; border-width: 1px;">
        <img v-bind:src="url" style="height: 500px; width: 500px;"/>
    </div>

    <div style="height: 500px; width: 657px; margin: 100px 0px 0px 0px; position: absolute;left: 700px;top: 176px;">
        <div style="height: 100px; width: 657px;position: relative;left: 50px;">
            <br/>
            <font size="5" color="black" face="微软雅黑">商品名称：{{name}}</font>
        </div>
        <div style="height: 100px; width: 657px; position: relative;left: 50px; border-style:dashed none none none;border-color:#EEE685 ; border-width: 1px;">
            <br/>
            <font size="5" color="black" face="微软雅黑">价格：{{price}}</font>
            <font size="6" color="black" face="微软雅黑"> ￥</font>
        </div>
        <div style="height: 100px; width: 657px; position: relative;left: 50px; border-style:dashed none dashed none ;border-color:#EEE685 ; border-width: 1px;">
            <br/>
            <font size="5" color="black" face="微软雅黑">校区：{{campus}}</font>
        </div>
        <div style="height: 100px; width: 657px; position: relative;left: 50px;">
            <br/>
            <font size="5" color="black" face="微软雅黑">卖家联系方式</font>
            <br/><br/>
            <font size="4" color="black" face="微软雅黑">卖家昵称：{{seller}}</font>
            <br/><br/>
            <font size="4" color="black" face="微软雅黑">手机号：{{phoneNumber}}</font>
            <br/><br/>
            <font size="4" color="black" face="微软雅黑">QQ号：{{qq}}</font>
            <br/><br/>
            <font size="4" color="black" face="微软雅黑">微信号：{{weChat}}</font>
        </div>
    </div>

    <div style="height: 50px; width: 1200px; margin: 0 auto;">
        <div style="height: 50px; width: 600px;">
            <button class="btn" onclick="testDisplay()"><a>商品详情</a></button>
            <button class="btn" onclick="testVisibility()"><a>商品留言</a></button>
        </div>
    </div>

    <div align="center">
        <div id="testD" style="height: 200px ; width: 1200px;  border:1px solid  #EEE685; display: block;">
            <div>
                商品详情
            </div>
            <div>{{description}}</div>
        </div>

        <div id="testV" style="width: 1200px;  border:1px solid  #EEE685; display: none; ">
            <input type="text" id="" value=""
                   style="height: 50px; width: 1000px; position: relative;top: 10px;border: #FFC125 solid 2px;color: #000000;font-size: larger;"
                   maxlength="50"/>
            <button style="height: 50px; width: 100px; position: relative;top: 10px;">提交</button>
        </div>
    </div>

    <div style="height: 200px; width: 100%; background: #FFC125;position: relative;top: 10px;">

    </div>
</div>
</body>
<script type="text/javascript">
    function testDisplay() {
        var divD = document.getElementById("testD");
        if (divD.style.display == "none") {
            divD.style.display = "block";
            var divV = document.getElementById("testV");
            divV.style.display = "none";
        }
    }

    function testVisibility() {
        var divV = document.getElementById("testV");
        if (divV.style.display == "none") {
            divV.style.display = "block";
            var divD = document.getElementById("testD");
            divD.style.display = "none";
        }
    }
</script>
<script>
    var vm = new Vue({
        el: "#context",
        data: {
            name: "",
            price: "",
            campus: "",
            seller: "",
            phoneNumber: "",
            qq: "",
            weChat: "",
            description: "",
            url: "",
        },
        mounted: function () {
            $.ajax({
                url: "CommodityOP/getCommodity?id=" + "<%=request.getParameter("id")%>",
                type: "get",
                async: true,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus) {
                    vm.name = data.name;
                    vm.price = data['price'];
                    vm.campus = data['campus'];
                    vm.seller = data['seller'];
                    vm.phoneNumber = data['phoneNumber'];
                    vm.qq = data['qq'];
                    vm.weChat = data['weChat'];
                    vm.description = data['description'];
                    vm.url = "commodity/img" + data['id'] + ".jpg";
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        }
    })
</script>
</html>
