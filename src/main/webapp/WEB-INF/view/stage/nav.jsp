<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script type="text/javascript" src="/js/myfocus-2.0.1.min.js" charset="utf-8"></script><!--引入myFocus库-->
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

<div  class="logo">
    <div class="logo_left"></div>
    <div class="logo_right">
        <img src="/images/tel.jpg" width="28" height="28" />
        24小时服务热线：<span class="tel">123-456-7890</span>
    </div>
</div>
<!--logo结束-->

<div class="nav">
    <div  class="nav_left"></div>
    <div class="nav_mid">
        <div class="nav_mid_left">
            <ul>
                <li><a href="/news/stageIndex">首页</a></li>
                <li><a href="/news/news_list?page=1&count=10">新闻动态</a></li>
                <li><a href="/company/company_list?page=1&count=10">最新公司</a></li>
                <li><a href="/news/post_list?page=1&count=10">最新岗位</a></li>
                <li><a href="/news/about">关于我们</a></li>
            </ul>
        </div>
        <!--nav_mid_left结束-->
        <div class="nav_mid_right"></div>
        <!--nav_mid_right结束-->
    </div>
    <!--导航主体nav_mid结束-->
    <div class="nav_right"></div>
</div>
<!--nav结束-->

<div class="ad">
    <div id="boxID"><!--焦点图盒子-->
        <%--<div class="loading"><img src="/images/loading.gif" alt="请稍候..." /></div>--%>
        <!--载入画面(可删除)-->
        <div class="pic"><!--内容列表(li数目可随意增减)-->
            <ul>
                <li><a href="#"><img src="/images/ad2.jpg" thumb="" alt="" text="详细描述2" /></a></li>
                <li><a href="#"><img src="/images/ad3.jpg" thumb="" alt="" text="详细描述3" /></a></li>
                <li><a href="#"><img src="/images/ad4.jpg" thumb="" alt="" text="详细描述4" /></a></li>
                <li><a href="#"><img src="/images/ad3.jpg" thumb="" alt="" text="详细描述5" /></a></li>
            </ul>
        </div>
    </div>
</div>
<!--ad结束-->
