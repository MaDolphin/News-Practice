<%--
  Created by IntelliJ IDEA.
  User: xfcq
  Date: 2016/10/12
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
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
                <li><a href="gongsilist.jsp">公司信息</a></li>
                <li><a href="#">岗位信息</a></li>

            </ul>
        </div>
        <div class="news_list_right">
            <div class="news_list_title">
                <h2>新闻动态</h2>
                <ul>
                    <li><a href="news_detail.html">【 用户篇】“有为屌丝”在路上</a><span>2014-06-01</span> </li>
                    <li><a href="news_detail.html">【有奖活动】给父亲的三行书信</a><span>2014-06-01</span></li>
                    <li><a href="news_detail.html">《程序猿，请晒出你的童年》活动获奖公告</a><span>2014-05-30</span></li>
                    <li><a href="news_detail.html" title="aa">破茧成蝶——美女程序员的蜕变史</a><span>2014-05-28</span></li>
                </ul>
                <div class="page">
                    <a href="#">首页</a>
                    <a href="#">上一页</a>

                    <a href="#">下一页</a>
                    <a href="#">末页</a>
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

