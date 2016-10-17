<%--
  Created by IntelliJ IDEA.
  User: xfcq
  Date: 2016/10/12
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <title>就业信息网</title>
    <link href="css/main1.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="js/setHomeSetFav.js"></script>
    <script type="text/javascript" src="js/myfocus-2.0.1.min.js" charset="utf-8"></script><!--引入myFocus库-->
    <script type="text/javascript">
        myFocus.set({
            id:'boxID',//焦点图盒子ID
            pattern:'mF_fancy',//风格应用的名称
            time:3,//切换时间间隔(秒)
            trigger:'click',//触发切换模式:'click'(点击)/'mouseover'(悬停)
            width:1000,//设置图片区域宽度(像素)
            height:310,//设置图片区域高度(像素)
            txtHeight:'default'//文字层高度设置(像素),'default'为默认高度，0为隐藏
        });
    </script>
</head>

<body>
<div class="header">
    <div class="header_content">
        <ul>
            <li><a href="#">联系我们</a></li>
            <li><a href="#">加入收藏</a></li>
            <li><a href="#">设为首页</a></li>
        </ul>
    </div>
</div>
<div class="wrap">
    <div class="logo">
        <div class="logo_pic"></div>
        <div class="logo_content">
            <img src="images/tel.jpg" />
            <span class="tel">24小时服务热线:123-456-7890</span>

        </div>
    </div>
    <div class="nav">
        <div class="nav_left"></div>
        <div class="nav_middle">
            <ul>
                <li><a href="index.html">首页</a></li>
                <li><a href="news.jsp">新闻动态</a></li>
                <li><a href="gongsilist.jsp">公司信息</a></li>
                <li><a href="gangweilist.jsp">岗位信息</a></li>
                <li><a href="login.jsp">管理中心</a></li>
            </ul>
        </div>
        <div class="nav_right"></div>
    </div>
    <div class="ad">
        <div id="boxID"><!--焦点图盒子-->
            <div class="loading"><img src="images/loading.gif" alt="请稍候..." /></div>
            <!--载入画面(可删除)-->
            <div class="pic"><!--内容列表(li数目可随意增减)-->
                <ul>
                    <li><a href="#"><img src="images/ad2.jpg" thumb="" alt="" text="详细描述2" /></a></li>
                    <li><a href="#"><img src="images/ad3.jpg" thumb="" alt="" text="详细描述3" /></a></li>
                    <li><a href="#"><img src="images/ad4.jpg" thumb="" alt="" text="详细描述4" /></a></li>
                    <li><a href="#"><img src="images/ad3.jpg" thumb="" alt="" text="详细描述5" /></a></li>
                </ul>
            </div>
        </div>
    </div>
    <!--ad结束-->
    <div class="news_list_wrap">
        <div class="news_list_left">
            <div class="left_title">
                <h2>新闻动态</h2>
            </div>
            <ul>

                <li><a href="#">新闻动态</a></li>
                <li><a href="#">公司信息</a></li>
                <li><a href="#">岗位信息</a></li>

            </ul>
        </div>
        <div class="news_list_right">
            <div class="news_list_title">
                <h2>新闻动态</h2>
            </div>
            <h1>【 用户篇】“有为屌丝”在路上</h1>
            <p class="news_info">2016-03-02　来源:张三丰</p>
            <div class="news_content">最近一段时间，里皮回归恒大的传闻甚嚣尘上，据多家国外媒体报道，里皮将以天价年薪回归恒大队。如果传闻属实的话，现在主帅斯科拉里就将在赛季结束后另谋去处。据以色列媒体报道，斯科拉里已经接到了上海球队的邀请，这家俱乐部财力雄厚，有能力为斯科拉里提供有竞争力的薪水。

                以色列媒体写道，斯科拉里下赛季很有可能和一家上海俱乐部签约，而斯科拉里本人则强烈建议潜在的新东家签下富力队以色列外援扎哈维。
                扎哈维以800万美元的身价加盟广州富力队，本赛季发挥非常出色。扎哈维和富力队的合同将在2017年3月份到期。虽然外援之间的转会在中超联赛并不多见，但是斯科拉里告诉这家上海俱乐部一定要拼尽全力签下扎哈维。
                昨天有媒体爆料上海上港队报价3000万欧求购扎哈维，结合这两条新闻判断对斯科拉里有意的很有可能是上海上港队。上港队财力雄厚，完全有能力为斯科拉里提供一份高薪。而对于斯科拉里而言，如果留在中国联赛能够继续拿到高薪，绝对是一个很不错的选择。
            </div>


            <div class="page">
            </div>

        </div>
    </div>
</div>
<div class="footer">
    <div class="copyright">
        <ul>
            <li><a href="http://www.sina.com.cn">新浪</a></li>
            <li><a href="http://www.qq.com.cn">腾讯</a></li>
            <li><a href="http://www.baidu.com.cn">百度</a></li>
            <li><a href="https://www.duba.com">毒霸</a></li>
            <li><a href="http://www.163.com/">网易</a></li>
        </ul>
    </div>
</div>
</body>
</html>
