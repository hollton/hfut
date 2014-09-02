<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Keywords" content="合肥工业大学, HeFei University of Technology">
<meta name="DEscription" content="安徽省合肥工业大学,HeFei University of Technology,教育部直属的全国重点大学,国家211工程重点建设高校">
<meta name="Author" content="合肥工业大学HeFei University of Technology">
<meta name="Robots" content="all">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>合肥工业大学(HeFei University of Technology)</title>

<link href="html/css/nivo-slider.css" rel="stylesheet" type="text/css"/>
<link href="html/css/wholestyle.css" rel="stylesheet" type="text/css"/>
<link href="html/css/second.css" rel="stylesheet" type="text/css" />
<link href="html/css/switch.css" rel="stylesheet" type="text/css"/>
<link rel="icon" href="html/images/favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="html/images/favicon.ico"  type="image/x-icon"/>

<script src="html/js/jquery-1.6.2.min.js" type="text/javascript"></script>
<script type="text/javascript" src="html/js/jquery.easing.js"></script>
<script type="text/javascript" src="html/js/switch.js"></script>
<script type="text/javascript" src="html/js/tianqi.js"></script>
<script type="text/javascript">//<![CDATA[
function cjMenu(ulElementId,speed){$("#"+ulElementId).children("li:has(ul)").hover(function(){var ulnode=$(this);timeoutid=setTimeout(function(){ulnode.children("ul").slideDown(speed);},100);},function(){clearTimeout(timeoutid);$(this).children("ul").hide(300);});$("#"+ulElementId).find("li>ul>li>a").hover(function(){$(this).animate({paddingLeft:"+=0px"},speed);},function(){$(this).animate({paddingLeft:"-=0px"},speed);});}
//]]></script>
<script type="text/javascript" src="html/js/jquery.nivo.slider.pack.js "></script>

<script>
var isIE6=!-[1,]&&!window.XMLHttpRequest;
if(isIE6){window.location="html/ie6.html";}
else;
</script>

<script> 
  function time(){
   var Jetaimeyazheng ="2013.5.12";
    t_div = document.getElementById('showtime');
   var now=new Date()
   t_div.innerHTML = now.getFullYear()+"年"+(now.getMonth()+1)+"月"+now.getDate()+"日";
   setTimeout(time,1000);
  }
</script>


<script>
window.onload=function ()
{

	doAjaxCall('html/weather.txt');
	var oDiv1=document.getElementById('icon_w');

	var oDiv2=document.getElementById('tq');

	var oDiv3=document.getElementById('icon_c');

	var oDiv4=document.getElementById('tq1');

	var oDiv5=document.getElementById('tqzd');

	var timer=null;

	oDiv1.onmouseover=function ()

	{
		clearTimeout(timer);

		oDiv2.style.display='block';

		oDiv5.style.display='block';

		oDiv1.style.color='#C60B02';

	};

	oDiv2.onmouseover=oDiv2.onmouseout=oDiv1.onmouseout=function ()

	{

		timer=setTimeout(function (){

			oDiv2.style.display='none';

			oDiv5.style.display='none';

			oDiv1.style.color='#fff';

		}, 000);

	};

	var timer1=null;

	oDiv4.onmouseover=oDiv3.onmouseover=function ()

	{
		clearTimeout(timer1);

		oDiv4.style.display='block';

		oDiv3.style.color='#C60B02';

	};

	oDiv4.onmouseout=oDiv3.onmouseout=function ()

	{
		timer1=setTimeout(function (){

			oDiv4.style.display='none';

			oDiv3.style.color='#fff';

		}, 200);

	};

	time();

};
</script>

</head>
<body>
<div id="bigcontainer">
<div id="head">
<div class="top">
    <div class="head_img">
    <img alt="" src="html/images/hfut_03.png" style="float:left; margin-top:6px">
    <img alt="" src="html/images/hfut_03.jpg" style="float:right;">
    </div>
</div></div>

<div id="nav">
<script type="text/javascript">$(function(){cjMenu("ulnav",100);});</script>
      <script type="text/javascript">$(function(){cjMenu("san",100);});</script>
<div class="top">
<ul id="ulnav">
<div id="index"><li><a href="index.html" class="zero"></a></li></div>
<li><a href="http://news.hfut.edu.cn/" class="aone" target="_blank"></a></li>
<li><a href="html/xxgk.html" class="atwo"></a>
    <ul>
        <li><a href="html/xxgk.html">工大简介</a></li>
        <li><a href="html/xrld.html">现任领导</a></li>
        <li><a href="html/lrld.html">历任领导</a></li>
        <li><a href="html/vis.html" style="border-bottom:none">VIS系统</a></li>
    </ul>
</li>
<li><a href="http://xc.hfut.edu.cn" class="athree" target="_blank"></a></li>
<li><a href="html/jgsz.html" class="afour"></a></li>
<li><a class="afive"></a>
            <ul id="san">
        <li><a href="http://jwb.hfut.edu.cn/jwb/" target="_blank">本科教育</a></li>
        <li><a href="http://pyb.hfut.edu.cn/" target="_blank">研究生教育</a></li>
        <li><a href="http://cjy.hfut.edu.cn/" target="_blank">继续教育</a></li>
        <li><a href="http://international.hfut.edu.cn/" target="_blank" style="border-bottom:none">国际教育</a>
        	<ul>
            	<li><a href="http://www.admissions.cn/hfut/index.html" target="_blank">来华留学</a></li>
            	<li><a href="http://www.hfutedu.com/" target="_blank">出国留学</a></li>
            </ul>
        </li>
    </ul>
</li>
<li><a href="http://kyy.hfut.edu.cn/" class="akxyj" target="_blank"></a></li>
<li><a class="azsjy"></a>
    <ul>
        <li><a href="http://bkzs.hfut.edu.cn/" target="_blank">本科招生</a></li>
        <li><a href="http://yjszs.hfut.edu.cn/" target="_blank">研究生招生</a></li>
		<li><a href="http://zyxw.hfut.edu.cn/" target="_blank">在职硕士招生</a></li>
        <li><a href="http://cjy.hfut.edu.cn/" target="_blank">继续教育招生</a></li>
        <li><a href="http://gdjy.hfut.edu.cn/" target="_blank" style="border-bottom:none">就业指导服务</a></li>
    </ul>
</li>
</ul>
<div id="icon_c"></div>
<div id="showtime"></div>
<div id="tq">
	<div id="newweather">
        <div id="todaybox">
                <div id="todaypic"></div>
                <div id="todayweek"></div>
                <div style="clear:both;"></div>
                <div id="todayweather"></div>
                <div id="todaytem"></div>
        </div>
        <div id="tomorrowbox1">
                <div id="tomorrowweek"></div>
                <div id="tomorrowweather"></div>
                <div id="tomorrowtem"></div>
        </div>
        <div id="tomorrowbox2">
                <div id="tomorrowweek2"></div>
                <div id="tomorrowweather2"></div>
                <div id="tomorrowtem2"></div>
        </div>
        <div id="tomorrowbox3">
                <div id="tomorrowweek3"></div>
                <div id="tomorrowweather3"></div>
                <div id="tomorrowtem3"></div>
        </div>
    </div>
</div>

<div id="icon_w"></div>
<div id="weather"></div>
<div id="weathert"></div>
<div id="tq1"><table cellpadding="0" cellspacing="0" id="1">
  <tr>
    <td>
<!--[if IE]>
<style>
#cal #top{padding-top:4px}
#cal #top input{width:65px}
#cal #fd{width:170px}
</style>
<![endif]-->

      <div id="cal">
        <div id="top">公元&nbsp;
          <select>
          </select>
          &nbsp;年&nbsp;
          <select>
          </select>
          &nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;农历<span></span>年&nbsp;[&nbsp;<span></span>年&nbsp;]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="button" value="回到今天" title="点击后跳转回今天" style="padding:0px;display:none;">
        </div>
        <ul id="wk">
          <li>一</li>
          <li>二</li>
          <li>三</li>
          <li>四</li>
          <li>五</li>
          <li><b>六</b></li>
          <li><b>日</b></li>
        </ul>
        <div id="cm"></div>
      </div></td>
  </tr>
</table>

</div>
</div>
</div>

<div id="bigbox">
<div id="middle">
<div id="mid_left">
                <div id="bannercontainer">
                    <div id="wrapper">
                        <div id="slider-wrapper">
                            <div id="slider" class="nivoSlider">
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto1.jpg" alt=""/>
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto2.jpg" alt=""/>
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto3.jpg" alt=""/>
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto4.jpg" alt=""/>
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto5.jpg" alt=""/>
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto6.jpg" alt=""/>
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto7.jpg" alt=""/>
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto8.jpg" alt=""/>
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto9.jpg" alt=""/>
                                <img src="http://map.hfut.edu.cn/images/photos/hfutphoto10.jpg" alt=""/>
                            </div>
                        </div>
                    </div>  
                </div>
                <script type="text/javascript">var total=$('#slider img').length;var rand=Math.floor(Math.random()*total);$(window).load(function(){$('#slider').nivoSlider({startSlide:rand,directionNav:false,controlNav:false,effect:'random',animSpeed:800,pauseTime:8000});});</script>
<div id="news"> 
<div id="fwpt">
<div class="fwpt-top"></div><div class="bgtext">专题栏目</div>
<ul>
<li><a href="http://xxgk.hfut.edu.cn/" target="_blank">信息公开</a></li>
<li><a href="http://jpkc.hfut.edu.cn/" target="_blank">精品课程</a></li>
<li><a href="http://news.hfut.edu.cn/index.php?m=content&c=index&a=lists&catid=53" target="_blank">学风建设</a></li>
<li><a href="http://xnjs.hfut.edu.cn/" target="_blank">效能建设</a></li>
<li><a href="http://news.hfut.edu.cn/list-111-1.html" target="_blank">群众路线</a></li>
<li><a href="http://jwbjxb.hfut.edu.cn/achievements/" target="_blank">教学成果展示</a></li>
</ul>
</div>

         <div id="jdxw">
         	<div class="jdxw_top">焦点新闻</div>
            <div id="slide" class="slide_wrap">
              <ul class="slide_imglist">
                <li><a title="<{$image_0_title}>" href="<{$image_0_url}>" target="_blank"><img src="<{$image_0_image}>" alt="<{$image_0_title}>"></a></li>
                <li><a title="<{$image_1_title}>" href="<{$image_1_url}>" target="_blank"><img src="<{$image_1_image}>" alt="<{$image_1_title}>"></a></li>
                <li><a title="<{$image_2_title}>" href="<{$image_2_url}>" target="_blank"><img src="<{$image_2_image}>" alt="<{$image_2_title}>"></a></li>
                <li><a title="<{$image_3_title}>" href="<{$image_3_url}>" target="_blank"><img src="<{$image_3_image}>" alt="<{$image_3_title}>"></a></li>
                <li><a title="<{$image_4_title}>" href="<{$image_4_url}>" target="_blank"><img src="<{$image_4_image}>" alt="<{$image_4_title}>"></a></li>
              </ul>
              <div class="slide_title">
                <h3><a href="#" target="_blank"></a></h3>
                <dl class="slide_num"></dl>
                <em></em>
              </div>
            </div>
            
            <script type="text/javascript">
            $('#slide').UISlide();
            </script>
          </div>

<div id="xyxw">
<div class="xyxw_top"><span class="text"></span><span><a href="http://news.hfut.edu.cn/" target="_blank">更多>></a></span></div><div class="bgtext bgtext1">工大新闻 | NEWS OF HFUT</div>
<ul>
<li><img class="tr" src="html/images/tr.png"/><a href="<{$news_0_url}>" target="_blank" title="<{$news_0_title}>"><{$news_0_title1}></a><span class="newstime"><{$news_0_date}></span></li>
<li><img class="tr" src="html/images/tr.png"/><a href="<{$news_1_url}>" target="_blank" title="<{$news_1_title}>"><{$news_1_title1}></a><span class="newstime"><{$news_1_date}></span></li>
<li><img class="tr" src="html/images/tr.png"/><a href="<{$news_2_url}>" target="_blank" title="<{$news_2_title}>"><{$news_2_title1}></a><span class="newstime"><{$news_2_date}></span></li>
<li><img class="tr" src="html/images/tr.png"/><a href="<{$news_3_url}>" target="_blank" title="<{$news_3_title}>"><{$news_3_title1}></a><span class="newstime"><{$news_3_date}></span></li>
<li><img class="tr" src="html/images/tr.png"/><a href="<{$news_4_url}>" target="_blank" title="<{$news_4_title}>"><{$news_4_title1}></a><span class="newstime"><{$news_4_date}></span></li>
<li><img class="tr" src="html/images/tr.png"/><a href="<{$news_5_url}>" target="_blank" title="<{$news_5_title}>"><{$news_5_title1}></a><span class="newstime"><{$news_5_date}></span></li>
<li><img class="tr" src="html/images/tr.png"/><a href="<{$news_6_url}>" target="_blank" title="<{$news_6_title}>"><{$news_6_title1}></a><span class="newstime"><{$news_6_date}></span></li>
</ul>
</div>
<div class="dotted1"></div> 
<div id="tzgg">
<div class="tzgg_top"><span class="text"></span><a href="http://news.hfut.edu.cn/list-2-1.html" target="_blank">更多>></a></div><div class="bgtext bgtext2">通知公告 | NOTICE</div>
<ul>
<li><a href="<{$notice_0_url}>
"title="<{$notice_0_title}>" target="_blank"><{$notice_0_title1}></a><span class="newsdate"><{$notice_0_date}>&nbsp;</span></li>

<li><a href="<{$notice_1_url}>
"title="<{$notice_1_title}>" target="_blank"><{$notice_1_title1}></a><span class="newsdate"><{$notice_1_date}>&nbsp;</span></li>

<li><a href="<{$notice_2_url}>
"title="<{$notice_2_title}>" target="_blank"><{$notice_2_title1}></a><span class="newsdate"><{$notice_2_date}>&nbsp;</span></li>

<li><a href="<{$notice_3_url}>
"title="<{$notice_3_title}>" target="_blank"><{$notice_3_title1}></a><span class="newsdate"><{$notice_3_date}>&nbsp;</span></li>

<li><a href="<{$notice_4_url}>
"title="<{$notice_4_title}>" target="_blank"><{$notice_4_title1}></a><span class="newsdate"><{$notice_4_date}>&nbsp;</span></li>
</ul>
</div>
<div id="bgjz">
<div class="bgjz_top"><span class="text"></span><a href="http://news.hfut.edu.cn/html/bgjz/" target="_blank">更多>></a></div><div class="bgtext bgtext2">报告讲座 | LECTURE</div>
<ul>
<li><a href="<{$baogao_0_url}>
"title="<{$baogao_0_title}>" target="_blank"><{$baogao_0_title1}></a><span class="newsdate"><{$baogao_0_date}>&nbsp;</span></li>

<li><a href="<{$baogao_1_url}>
"title="<{$baogao_1_title}>" target="_blank"><{$baogao_1_title1}></a><span class="newsdate"><{$baogao_1_date}>&nbsp;</span></li>

<li><a href="<{$baogao_2_url}>
"title="<{$baogao_2_title}>" target="_blank"><{$baogao_2_title1}></a><span class="newsdate"><{$baogao_2_date}>&nbsp;</span></li>

<li><a href="<{$baogao_3_url}>
"title="<{$baogao_3_title}>" target="_blank"><{$baogao_3_title1}></a><span class="newsdate"><{$baogao_3_date}>&nbsp;</span></li>

<li><a href="<{$baogao_4_url}>
"title="<{$baogao_4_title}>" target="_blank"><{$baogao_4_title1}></a><span class="newsdate"><{$baogao_4_date}>&nbsp;</span></li>
</ul>
</div>

<div id="zbcg">
<div class="zbcg_top"><span class="text"></span><a href="http://news.hfut.edu.cn/html/zbxx/" target="_blank">更多>></a></div><div class="bgtext bgtext2">招标采购 | BIDDING</div>
<ul>
<li><a href="<{$zhaobiao_0_url}>
"title="<{$zhaobiao_0_title}>" target="_blank"><{$zhaobiao_0_title1}></a><span class="newsdate"><{$zhaobiao_0_date}>&nbsp;</span></li>

<li><a href="<{$zhaobiao_1_url}>
"title="<{$zhaobiao_1_title}>" target="_blank"><{$zhaobiao_1_title1}></a><span class="newsdate"><{$zhaobiao_1_date}>&nbsp;</span></li>

<li><a href="<{$zhaobiao_2_url}>
"title="<{$zhaobiao_2_title}>" target="_blank"><{$zhaobiao_2_title1}></a><span class="newsdate"><{$zhaobiao_2_date}>&nbsp;</span></li>

<li><a href="<{$zhaobiao_3_url}>
"title="<{$zhaobiao_3_title}>" target="_blank"><{$zhaobiao_3_title1}></a><span class="newsdate"><{$zhaobiao_3_date}>&nbsp;</span></li>

<li><a href="<{$zhaobiao_4_url}>
"title="<{$zhaobiao_4_title}>" target="_blank"><{$zhaobiao_4_title1}></a><span class="newsdate"><{$zhaobiao_4_date}>&nbsp;</span></li>
</ul>
</div>
</div>              
</div>

<div id="mid_right">
          <div id="mainlinksA">
          <a title="一周会议" href="http://news.hfut.edu.cn/index.php?m=content&c=index&a=mrbs" target="_blank"></a>
          </div>
          <div class="bgtext bgtext3">一周会议</div>

          <div id="mainlinksB">
          <a title="校园地图" href="http://map.hfut.edu.cn" target="_blank"></a>
          </div>
          <div class="bgtext bgtext4">校园地图</div>

          <div id="mainlinksC">
          <a title="信息门户" href="http://my.hfut.edu.cn/" target="_blank"></a>
          </div>
          <div class="bgtext bgtext5">信息门户</div>

          <div id="mainlinksD">
          <a title="邮件系统" href="http://email.hfut.edu.cn" target="_blank"></a>
          </div>
          <div class="bgtext bgtext6">邮件系统</div>

          <div id="mainlinksE">
          <a title="校长信箱" href="http://xzxx.hfut.edu.cn" target="_blank"></a>
          </div>
          <div class="bgtext bgtext7">校长信箱</div>

          <div id="mainlinksF">
          <a title="网络服务" href="http://user.hfut.edu.cn/" target="_blank"></a>
          </div>
          <div class="bgtext bgtext8">网络服务</div>

          <div id="mainlinksG">
          <a title="校友会" href="http://xyh.hfut.edu.cn/" target="_blank"></a>
          </div>
          <div class="bgtext bgtext9">校友会</div>

          <div id="mainlinksH">
          <a title="图书馆" href="http://lib.hfut.edu.cn/" target="_blank"></a>
          </div>
          <div class="bgtext bgtext10">图书馆</div>

          <div id="mainlinksJ">
          <a title="工大学子" href="http://online.hfut.edu.cn/" target="_blank"></a>
          </div>
          <div class="bgtext bgtext11">工大学子</div>

          <div id="mainlinksK">
          <a title="工大论坛" href="http://bbs.hfut.edu.cn/" target="_blank"></a>
          </div>
          <div class="bgtext bgtext12">工大论坛</div>
</div>
</div>
</div>

<div id="copyright"><font class="tohamafont">Copyright&nbsp;&copy;&nbsp;2008</font>&nbsp;合肥工业大学&nbsp;&nbsp;地址：<a href="http://map.hfut.edu.cn/jtlx.html" target="_blank">安徽省合肥市屯溪路<font class="tohamafont">193</font>号<font class="tohamafont">(230009)</font></a>&nbsp;&nbsp;<a style="color:#FF9" href="mailto:evan@hfut.edu.cn" title="联系我们" target="_blank">新主页意见反馈</a>&nbsp;&nbsp;<a style="color:#FFF" href="http://www1.hfut.edu.cn" title="旧版主页" target="_blank">旧版主页</a>&nbsp;&nbsp;皖<font class="tohamafont">ICP</font>备<font class="tohamafont">020549</font>号</div>        
</div>

<script type="text/javascript">
<!--
(function(){
var S=navigator.userAgent.indexOf("MSIE")!=-1&&!window.opera;
function M(C){
return document.getElementById(C)
} function R(C){
return document.createElement(C)
} var P=[19416,19168,42352,21717,53856,55632,91476,22176,39632,21970,19168,42422,42192,53840,119381,46400,54944,44450,38320,84343,18800,42160,46261,27216,27968,109396,11104,38256,21234,18800,25958,54432,59984,28309,23248,11104,100067,37600,116951,51536,54432,120998,46416,22176,107956,9680,37584,53938,43344,46423,27808,46416,86869,19872,42448,83315,21200,43432,59728,27296,44710,43856,19296,43748,42352,21088,62051,55632,23383,22176,38608,19925,19152,42192,54484,53840,54616,46400,46496,103846,38320,18864,43380,42160,45690,27216,27968,44870,43872,38256,19189,18800,25776,29859,59984,27480,21952,43872,38613,37600,51552,55636,54432,55888,30034,22176,43959,9680,37584,51893,43344,46240,47780,44368,21977,19360,42416,86390,21168,43312,31060,27296,44368,23378,19296,42726,42208,53856,60005,54576,23200,30371,38608,19415,19152,42192,118966,53840,54560,56645,46496,22224,21938,18864,42359,42160,43600,111189,27936,44448];
var K="甲乙丙丁戊己庚辛壬癸";
var J="子丑寅卯辰巳午未申酉戌亥";
var O="鼠牛虎兔龙蛇马羊猴鸡狗猪";
var L=["小寒","大寒","立春","雨水","惊蛰","春分","清明","谷雨","立夏","小满","芒种","夏至","小暑","大暑","立秋","处暑","白露","秋分","寒露","霜降","立冬","小雪","大雪","冬至"];
var D=[0,21208,43467,63836,85337,107014,128867,150921,173149,195551,218072,240693,263343,285989,308563,331033,353350,375494,397447,419210,440795,462224,483532,504758];
var B="日一二三四五六七八九十";
var H=["正","二","三","四","五","六","七","八","九","十","十一","腊"];
var E="初十廿卅";
var V={
"0101":"*1元旦节","0214":"情人节","0305":"学雷锋纪念日","0308":"妇女节","0312":"植树节","0315":"消费者权益日","0401":"愚人节","0501":"*1劳动节","0504":"青年节","0601":"国际儿童节","0701":"中国共产党诞辰","0801":"建军节","0910":"中国教师节","1001":"*3国庆节","1224":"平安夜","1225":"圣诞节"
} ;
var T={
"0101":"*2春节","0115":"元宵节","0505":"*1端午节","0815":"*1中秋节","0909":"重阳节","1208":"腊八节","0100":"除夕"
} ;

function U(Y){
function c(j,i){
var h=new Date((31556925974.7*(j-1900)+D[i]*60000)+Date.UTC(1900,0,6,2,5));
return(h.getUTCDate())
} function d(k){
var h,j=348;
for(h=32768;h>8;h>>=1){
j+=(P[k-1900]&h)?1:0
} return(j+b(k))
} function a(h){
return(K.charAt(h%10)+J.charAt(h%12))
} function b(h){
if(g(h)){
return((P[h-1900]&65536)?30:29)
} else{
return(0)
} 
} function g(h){
return(P[h-1900]&15)
} function e(i,h){
return((P[i-1900]&(65536>>h))?30:29)
} function C(m){
var k,j=0,h=0;
var l=new Date(1900,0,31);
var n=(m-l)/86400000;
this.dayCyl=n+40;
this.monCyl=14;
for(k=1900;k<2050&&n>0;k++){
h=d(k);
n-=h;
this.monCyl+=12
} if(n<0){
n+=h;
k--;
this.monCyl-=12
} this.year=k;
this.yearCyl=k-1864;
j=g(k);
this.isLeap=false;
for(k=1;k<13&&n>0;k++){
if(j>0&&k==(j+1)&&this.isLeap==false){
--k;
this.isLeap=true;
h=b(this.year)
} else{
h=e(this.year,k)
} if(this.isLeap==true&&k==(j+1)){
this.isLeap=false
} n-=h;
if(this.isLeap==false){
this.monCyl++
} 
} if(n==0&&j>0&&k==j+1){
if(this.isLeap){
this.isLeap=false
} else{
this.isLeap=true;
--k;
--this.monCyl
} 
} if(n<0){
n+=h;
--k;
--this.monCyl
} this.month=k;
 this.day=n+1
} function G(h){
return h<10?"0"+h:h
} function f(i,j){
var h=i;
return j.replace(/dd?d?d?|MM?M?M?|yy?y?y?/g,function(k){
switch(k){
case"yyyy":var l="000"+h.getFullYear();
return l.substring(l.length-4);
case"dd":return G(h.getDate());
case"d":return h.getDate().toString();
case"MM":return G((h.getMonth()+1));
case"M":return h.getMonth()+1
} 
} )
} function Z(i,h){
var j;
switch(i,h){
case 10:j="初十";
break;
case 20:j="二十";
break;
case 30:j="三十";
break;
default:j=E.charAt(Math.floor(h/10));
j+=B.charAt(h%10)
} return(j)
} this.date=Y;
this.isToday=false;
this.isRestDay=false;
this.solarYear=f(Y,"yyyy");
this.solarMonth=f(Y,"M");
this.solarDate=f(Y,"d");
this.solarWeekDay=Y.getDay();
this.solarWeekDayInChinese="星期"+B.charAt(this.solarWeekDay);
var X=new C(Y);
this.lunarYear=X.year;
this.shengxiao=O.charAt((this.lunarYear-4)%12);
this.lunarMonth=X.month;
this.lunarIsLeapMonth=X.isLeap;
this.lunarMonthInChinese=this.lunarIsLeapMonth?"闰"+H[X.month-1]:H[X.month-1];
this.lunarDate=X.day;
this.showInLunar=this.lunarDateInChinese=Z(this.lunarMonth,this.lunarDate);
if(this.lunarDate==1){
this.showInLunar=this.lunarMonthInChinese+"月"
} this.ganzhiYear=a(X.yearCyl);
this.ganzhiMonth=a(X.monCyl);
this.ganzhiDate=a(X.dayCyl++);
this.jieqi="";
this.restDays=0;
if(c(this.solarYear,(this.solarMonth-1)*2)==f(Y,"d")){
this.showInLunar=this.jieqi=L[(this.solarMonth-1)*2]
} if(c(this.solarYear,(this.solarMonth-1)*2+1)==f(Y,"d")){
this.showInLunar=this.jieqi=L[(this.solarMonth-1)*2+1]
} if(this.showInLunar=="清明"){
this.showInLunar="清明节";
this.restDays=1
} this.solarFestival=V[f(Y,"MM")+f(Y,"dd")];
if(typeof this.solarFestival=="undefined"){
this.solarFestival=""
} else{
if(/\*(\d)/.test(this.solarFestival)){
this.restDays=parseInt(RegExp.$1);
this.solarFestival=this.solarFestival.replace(/\*\d/,"")
} 
} this.showInLunar=(this.solarFestival=="")?this.showInLunar:this.solarFestival;
this.lunarFestival=T[this.lunarIsLeapMonth?"00":G(this.lunarMonth)+G(this.lunarDate)];
if(typeof this.lunarFestival=="undefined"){
this.lunarFestival=""



} else{



if(/\*(\d)/.test(this.lunarFestival)){



this.restDays=(this.restDays>parseInt(RegExp.$1))?this.restDays:parseInt(RegExp.$1);



this.lunarFestival=this.lunarFestival.replace(/\*\d/,"")



} 



} if(this.lunarMonth==12&&this.lunarDate==e(this.lunarYear,12)){



this.lunarFestival=T["0100"];



this.restDays=1



} this.showInLunar=(this.lunarFestival=="")?this.showInLunar:this.lunarFestival;



this.showInLunar=(this.showInLunar.length>4)?this.showInLunar.substr(0,2)+"...":this.showInLunar



} var Q=(function(){



var X={



} ;



X.lines=0;



X.dateArray=new Array(42);



function Y(a){



return(((a%4===0)&&(a%100!==0))||(a%400===0))



} function G(a,b){



return[31,(Y(a)?29:28),31,30,31,30,31,31,30,31,30,31][b]



} function C(a,b){



a.setDate(a.getDate()+b);



return a



} function Z(a){



var f=0;



var c=new U(new Date(a.solarYear,a.solarMonth-1,1));



var d=(c.solarWeekDay-1==-1)?6:c.solarWeekDay-1;



X.lines=Math.ceil((d+G(a.solarYear,a.solarMonth-1))/7);



for(var e=0;e<X.dateArray.length;e++){



if(c.restDays!=0){



f=c.restDays



} if(f>0){



c.isRest=true



} if(d-->0||c.solarMonth!=a.solarMonth){



X.dateArray[e]=null;



continue



} var b=new U(new Date());



if(c.solarYear==b.solarYear&&c.solarMonth==b.solarMonth&&c.solarDate==b.solarDate){



c.isToday=true



} X.dateArray[e]=c;



c=new U(C(c.date,1));



f--



} 



} return{



init:function(a){



Z(a)



} ,getJson:function(){



return X



} 



} 



} )();



var W=(function(){



var C=M("top").getElementsByTagName("SELECT")[0];



var X=M("top").getElementsByTagName("SELECT")[1];



var G=M("top").getElementsByTagName("SPAN")[0];



var c=M("top").getElementsByTagName("SPAN")[1];



var Y=M("top").getElementsByTagName("INPUT")[0];



function a(g){



G.innerHTML=g.ganzhiYear;



c.innerHTML=g.shengxiao



} function b(g){



C[g.solarYear-1901].selected=true;



X[g.solarMonth-1].selected=true



} function f(){



var j=C.value;



var g=X.value;



var i=new U(new Date(j,g-1,1));



Q.init(i);



N.draw();



if(this==C){



i=new U(new Date(j,3,1));



G.innerHTML=i.ganzhiYear;



c.innerHTML=i.shengxiao



} var h=new U(new Date());

Y.style.visibility=(j==h.solarYear&&g==h.solarMonth)?"hidden":"hidden"



} function Z(){



var g=new U(new Date());



a(g);



b(g);



Q.init(g);



N.draw();



Y.style.visibility="hidden"



} function d(k,g){



for(var j=1901;j<2050;j++){



var h=R("OPTION");



h.value=j;



h.innerHTML=j;



if(j==k){



h.selected="selected"



} C.appendChild(h)



} for(var j=1;j<13;j++){



var h=R("OPTION");



h.value=j;



h.innerHTML=j;



if(j==g){



h.selected="selected"



} X.appendChild(h)



} C.onchange=f;



X.onchange=f



} function e(g){



d(g.solarYear,g.solarMonth);



G.innerHTML=g.ganzhiYear;



c.innerHTML=g.shengxiao;



Y.onclick=Z;



Y.style.visibility="hidden"



} return{



init:function(g){



e(g)



} ,reset:function(g){



b(g)



} 



} 



} )();



var N=(function(){



function C(){



var Z=Q.getJson();



var c=Z.dateArray;



M("cm").style.height=Z.lines*38+2+"px";



M("cm").innerHTML="";



for(var a=0;a<c.length;a++){



if(c[a]==null){



continue



} var X=R("DIV");



if(c[a].isToday){



X.style.border="1px solid #a5b9da";



X.style.background="#c1d9ff"



} X.className="cell";



X.style.left=(a%7)*52+"px";



X.style.top=Math.floor(a/7)*38+2+"px";



var b=R("DIV");



b.className="so";



// http://www.codefans.net



b.style.color=((a%7)>4||c[a].isRest)?"#c60b02":"#313131";



b.innerHTML=c[a].solarDate;



X.appendChild(b);



var Y=R("DIV");



Y.style.color="#666";



Y.innerHTML=c[a].showInLunar;



X.appendChild(Y);



X.onmouseover=(function(d){



return function(f){



F.show({



dateIndex:d,cell:this



} )



} 



} )(a);



X.onmouseout=function(){



F.hide()



} ;



M("cm").appendChild(X)



} var G=R("DIV");



G.id="fd";



M("cm").appendChild(G);



F.init(G)



} return{



draw:function(G){



C(G)



} 



} 



} )();



var F=(function(){



var C;



function Y(e,c){



if(arguments.length>1){



var b=/([.*+?^=!:${}()|[\]\/\\])/g,Z="{".replace(b,"\\$1"),d="}".replace(b,"\\$1");



var a=new RegExp("#"+Z+"([^"+Z+d+"]+)"+d,"g");



if(typeof (c)=="object"){



return e.replace(a,function(f,h){



var g=c[h];



return typeof (g)=="undefined"?"":g



} )



} 



} return e



} function G(b){



var a=Q.getJson().dateArray[b.dateIndex];



var Z=b.cell;



var c="#{solarYear}&nbsp;年&nbsp;#{solarMonth}&nbsp;月&nbsp;#{solarDate}&nbsp;日&nbsp;#{solarWeekDayInChinese}";



c+="<br><b>农历&nbsp;#{lunarMonthInChinese}月#{lunarDateInChinese}</b>";



c+="<br>#{ganzhiYear}年&nbsp;#{ganzhiMonth}月&nbsp;#{ganzhiDate}日";



if(a.solarFestival!=""||a.lunarFestival!=""||a.jieqi!=""){



c+="<br><b>#{lunarFestival} #{solarFestival} #{jieqi}</b>"



} C.innerHTML=Y(c,a);



C.style.top=Z.offsetTop+Z.offsetHeight-5+"px";



C.style.left=Z.offsetLeft+Z.offsetWidth-5+"px";

C.style.display="block"



} function X(){



C.style.display="none"



} return{



show:function(Z){



G(Z)



} ,hide:function(){



X()



} ,init:function(Z){



C=Z



} 



} 



} )();



var A=new U(new Date());



if(S){



window.attachEvent("onload",function(){



W.reset(A)



} )



} W.init(A);



Q.init(A);



N.draw();



} )();



//-->

</script>    



</body>



</html>
