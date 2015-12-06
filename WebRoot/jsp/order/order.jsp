<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>农资联盟杯</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/personCenter.css">
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
        (function(){
            if (typeof jQuery == 'undefined') {
                document.write(unescape("%3Cscript src='js/jquery-2.1.4.min.js' type='text/javascript'%3E%3C/script%3E"));
            }
        })()
        
 
        
        
    </script>
    <style>
        .main {
            background: #f2f2f2;

        }
        .container {
            width:960px;
            margin: 0 auto;
        }
        
        .personinfotable {
            margin-left: 200px;
        }
        
        .personinfotable tr td {
            padding-left: 20px;
            height: 30px;
            
        }
        
        .container {
            padding-top: 50px;
        }

        /* user-myjd-2015 myjd.order2015.css Date:2015-10-13 15:16:59 */
        @charset "UTF-8";.paind{text-indent:-36px;padding-left:36px}a:hover{text-decoration:none}a.btn-combine,a.btn-pay{display:inline-block;*display:inline;*zoom:1;background:#fff;border:1px solid #e4393c;color:#e4393c;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;width:85px;height:18px;line-height:18px;padding:2px 0;margin:3px 0;text-align:center;font-weight:700}a.btn-combine:hover,a.btn-pay:hover{background:#e4393c;font-weight:400;color:#fff}a.btn-combine{width:77px;font-weight:400}.toolbar .operates{position:relative;top:10px}a.btn-5{background-color:#fff;background-image:-moz-linear-gradient(top,#fff,#fff);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#fff),color-stop(1,#fff));filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ffffff', GradientType='0');-ms-filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ffffff');background-image:linear-gradient(to bottom,#fff 0,#fff 100%);border:1px solid #71b247;color:#71b247;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;width:85px;text-align:center;padding:2px 0 3px;margin:3px 0;font-weight:700}a.btn-5:hover{background-color:#71b247;background-image:-moz-linear-gradient(top,#71b247,#71b247);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#71b247),color-stop(1,#71b247));filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#71b247', endColorstr='#71b247', GradientType='0');-ms-filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#71b247', endColorstr='#71b247');background-image:linear-gradient(to bottom,#71b247 0,#71b247 100%);font-weight:400}a.btn-5:link,a.btn-5:visited,a.btn-6:link,a.btn-6:visited,a.btn-7:link,a.btn-7:visited,a.btn-8:link,a.btn-8:visited{color:#71b247}a.btn-5:hover,a.btn-6:hover,a.btn-7:hover,a.btn-8:hover{color:#fff}a.btn-again{display:inline-block;*display:inline;*zoom:1;padding:2px 0 3px;background:#f5f5f5;border:1px solid #ddd;color:#333;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;width:85px;text-align:center}a.btn-again b{display:inline-block;*display:inline;*zoom:1;vertical-align:middle;width:12px;height:17px;margin-right:5px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150212.png) -22px -180px no-repeat}a.btn-again:hover{background:#fff;border-color:#e4393c;color:#e4393c}a.btn-again:hover b{background-position:0 -180px}div.mod-main .mt .extra-l li{padding-right:15px}div.mod-main .mt .extra-l li.fore1{padding-right:20px}div.mod-main .mt .extra-l li.fore2{position:relative;border-left:1px dotted #ddd;padding:0 15px}div.mod-main .mt .extra-l li.fore2 a.curr,div.mod-main .mt .extra-l li.fore2 a.ftx-03:hover{color:#e4393c}div.mod-main .mt .extra-l li a{display:inline-block;*display:inline;*zoom:1;vertical-align:middle;color:#333}div.mod-main .mt .extra-l li a.ftx-03{color:#999}div.mod-main .mt .extra-l li a:hover em{color:#fff}div.mod-main .mt .extra-l li em{position:relative;display:inline-block;*display:inline;*zoom:1;height:15px;line-height:15px;font-family:arial;top:-5px;padding:0 4px;background:#e4393c;-webkit-border-radius:15px;-moz-border-radius:15px;border-radius:15px;color:#fff;font-size:10px;margin:0 0 0 2px;_position:static}div.mod-main .mt .extra-l li .new{position:absolute;width:24px;height:14px;top:-10px;right:-10px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/new-icon.png) no-repeat;overflow:hidden}.root61 div.mod-main .mt .extra-l li{padding-right:20px}.root61 div.mod-main .mt .extra-l li.fore2{padding-left:40px;margin-left:20px}div.mod-order .mt{padding:10px 0 0}.switch-items a{display:inline-block;*display:inline;*zoom:1;width:24px;height:24px;line-height:24px;text-align:center;overflow:hidden;margin-left:5px;-webkit-border-radius:15px;-moz-border-radius:15px;border-radius:15px;border:1px solid #ddd;color:#333}.switch-items a.curr{background:#e4393c;border-color:#e4393c;color:#fff;font-weight:700}.mt .search{position:relative;top:-3px}.mt .search .itxt{float:left;width:158px;height:18px;line-height:18px;padding:2px 5px 3px;border:1px solid #ccc}.mt .search .search-btn{position:relative;float:left;width:52px;height:23px;line-height:99em;overflow:hidden;border:1px solid #ddd;border-left:0;text-align:center;background-color:#f7f7f7;background-image:-moz-linear-gradient(top,#f7f7f7,#f3f2f2);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#f7f7f7),color-stop(1,#f3f2f2));filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f7f7f7', endColorstr='#f3f2f2', GradientType='0');-ms-filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f7f7f7', endColorstr='#f3f2f2');background-image:linear-gradient(to bottom,#f7f7f7 0,#f3f2f2 100%)}.mt .search .search-btn b{position:absolute;left:17px;top:3px;display:inline-block;*display:inline;*zoom:1;vertical-align:middle;width:18px;height:16px;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150212.png) -8px -58px}.mt .search .default-btn{float:left;margin-left:-1px;width:50px;height:18px;line-height:18px;padding:2px 0 3px;text-align:center;border:1px solid #ddd;color:#333;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;background-color:#f7f7f7;background-image:-moz-linear-gradient(top,#f7f7f7,#f3f2f2);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#f7f7f7),color-stop(1,#f3f2f2));filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f7f7f7', endColorstr='#f3f2f2', GradientType='0');-ms-filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f7f7f7', endColorstr='#f3f2f2');background-image:linear-gradient(to bottom,#f7f7f7 0,#f3f2f2 100%)}.mt .search .default-btn:hover{color:#333;background-color:#f3f2f2;background-image:-moz-linear-gradient(top,#f3f2f2,#f7f7f7);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#f3f2f2),color-stop(1,#f7f7f7));filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f3f2f2', endColorstr='#f7f7f7', GradientType='0');-ms-filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f3f2f2', endColorstr='#f7f7f7');background-image:linear-gradient(to bottom,#f3f2f2 0,#f7f7f7 100%)}.mt .search .default-btn b{display:inline-block;*display:inline;*zoom:1;_display:none;width:7px;height:4px;margin-left:5px;overflow:hidden;vertical-align:middle;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150212.png) -37px -207px no-repeat}.empty-box{position:relative;width:400px;margin:110px auto 170px;height:136px}.empty-box .empty-icon{display:block;width:124px;height:160px;overflow:hidden;vertical-align:middle;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/empty-icon02.png) no-repeat}.empty-box .empty-icon03{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/empty-icon03.png) no-repeat}.empty-box .e-cont{position:absolute;left:146px;top:60px;width:250px}.empty-box .e-cont h5{font-family:"寰蒋闆呴粦";color:#666;font-size:18px;font-weight:400;line-height:30px}.empty-box .e-cont .op-btns{margin-top:10px}div#order02{position:relative}a.ftx-03,a.ftx03,div.ftx-03,div.ftx03,span.ftx-03,span.ftx03{color:#aaa}div.tip-box{margin-top:10px}.order-body-cover{top:0;left:0;z-index:1001;width:100%;height:100%;background:#000;opacity:.7;filter:alpha(opacity=70);position:fixed;_position:absolute;_width:expression(documentElement.clientWidth);_height:expression(documentElement.clientHeight);_top:expression(documentElement.scrollTop)}.order-guid-bg{position:absolute;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-sbg.png) no-repeat;width:869px;height:2000px;z-index:998;margin-top:1px}#order-guid{position:absolute;width:875px;height:900px;overflow:hidden;z-index:1001}#order-guid ul{position:absolute;left:0;top:0;width:3500px;height:242px}#order-guid li{float:left;width:875px;position:relative;z-index:100;overflow:hidden}#order-guid li .go,#order-guid li .next,#order-guid li .prev{position:absolute;width:145px;height:60px;z-index:2;background-image:url(about:blank)}#order-guid li .go,#order-guid li .prev{width:100px;height:45px}#order-guid li .close{position:absolute;width:50px;height:50px;z-index:2;cursor:pointer;background-image:url(about:blank)}#order-guid li .fore-bg{position:absolute;top:0;left:0;width:100%;z-index:1}#order-guid li.fore1{height:623px}#order-guid li.fore1 .fore-bg{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-s01.png) no-repeat;_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='//misc.360buyimg.com/user/myjd-2015/css/i/og-s01.png', sizingMethod='crop');height:613px;width:547px;margin:4px 0 0 183px}#order-guid li.fore1 .close{top:234px;left:683px}#order-guid li.fore1 .next{left:368px;top:395px}#order-guid li.fore2{height:643px}#order-guid li.fore2 .fore-bg{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-s02.png) top no-repeat;_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='//misc.360buyimg.com/user/myjd-2015/css/i/og-s02.png', sizingMethod='crop');height:429px;margin:214px 0 0 116px;width:758px}#order-guid li.fore2 .next{left:331px;top:360px;width:100px;height:45px}#order-guid li.fore2 .prev{left:225px;top:360px}#order-guid li.fore2 .close{left:114px;top:210px}#order-guid li.fore3{height:545px}#order-guid li.fore3 .fore-bg{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-s03.png) no-repeat;_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='//misc.360buyimg.com/user/myjd-2015/css/i/og-s03.png', sizingMethod='crop');height:538px;margin:0 0 0 6px}#order-guid li.fore3 .close{top:170px;left:570px}#order-guid li.fore3 .prev{left:290px;top:330px}#order-guid li.fore3 .next{left:386px;top:330px;width:100px;height:45px}#order-guid li.fore4{height:642px}#order-guid li.fore4 .fore-bg{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-s04.png) no-repeat;_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='//misc.360buyimg.com/user/myjd-2015/css/i/og-s04.png', sizingMethod='crop');height:344px;margin:298px 0 0 184px;width:669px}#order-guid li.fore4 .close{top:294px;left:180px}#order-guid li.fore4 .prev{left:285px;top:444px}#order-guid li.fore4 .go{left:398px;top:444px}.root61 .order-guid-bg{width:1049px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-bg.png) no-repeat}.root61 #order-guid{width:1187px}.root61 #order-guid ul{width:4820px}.root61 #order-guid li{width:1187px}.root61 #order-guid li.fore1{height:623px}.root61 #order-guid li.fore1 .fore-bg{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-01.png) no-repeat;_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='//misc.360buyimg.com/user/myjd-2015/css/i/og-01.png', sizingMethod='crop');height:613px;margin:10px 0 0 186px}.root61 #order-guid li.fore1 .close{top:234px;left:686px}.root61 #order-guid li.fore1 .next{left:371px;top:395px}.root61 #order-guid li.fore2{height:643px}.root61 #order-guid li.fore2 .fore-bg{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-02.png) top no-repeat;_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='//misc.360buyimg.com/user/myjd-2015/css/i/og-02.png', sizingMethod='crop');height:429px;margin:174px 0 0 272px;width:924px}.root61 #order-guid li.fore2 .next{left:506px;top:320px;width:100px;height:45px}.root61 #order-guid li.fore2 .prev{left:400px;top:320px}.root61 #order-guid li.fore2 .close{left:285px;top:170px}.root61 #order-guid li.fore3{height:512px}.root61 #order-guid li.fore3 .fore-bg{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-03.png) no-repeat;_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='//misc.360buyimg.com/user/myjd-2015/css/i/og-03.png', sizingMethod='crop');height:512px;margin:-1px 0 0 7px}.root61 #order-guid li.fore3 .close{top:118px;left:692px}.root61 #order-guid li.fore3 .prev{left:407px;top:275px}.root61 #order-guid li.fore3 .next{left:507px;top:275px;width:100px;height:45px}.root61 #order-guid li.fore4{height:677px}.root61 #order-guid li.fore4 .fore-bg{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/og-04.png) no-repeat;_background-image:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='//misc.360buyimg.com/user/myjd-2015/css/i/og-04.png', sizingMethod='crop');height:344px;margin:215px 0 0 300px;width:791px}.root61 #order-guid li.fore4 .close{top:215px;left:295px}.root61 #order-guid li.fore4 .prev{left:410px;top:361px}.root61 #order-guid li.fore4 .go{left:515px;top:361px}#order02 .mc{_position:relative}
        /* user-myjd-2015 top-search.css Date:2015-09-08 16:53:24 */
        .top-search{position:relative;padding:20px 0 10px;margin:5px 0 0;border-top:1px solid #f5f5f5;z-index:2}.top-search .s-itxt{float:left;vertical-align:middle;width:157px;padding:2px 5px 3px;height:18px;line-height:18px;border:1px solid #ccc}.top-search .selt{float:left;height:25px;line-height:25px;border:1px solid #ccc}.top-search .s-btn{float:left;position:relative;left:-4px;vertical-align:middle;width:68px;height:25px;margin-right:50px;font-size:0;line-height:99em;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150212.png) 0 -224px no-repeat}.top-search .dl{display:inline-block;display:block;margin-bottom:15px;_margin-bottom:5px;position:relative}.top-search .dl:after{content:".";display:block;height:0;clear:both;visibility:hidden}* html .top-search .dl{height:1%}*+html .top-search .dl{min-height:1%}.top-search .fore1{z-index:2}.top-search .label{float:left;width:60px;height:30px;line-height:30px}.top-search .dd{float:left;width:760px;font-size:0}.top-search .dd a{display:inline-block;*display:inline;*zoom:1;vertical-align:middle;padding:0 8px;margin:0 1px 5px 0;height:30px;line-height:30px;font-size:12px}.top-search .dd a.curr,.top-search .dd a:hover{background:#e4393c;color:#fff;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px}.top-search .ts-del{position:absolute;z-index:3;right:0;top:10px;display:block;width:21px;height:21px;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150212.png) -44px -55px}.top-search .ts-del:hover{background-position:-57px -87px}.top-search a.btn-9{background:#f5f5f5;border:1px solid #ddd;color:#333;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;width:85px;text-align:center;padding:2px 0 3px}.top-search a.btn-9:hover{background:#fff;color:#e4393c;border:1px solid #e4393c}.top-search .ordertime-cont{float:left;position:relative;z-index:10;width:98px;cursor:pointer}.top-search .ordertime-cont .time-txt{position:relative;text-align:left;padding-left:20px;padding-right:12px;height:30px;line-height:30px;border:1px solid #fff}.top-search .ordertime-cont .time-txt b{position:absolute;display:block;width:7px;height:4px;right:5px;top:13px;overflow:hidden;vertical-align:middle;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150212.png) -37px -207px no-repeat}.top-search .ordertime-cont .time-list{position:absolute;left:0;top:30px;z-index:2;display:none;width:96px;background:#fff;border:1px solid #ddd;border-top:0}.top-search .ordertime-cont .time-list li{height:30px;line-height:30px;text-align:left}.top-search .ordertime-cont .time-list li a{display:block;position:relative;height:30px;line-height:30px;color:#666;padding-left:20px}.top-search .ordertime-cont .time-list li a:hover{background:#f5f5f5;color:#e4393c}.top-search .ordertime-cont .time-list li a b{position:absolute;width:10px;height:7px;left:5px;top:10px;vertical-align:middle;overflow:hidden}.top-search .ordertime-cont .time-list li a.curr{color:#e4393c}.top-search .ordertime-cont .time-list li a.curr b{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150212.png) 0 -207px}.top-search .ordertime-hover .time-txt{background:#fff;border-color:#ddd;-webkit-box-shadow:0 0 10px rgba(0,0,0,.12);-moz-box-shadow:0 0 10px rgba(0,0,0,.12);box-shadow:0 0 10px rgba(0,0,0,.12)}.top-search .ordertime-hover .time-txt b{background-position:-20px -207px}.top-search .ordertime-hover .time-txt .blank{display:block;position:absolute;height:10px;width:96px;top:21px;left:0;background:#fff;z-index:3}.top-search .ordertime-hover .time-list{display:block;-webkit-box-shadow:0 0 10px rgba(0,0,0,.12);-moz-box-shadow:0 0 10px rgba(0,0,0,.12);box-shadow:0 0 10px rgba(0,0,0,.12)}.root61 .top-search .dd{width:970px}
        /* user-myjd-2015 order-table-list.css Date:2015-11-26 19:57:33 */
        @charset "UTF-8";.order-tb .goods-item .o-match i,.order-tb .goods-item .o-similar i{display:inline-block;background-image:url(//misc.360buyimg.com/user/myjd-2015/css/i/sprite-order-icon.png);background-repeat:no-repeat}.o-related-slider .slider-next .sicon,.o-related-slider .slider-prev .sicon{display:inline-block;background-image:url(//misc.360buyimg.com/user/myjd-2015/css/i/sprite-slider.png);background-repeat:no-repeat}.order-tb{width:100%}.order-tb .number-col{width:395px}.order-tb .amount-col,.order-tb .consignee-col,.order-tb .status-col{width:105px}.order-tb thead th{height:32px;line-height:32px;text-align:center;background:#f5f5f5;color:#666;font-weight:400}.order-tb tbody td{border:1px solid #e5e5e5}.order-tb .td-02{height:40px;line-height:40px;background:#f5f5f5}.order-tb .td-02 .tip{display:inline-block;*display:inline;*zoom:1;vertical-align:middle;background:#ffaa71;color:#fff;height:16px;line-height:16px;margin:0 5px 0 15px;padding:0 2px}.order-tb .sep-row{height:20px}.order-tb .sep-row td{border:0}.order-tb .tr-th{background:#f5f5f5;height:31px;line-height:31px;color:#aaa;overflow:hidden}.order-tb .tr-th td{border-bottom-color:#f5f5f5}.order-tb .tr-th span{float:left;height:18px;line-height:18px;padding:2px 0 0;_display:inline}.order-tb .tr-th span.shop-txt{padding:0}.order-tb .tr-th .gap{width:14px}.order-tb .tr-th .dealtime{margin-right:30px;_margin-right:15px;font-family:verdana}.order-tb .tr-th .number{width:226px;font-family:verdana}.order-tb .tr-th .jd-baina{margin-left:5px}.order-tb .tr-th a{color:#333}.order-tb .tr-th a:hover{color:#e4393c}.order-tb .tr-th .order-shop{width:178px}.order-tb .tr-th .order-shop .shop-txt{display:inline-block;*display:inline;*zoom:1;vertical-align:middle;max-width:153px;overflow:hidden;margin:0;white-space:nowrap;text-overflow:ellipsis}.order-tb .tr-th .btn-im,.order-tb .tr-th .btn-im-off{display:inline-block;*display:inline;*zoom:1;width:16px;height:16px;margin:0 0 0 5px;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) -26px -155px no-repeat;vertical-align:middle}.order-tb .tr-th .btn-im-jd{background-position:-52px -155px}.order-tb .tr-th .btn-im-off{background-position:0 -155px}.order-tb .tr-th .tr-operate{float:right;position:relative;margin-right:15px;width:405px;height:23px;overflow:hidden}.order-tb .tr-th .order-del{position:absolute;right:0;top:6px;display:none;width:13px;height:13px;font-size:0;overflow:hidden;vertical-align:middle;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) -23px -132px no-repeat}.order-tb .tr-th .order-del:hover{background-position:0 -132px}.order-tb .tr-th .tel{width:180px;color:#aaa;font-family:verdana}.order-tb .tr-th .tel .tel-icon{display:inline-block;*display:inline;*zoom:1;width:19px;height:19px;margin-right:3px;overflow:hidden;vertical-align:middle;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png)-75px-55px}.order-tb .tr-th-02{background:#fff}.order-tb .tr-bd{text-align:center;vertical-align:top}.order-tb .tr-bd td{padding:14px 0}.order-tb tbody.split-tbody .tr-th td{border-width:0 1px}.order-tb tbody.split-tbody .tr-bd td{border-width:0 1px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/split-line.png) -14px 0 no-repeat}.order-tb tbody.split-tbody .tr-bd td.first{background-position:0 0}.order-tb tbody.split-tbody .tr-bd td.last{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/split-line.png) right top no-repeat}.order-tb tbody.split-tbody .sep-tr-bd{height:1px;overflow:hidden}.order-tb tbody.split-tbody .sep-tr-bd td{padding:0}.order-tb tbody.split-tbody-last .tr-bd td{border-width:0 1px 1px}.order-tb .tr-th-split td{border-bottom:none}.order-tb .tr-th-split .split-row{position:relative;top:1px;padding:11px 0;height:18px;margin:1px 0 0;border-bottom:1px solid #e5e5e5}.order-tb .tr-th-split .split-row02{position:relative;color:#393941}.order-tb .tr-th-split span.fr{float:right}.order-tb .tr-th-split .order-consignee{width:128px;margin-right:38px}.order-tb .tr-th-split .order-count em{font-family:verdana}.order-tb .tr-th-split .order-pay{width:178px}.order-tb .tr-th-split .top-arr{position:absolute;width:17px;height:10px;left:180px;top:-10px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/split-arr.png) no-repeat;overflow:hidden}.order-tb .tr-th-split .split-tip{width:100%;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;cursor:default}.order-tb .goods-item{display:inline-block;display:block;float:left;width:255px;margin-right:10px}.order-tb .goods-item:after{content:".";display:block;height:0;clear:both;visibility:hidden}* html .order-tb .goods-item{height:1%}*+html .order-tb .goods-item{min-height:1%}.order-tb .goods-item .p-img{float:left;width:60px;height:60px;border:1px solid #efefef;margin:0 14px;_display:inline}.order-tb .goods-item .p-msg{float:left;width:160px}.order-tb .goods-item .p-name{height:36px;line-height:18px;overflow:hidden;color:#333;text-align:left}.order-tb .goods-item .p-name a{color:#333;*zoom:1}.order-tb .goods-item .p-name a:hover{color:#e4393c}.order-tb .goods-item .p-extra{color:#aaa;text-align:left}.order-tb .goods-item .o-info{text-align:left;color:#aaa}.order-tb .goods-item .o-match,.order-tb .goods-item .o-similar{display:inline-block;vertical-align:top;cursor:pointer}.order-tb .goods-item .o-match i,.order-tb .goods-item .o-similar i{width:16px;height:16px;margin-right:5px;vertical-align:top}.order-tb .goods-item .o-match em,.order-tb .goods-item .o-similar em{display:inline-block;vertical-align:top}.order-tb .goods-item .o-similar i{margin-top:2px;background-position:-31px 0}.order-tb .goods-item .o-match i{background-position:-56px 0}.order-tb .goods-number{float:left;width:40px;text-align:left;color:#aaa;font-family:verdana}.order-tb .goods-repair{float:right;width:84px;text-align:center}.order-tb .goods-repair .btn-resell{display:inline-block;*display:inline;*zoom:1;position:relative;width:44px;padding:2px 0 3px 30px;margin:5px 0 0;background:#fff;border:1px solid #ddd;color:#999;-webkit-border-radius:1px;-moz-border-radius:1px;border-radius:1px}.order-tb .goods-repair .btn-resell b{position:absolute;display:block;top:0;left:9px;width:21px;height:23px;margin-right:5px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/resell-icons.png) 0 0 no-repeat}.order-tb .goods-repair .btn-resell:hover{background:#fff;border-color:#e4393c;color:#e4393c}.order-tb .goods-repair .btn-resell:hover b{background-position:0 -43px}.order-tb .consignee{color:#333}.order-tb .consignee .txt{display:inline-block;*display:inline;*zoom:1;white-space:nowrap;overflow:hidden;max-width:72px;text-overflow:ellipsis;vertical-align:middle}.order-tb .consignee b{display:inline-block;*display:inline;*zoom:1;width:14px;height:16px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) 0 -24px;vertical-align:middle;margin:0 0 0 5px}.order-tb .amount strong{font-family:verdana;color:#333}.order-tb .cellphone-icon{display:inline-block;*display:inline;*zoom:1;width:56px;height:14px;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) 0 0 no-repeat}.order-tb .operate{line-height:22px}.order-tb .operate a.a-link{color:#333}.order-tb .operate a.a-link:hover{color:#e4393c}.order-tb .operate .a-baitiao{position:relative;display:inline-block;color:#e4393c}.order-tb .operate .a-baitiao .tag{position:absolute;right:-35px;top:-2px;display:inline-block;width:30px;height:15px;line-height:15px;text-align:center;background:#e4393c;color:#fff}.order-tb .operate .a-baitiao .arrow{position:absolute;left:-4px;top:3px;width:0;height:0;border-width:3px;border-color:transparent #e4393c #e4393c transparent;border-style:dashed solid solid dashed;overflow:hidden}.order-tb .count-time{display:none;color:#999}.order-tb .count-time .time-icon{display:inline-block;*display:inline;*zoom:1;width:15px;height:16px;margin:0 3px 0 0;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) -23px -24px no-repeat;vertical-align:middle}.order-tb .count-time-red{color:#e4393c}.order-tb .count-time-red .time-icon{background-position:-80px -24px}.order-tb .status{position:relative;z-index:5;color:#333;line-height:22px}.order-tb .status a{color:#333}.order-tb .status a:hover{color:#e4393c}.order-tb .tooltip{position:relative;width:100px;margin:0 auto;z-index:2;cursor:pointer}.order-tb .tooltip .auto-icon{display:inline-block;*display:inline;*zoom:1;width:22px;height:16px;margin:0 3px 0 0;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) -48px -24px no-repeat;vertical-align:middle}.order-tb .tooltip .circle-icon{display:inline-block;*display:inline;*zoom:1;width:7px;height:7px;margin:0 0 0 3px;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) 0 -115px no-repeat;vertical-align:middle}.order-tb .tooltip .prompt-01{position:absolute;z-index:1;width:400px;right:90px;top:-22px;padding:9px 9px 0;display:none;cursor:auto}.order-tb .tooltip .prompt-01 .pc{min-height:235px}.order-tb .tooltip .prompt-02{position:absolute;z-index:1;width:220px;right:90px;top:-22px;padding:20px;display:none;color:#666;line-height:22px}.order-tb .tooltip .prompt-02 .pc{min-height:0}.order-tb .prompt-01{position:absolute;width:122px;border:1px solid #ddd;background:#fff;-webkit-box-shadow:0 0 2px 2px #eee;-moz-box-shadow:0 0 2px 2px #eee;box-shadow:0 0 2px 2px #eee;-webkit-border-radius:1px;-moz-border-radius:1px;border-radius:1px}.order-tb .prompt-01 .pc{background:#fff;padding:0;color:#333;text-align:left}.order-tb .prompt-01 .pc .close{position:absolute;top:15px;right:15px;width:17px;height:17px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/icon.png) 0 -151px;cursor:pointer}.order-tb .prompt-01 .p-arrow-left{right:-8px;top:25px;width:8px;height:16px;background-position:-7px 0}.order-tb .prompt-01 .p-arrow-right{left:-8px;top:25px;width:8px;height:16px;background-position:0 0}.order-tb .prompt-01 .p-arrow-top{left:25px;top:-8px;width:16px;height:8px;background-position:0 0}.order-tb .prompt-01 .p-arrow-bottom{left:25px;bottom:-7px;width:16px;height:8px;background-position:0 -7px}.order-tb .prompt-01 .p-tit{margin:-10px 0 0 -10px;height:35px;line-height:35px;padding:0 0 0 20px;font-weight:700;border-bottom:1px solid #e3e3e3}.order-tb .prompt-01 .logistics-cont{position:relative;margin-left:15px;max-height:410px;overflow-y:auto;padding-left:5px}.order-tb .prompt-01 .logistics-cont li{position:relative;overflow:visible;width:340px;padding:15px 0 0 15px;border-left:1px solid #e3e3e3}.order-tb .prompt-01 .logistics-cont .node-icon{display:block;position:absolute;top:21px;left:-4px;width:8px;height:8px;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) -17px -115px no-repeat;vertical-align:middle}.order-tb .prompt-01 .logistics-cont li.first{color:#e4393c}.order-tb .prompt-01 .logistics-cont li.first .node-icon{background-position:0 -115px}.order-tb .prompt-01 .wx-qrcode-tipbox{width:418px;height:100px;border-top:1px solid #eee;margin-left:-9px;margin-top:20px}.order-tb .prompt-01 .wx-qrcode-tipbox .tip-inner{width:283px;height:80px;padding:10px 20px 10px 115px;background:#f8f8f8;overflow:hidden}.order-tb .prompt-01 .wx-qrcode-tipbox .tip-img{float:left;display:inline;width:80px;height:80px;margin-left:-95px;margin-right:15px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/loading.gif) no-repeat center center}.order-tb .prompt-01 .wx-qrcode-tipbox .tip-img img{width:80px;height:80px}.order-tb .prompt-01 .wx-qrcode-tipbox .tip-cont{width:100%;height:80px;text-align:left}.order-tb .prompt-01 .wx-qrcode-tipbox .tip-title{font:700 16px/28px "寰蒋闆呴粦";margin-top:13px}.order-tb .prompt-01 .wx-qrcode-tipbox .tip-hint{margin-top:3px;font:12px/20px "瀹嬩綋";color:#666}.order-tb .prompt-02 .pc{color:#666}.order-tb .stage-cont{overflow:hidden}.order-tb .stage-cont .stage{padding:14px 0 14px 14px;line-height:18px;margin-top:-1px;border-top:1px solid #eee;color:#aaa}.order-tb .stage-cont .stage-finish{background:#fcfcfc}.order-tb .stage-cont .stage-stress{background:#f4f6f9}.order-tb .stage-cont li{float:left;text-align:center}.order-tb .stage-cont .fore1{width:486px;text-align:left}.order-tb .stage-cont .fore2,.order-tb .stage-cont .fore3{width:105px}.order-tb .stage-cont .fore4{width:115px}.order-tb .deal-state-cont{position:relative;z-index:10;width:98px;cursor:pointer}.order-tb .deal-state-cont .state-txt{position:relative;height:30px;line-height:30px;text-align:left;padding-left:20px;padding-right:12px;border:1px solid #f5f5f5}.order-tb .deal-state-cont .state-txt b{position:absolute;width:7px;height:4px;right:18px;top:13px;overflow:hidden;vertical-align:middle;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) -37px -207px no-repeat}.order-tb .deal-state-cont .state-list{position:absolute;left:0;top:30px;z-index:2;display:none;width:96px;background:#fff;border:1px solid #f5f5f5;border-top:0}.order-tb .deal-state-cont .state-list li{height:30px;line-height:30px;text-align:left}.order-tb .deal-state-cont .state-list li a{display:block;position:relative;color:#666;height:30px;line-height:30px;padding-left:20px}.order-tb .deal-state-cont .state-list li a:hover{background:#f5f5f5;color:#e4393c}.order-tb .deal-state-cont .state-list li a b{display:block;position:absolute;left:5px;top:10px;width:10px;height:7px;vertical-align:middle;overflow:hidden}.order-tb .deal-state-cont .state-list li a.curr{color:#e4393c}.order-tb .deal-state-cont .state-list li a.curr b{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) 0 -207px}.order-tb .deal-state-hover .state-txt{background:#fff;-webkit-box-shadow:0 0 10px rgba(0,0,0,.12);-moz-box-shadow:0 0 10px rgba(0,0,0,.12);box-shadow:0 0 10px rgba(0,0,0,.12)}.order-tb .deal-state-hover .state-txt b{background-position:-20px -207px}.order-tb .deal-state-hover .state-txt .blank{display:block;position:absolute;height:10px;width:96px;top:21px;left:0;background:#fff;z-index:3}.order-tb .deal-state-hover .state-list{display:block;-webkit-box-shadow:0 0 10px rgba(0,0,0,.12);-moz-box-shadow:0 0 10px rgba(0,0,0,.12);box-shadow:0 0 10px rgba(0,0,0,.12)}.order-tb .ordertime-cont{position:relative;float:left;z-index:10;width:138px;cursor:pointer}.order-tb .ordertime-cont .time-txt{position:relative;height:30px;line-height:30px;text-align:left;padding-left:20px;padding-right:12px;border:1px solid #f5f5f5}.order-tb .ordertime-cont .time-txt b{position:absolute;width:7px;height:4px;right:18px;top:13px;overflow:hidden;vertical-align:middle;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) -37px -207px no-repeat}.order-tb .ordertime-cont .time-list{position:absolute;left:0;top:30px;z-index:2;display:none;width:136px;background:#fff;border:1px solid #f5f5f5;border-top:0}.order-tb .ordertime-cont .time-list li{height:30px;line-height:30px;text-align:left}.order-tb .ordertime-cont .time-list li a{display:block;position:relative;color:#666;height:30px;line-height:30px;padding-left:20px}.order-tb .ordertime-cont .time-list li a:hover{background:#f5f5f5;color:#e4393c}.order-tb .ordertime-cont .time-list li a b{display:block;position:absolute;left:5px;top:10px;width:10px;height:7px;vertical-align:middle;overflow:hidden}.order-tb .ordertime-cont .time-list li a.curr{color:#e4393c}.order-tb .ordertime-cont .time-list li a.curr b{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) 0 -207px}.order-tb .ordertime-hover .time-txt{background:#fff;-webkit-box-shadow:0 0 10px rgba(0,0,0,.12);-moz-box-shadow:0 0 10px rgba(0,0,0,.12);box-shadow:0 0 10px rgba(0,0,0,.12)}.order-tb .ordertime-hover .time-txt b{background-position:-20px -207px}.order-tb .ordertime-hover .time-txt .blank{display:block;position:absolute;height:10px;width:136px;top:21px;left:0;background:#fff;z-index:3}.order-tb .ordertime-hover .time-list{display:block;-webkit-box-shadow:0 0 10px rgba(0,0,0,.12);-moz-box-shadow:0 0 10px rgba(0,0,0,.12);box-shadow:0 0 10px rgba(0,0,0,.12)}.order-tb .order-detail-txt{display:inline-block;*display:inline;*zoom:1;vertical-align:middle}.order-tb .promisejdint{display:inline-block;*display:inline;*zoom:1;width:61px;height:18px;vertical-align:middle;overflow:hidden;background:url(//misc.360buyimg.com/myjd/skin/2014/i/jdInt-icon.png) no-repeat;margin-left:5px}.order-tb .promisejdint:hover{text-decoration:none}.order-tb .ding-icon{display:inline-block;*display:inline;*zoom:1;width:39px;height:16px;vertical-align:middle;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/ding-icon.png) no-repeat;margin-left:5px}.order-tb .ding-icon:hover{text-decoration:none}.root61 .order-tb .number-col{width:590px}.root61 .order-tb .consignee-col{width:115px}.root61 .order-tb .amount-col,.root61 .order-tb .status-col{width:110px}.root61 .order-tb .goods-item{width:330px;margin-right:84px}.root61 .order-tb .goods-item .p-msg{width:240px}.root61 .order-tb .goods-repair{width:104px}.root61 .order-tb .goods-number{width:70px}.root61 .order-tb .stage-cont .fore1{width:681px}.root61 .order-tb .stage-cont .fore2{width:115px}.root61 .order-tb .stage-cont .fore3{width:110px}.root61 .order-tb .stage-cont .fore4{width:120px;margin-left:4px;_display:inline}.root61 .order-tb .tr-th .tr-operate{width:620px}div.ui-tips-skin1{border-color:#ddd;background:#fff;padding:0}div.ui-tips-skin1 .ui-tips-arrow{background:url(//misc.360buyimg.com/user/myjd-2015/css/i/tips-gray.png) no-repeat}div.ui-tips-skin1 .ui-tips-close{right:10px;top:10px;width:21px;height:21px;text-indent:-9999px;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/order-icon20150916.png) no-repeat -44px -55px}.o-related-goods{float:left}.o-related-goods li{float:left;width:100px;padding:0 7px;margin-right:26px}.o-related-goods .p-img{width:80px;height:80px;margin:0 auto 5px}.o-related-goods .p-img img{width:80px;height:80px}.o-related-goods .p-name{width:100%;height:22px;line-height:22px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}.o-related-goods .p-comment{width:100%;height:22px;line-height:22px;overflow:hidden}.o-related-goods .p-comment a{color:#005ea7}.o-related-goods .p-price{width:100%;height:22px;line-height:22px;overflow:hidden}.o-related-goods .p-price strong{color:#e4393c;font-family:verdana}.o-related-slider{position:relative;width:674px;height:151px;padding:30px 34px 12px}.o-related-slider .con-loading{padding-top:68px;text-align:center;background:url(//misc.360buyimg.com/user/myjd-2015/css/i/loading-jd.gif) no-repeat center 22px}.o-related-slider .slider-next,.o-related-slider .slider-prev{position:absolute;top:50%;width:34px;height:80px;margin-top:-40px;background:#f5f5f5;cursor:pointer}.o-related-slider .slider-next .sicon,.o-related-slider .slider-prev .sicon{position:absolute;left:10px;top:27px;width:14px;height:27px}.o-related-slider .slider-prev{left:0}.o-related-slider .slider-next{right:0}.o-related-slider .slider-next .sicon{background-position:-24px 0}.o-related-slider .slider-main{position:relative;width:100%;overflow:hidden}@media \0screen{.order-tb .operate .a-baitiao .tag{line-height:16px}}@media screen and (min-width:0 \0){.order-tb .operate .a-baitiao .tag{line-height:16px}}
        /* user-myjd-2015 ui-page.css Date:2015-09-15 16:01:30 */
        .ui-page{float:right;font-size:0}.next-disabled,.prev-disabled,.ui-pager-next,.ui-pager-prev{display:inline-block;*display:inline;*zoom:1;vertical-align:middle}.next-disabled b,.prev-disabled b,.ui-pager-next b,.ui-pager-prev b{display:inline-block;*display:inline;*zoom:1;width:7px;height:13px;overflow:hidden;background:url(//misc.360buyimg.com/user/myjd-2015/widget/ui-page/i/page-icon.png) no-repeat;vertical-align:middle}.prev-disabled b{background-position:0 0;margin-right:5px}.next-disabled b{background-position:-17px 0;margin-left:5px}.ui-pager-prev b{background-position:-34px 0;margin-right:5px}.ui-pager-next b{background-position:-51px 0;margin-left:5px}.ui-page-next{margin-left:3px}.ui-page-next i{margin:0 0 0 2px}.ui-page a{height:18px;line-height:18px;-webkit-border-radius:2px;-moz-border-radius:2px;border-radius:2px;display:inline-block;*display:inline;*zoom:1;background-color:#f7f7f7;background-image:-moz-linear-gradient(top,#f7f7f7,#f3f2f2);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#f7f7f7),color-stop(1,#f3f2f2));filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f7f7f7', endColorstr='#f3f2f2', GradientType='0');-ms-filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#f7f7f7', endColorstr='#f3f2f2');background-image:linear-gradient(to bottom,#f7f7f7 0,#f3f2f2 100%);font-size:12px;color:#333;padding:4px 1.2em;border:1px solid #ddd;margin-left:3px;vertical-align:middle}.ui-page .text{display:inline-block;*display:inline;*zoom:1;vertical-align:middle;color:#aaa;margin-right:20px}.ui-page a:hover{text-decoration:none;-webkit-box-shadow:1px 1px 2px rgba(0,0,0,.1);-moz-box-shadow:1px 1px 2px rgba(0,0,0,.1);box-shadow:1px 1px 2px rgba(0,0,0,.1);color:#e33b3d}.ui-page a.next-disabled,.ui-page a.prev-disabled{background:#fff;color:#ccc;cursor:default}.ui-page a.next-disabled:hover,.ui-page a.prev-disabled:hover{color:#ccc}.ui-page-total{margin:0 10px;font-size:14px}span.ui-page-skip{font-size:14px;height:18px;line-height:18px;vertical-align:middle}span.ui-page-skip em{font-weight:700;margin:0 3px}span.ui-page-skip .itxt{display:inline-block;*display:inline;*zoom:1;vertical-align:middle;width:28px;height:18px;line-height:18px;padding:5px 0;text-align:center;border:1px solid #ccc}.ui-page span{margin-left:3px;color:#666;font-size:12px}.ui-page span.next-disabled,.ui-page span.prev-disabled{color:#aaa}.ui-page span.next-disabled b,.ui-page span.prev-disabled b{display:none}.ui-page .current,.ui-page .ui-page-curr{color:#e33b3d;font-weight:700;border:0;cursor:default;background:#fff}.ui-page .ui-page-curr:hover{-webkit-box-shadow:0 0 0 rgba(0,0,0,0);-moz-box-shadow:0 0 0 rgba(0,0,0,0);box-shadow:0 0 0 rgba(0,0,0,0);box-shadow:none}.ui-page .ui-page-cancel{background:#fff;border-color:#ddd;color:#ccc;cursor:default}.ui-page .ui-page-cancel:hover{-webkit-box-shadow:0 0 0 rgba(0,0,0,0);-moz-box-shadow:0 0 0 rgba(0,0,0,0);box-shadow:0 0 0 rgba(0,0,0,0)}.ui-page .ui-page-cancel i{color:#ccc}.ui-page-small .ui-page-next,.ui-page-small .ui-page-prev,.ui-page-small a{font-size:12px;height:38px;line-height:38px}.ui-page-small .ui-page-skip,.ui-page-small .ui-page-total{font-size:12px}
        /* user-myjd-2015 order-goods-list.css Date:2015-09-15 16:01:30 */
        .goods-list ul{display:inline-block;display:block}.goods-list ul:after{content:".";display:block;height:0;clear:both;visibility:hidden}* html .goods-list ul{height:1%}*+html .goods-list ul{min-height:1%}.goods-list li{float:left;width:160px;padding:0 20px;height:251px;margin-bottom:20px}.goods-list .p-item{line-height:20px}.goods-list .p-name{height:40px;overflow:hidden;margin-bottom:5px}.goods-list .p-price{font-size:14px;font-family:verdana}.goods-list .p-price strong{color:#e4393c}.root61 .freqt-goods-list li{padding:0 50px}
        /* user-myjd-2015 ui-slidebar.css Date:2015-09-15 16:01:30 */
        .ui-slidebar{width:86px;margin-left:405px;position:fixed;right:0;bottom:150px;z-index:100}.ui-slidebar .jd-im{display:block;width:86px;height:80px;background:url(//misc.360buyimg.com/user/myjd-2015/widget/ui-slidebar/i/joygif.gif) no-repeat}.ui-slidebar .jd-im:hover{background:url(//misc.360buyimg.com/user/myjd-2015/widget/ui-slidebar/i/joygif_hover.gif) no-repeat}.ui-slidebar .dt{width:86px}.ui-slidebar .dd{float:right;width:42px}.ui-slidebar .dd li{position:relative;height:42px}.ui-slidebar .dd .backtop,.ui-slidebar .dd .feedback,.ui-slidebar .dd .service{display:block;width:42px;height:42px;background:url(//misc.360buyimg.com/user/myjd-2015/widget/ui-slidebar/i/slidebar-icon-new.png) no-repeat}.ui-slidebar .dd .backtop:hover,.ui-slidebar .dd .feedback:hover,.ui-slidebar .dd .service:hover{background-color:#c81623}.ui-slidebar .dd .service{background-position:0 -1px;background-color:#ccc}.ui-slidebar .dd .feedback{border-top:1px dotted #fff;background-position:0 -43px;background-color:#ccc}.ui-slidebar .dd .feedback:hover{background-position:-52px -43px}.ui-slidebar .dd .backtop{border-top:1px dotted #fff;background-position:0 -86px;background-color:#999}.ui-slidebar .dd .service-cont{display:none;position:absolute;width:90px;padding:15px;right:42px;top:-90px;background:#fbfbfb;border:1px solid #f5f5f5;-webkit-box-shadow:0 0 10px rgba(0,0,0,.12);-moz-box-shadow:0 0 10px rgba(0,0,0,.12);box-shadow:0 0 10px rgba(0,0,0,.12)}.ui-slidebar .dd .service-cont a{display:block;line-height:23px}.ui-slidebar .dd .service-cont a:hover{-webkit-transform:translateX(5px);-moz-transform:translateX(5px);transform:translateX(5px)}.ui-slidebar .dd .hover .service-txt b{display:block;position:absolute;top:17px;left:-1px;width:0;height:0;border-style:dashed dashed dashed solid;border-width:4px;border-color:transparent transparent transparent #fff;overflow:hidden;zoom:1;font-size:0;z-index:5}.ui-slidebar .dd .hover .service-cont{display:block}.ui-slidebar .dd .hover .service{background-color:#c81623}.root61 .ui-slidebar{margin-left:560px}



    </style>
</head>
<body>
<header>
    <nav class="top_nav">
        <ul class="tn_left">
            <li>快捷导航1</li><!--
			 --><li>快捷导航2</li><!--
			 --><li>快捷导航3</li>
        </ul>
    </nav>
    <div class="logo"><h4>地球表面最好的农贸商城</h4><h1>农资联盟 <span>网上商城</span></h1></div>
</header>
<section class="main">

    <section class="container">
        <div class="mod-main mod-comm lefta-box" id="order02">
            <div class="mt">
                <ul class="extra-l">
                    <li class="fore1"><a href="<c:url value='/Order_myOrder.do?status=-1'/>" class="txt curr">全部订单</a></li>
                    <li><a href="<c:url value='/Order_myOrder.do?status=1'/>" clstag="click|keycount|orderinfo|waitPay" class="txt">待付款</a></li>
                    <li><a href="<c:url value='/Order_myOrder.do?status=3'/>" id="ordertoReceive" clstag="click|keycount|orderinfo|waitReceive" class="txt">待收货</a></li>
                </ul>
                <div class="extra-r">
                    <div class="search">
                    <form action ="<c:url value='/Order_Criteria.do'/>" id = "myform"  method="post">
                        <input id="ip_keyword" type="text" class="itxt" value="" name="criteria" placeholder="商品名称/商品编号/订单号" style="color: rgb(204, 204, 204);">
                        <a href="javascript:;" id="search_key" class="search-btn" >搜索<b></b></a>
                        <a href="" clstag="click|keycount|orderlist|gaoji" class="default-btn high-search">高级<b></b></a>
                        </form>
                    </div>
                </div>
            </div>

            <div class="mc">



                <table class="td-void order-tb">
                    <colgroup>
                        <col class="number-col">
                        <col class="consignee-col">
                        <col class="amount-col">
                        <col class="status-col">
                        <col class="operate-col">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>

                            <div class="order-detail-txt ac">订单详情</div>
                        </th>
                        <th>收货人</th>
                        <th>总计</th>
                        <th>
                            <div class="deal-state-cont" id="orderState">
                                <div class="state-txt">全部状态<b></b><span class="blank"></span></div>
                                <div class="state-list">
                                    <ul>
                                        <li value="4096">
                                            <a href="#none" clstag="click|keycount|orderlist|quanbuzhuangtai" class="curr"><b></b>全部状态</a>
                                        </li>
                                        <li value="1">
                                            <a href="#none" clstag="click|keycount|orderlist|dengdaifukuan"><b></b>等待付款</a>
                                        </li>
                                        <li value="128" clstag="click|keycount|orderlist|dengdaishouhuo">
                                            <a href="#none"><b></b>等待收货</a>
                                        </li>
                                        <li value="1024">
                                            <a href="#none" clstag="click|keycount|orderlist|yiwancheng"><b></b>已完成</a>
                                        </li>
                                        <li value="-1">
                                            <a href="#none" clstag="click|keycount|orderlist|yiquxiao"><b></b>已取消</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </th>
                        <th>操作</th>
                    </tr>

                    </thead>
                    <c:forEach items="${pb.beanList}" var="order">
                    <tbody id="tb-7768683403">
                    <tr class="sep-row"><td colspan="5"></td></tr>

                    <tr class="tr-th">
                        <td colspan="5">
                            <span class="gap"></span>
                            <span class="dealtime" title="2014-12-22 23:57:07">${order.date}</span>
                            <input type="hidden" id="datasubmit-7768683403" value="${order.date}">

                <span class="number">订单号：<a name="orderIdLinks" id="idUrl7768683403" target="_blank" href="Order_load.do?id=${order.id }" clstag="click|keycount|orderinfo|order_num">${order.orderID }</a>



                </span>

                            <div class="tr-operate">
                                            <span class="order-shop">
                            <a href="#"  class="shop-txt venderName52150" clstag="click|keycount|orderlist|52150">趣分期旗舰店</a>
                            <a class="btn-im venderChat52150" href="#"  title="联系卖家" clstag="click|keycount|orderinfo|chatim"></a>
                        </span>

                        <span class="tel">
                            <i class="tel-icon venderTel52150"></i>400-610-1360
                        </span>


                                <a href="#none" clstag="click|keycount|orderlist|dingdanshanchu" class="order-del" _orderid="7768683403" _passkey="672F5AE5CF8E6F91341C6EE47358A872" title="删除" style="display: none;"></a>

                            </div>
                        </td>
                    </tr>





                    <tr class="tr-bd" id="track7768683403" oty="22,1,70">
                        <td>
                            <div class="goods-item p-1180323838">
                                <div class="p-img">
                                <!-- 这里填对应的商品详情 -->
                                    <a href="#" clstag="click|keycount|orderinfo|order_product" target="_blank">
                                        <img class="" src="<c:url value='/${order.goods.picture }'/>"  data-lazy-img="done" width="60" height="60"/>

                                    </a>
                                </div>
                               
                                <div class="p-msg">
                                 <!-- 这里填对应的商品详情 -->
                                    <div class="p-name"><a href="#" class="a-link" clstag="click|keycount|orderinfo|order_product" target="_blank" >${order.goods.name }</a></div>
                                    
                                    <div class="p-extra">
                                        <ul class="o-info">
                                            <li><span class="o-match J-o-match" data-sku="1180323838"><i></i><em>${order.color.colorname}</em></span></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="goods-number">
                                x1
                            </div>

                        </td>

                        <td rowspan="1">
                            <div class="consignee tooltip">
                                <span class="txt">${order.userinfo.username }</span><b></b>
                            </div>
                        </td>
                        <td rowspan="1">
                            <div class="amount">
                                <strong>¥${order.payPrice }</strong> <br>
                                <span class="ftx-13">在线支付</span><br>
                            </div>
                        </td>
                        <td rowspan="1">
                            <div class="status">
                    <span class="order-status ftx-03">

            

                    </span>

                                <a href="Order_load.do?id=${order.orderID }" target="_blank">订单详情</a>
                            </div>
                        </td>
                        <td rowspan="1" id="operate7768683403">
                            <div class="operate">
                                <div id="pay-button-7768683403" _baina="0"></div>
		<c:if test="${order.status eq 1}">
				 <a href="Order_paymentPre.do?&id=${order.orderID }&btn=pay" class="btn-again" target="_blank" clstag="click|keycount|orderlist|buy"><b></b>立即支付</a><br>
				 <a href="Order_load.do?id=${order.orderID }&btn=cancel" class="btn-again" target="_blank" clstag="click|keycount|orderlist|buy"><b></b>取消订单</a><br>				
		</c:if>
		<c:if test="${order.status eq 2}">
				 <span class="span-style"style="color: red;" >	
				 等待发货	
				 </span>		
		</c:if>
		<c:if test="${order.status eq 3}">
				 <a href="Order_load.do?id=${order.orderID }&btn=confirm" class="btn-again" target="_blank" clstag="click|keycount|orderlist|buy"><b></b>确认收货</a><br>
		</c:if>
		<c:if test="${order.status eq 4}">
				 <span class="span-style"style="color: red;" >	
				 交易成功	
				 </span>		
		</c:if>
		<c:if test="${order.status eq 5}">
				 <span class="span-style"style="color: red;" >	
				 已取消	
				 </span>		
		</c:if>
			</td>
		</tr>
                            </div>
                        </td>
                    </tr>
				</tbody>
                    </c:forEach>
               </table>
            </div>
            <%@include file="/jsp/pager/pager.jsp" %>
        </div>


    </section>
</section>
<footer>
    <h4>趣分期网上购物商城</h4>
    <p>&copy;copyright EarlTechnology 2015 </p>
</footer>
<script src="js/index.js"></script>
<script src="js/goodslist.js"></script>
</body>
<script>
console.log($("#search_key"));
$("#search_key").bind("click",function(){
	console.log($("#ip_keyword").val() == "");
	if($("#ip_keyword").val() == ""){
		alert("请输入查询关键字！")
	}else{
		$("#myform").submit();
	}
	
	console.log("ninico")
	

});


</script>	
</html>