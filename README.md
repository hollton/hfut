# hfut
New Website Of HeFei University of Technology
网站目录（为保障网站安全，已删除后台文件）：
	ch文件夹为主目录，cache及Include为后台代码。index.html首页静态页面，html下为二三级

页面，images下为首页天气图标。
	html里index.tpl首页动态页面，weather.txt天气数据。
	css里wholestyle.css：总站css，nivo-slider.css：首页大图框架，second.css：子级页面

css，mobile.css：为适应移动端调整css布局。
	js里jquery-1.4.2.min.js不多说jquery框架，jquery.nivo.slider.pack.js：首页大图框架，

switch.js：首页小图，tianqi.js：ajax获取天气数据并截取有用信息，weatime.js：时间日期及显示

天气内容，calendar.js：日历，navtop.js：二级页面导航条悬浮及回到顶部，pop.js：机构设置弹出

层代码。

2015-01-06代码整理 By Howard

1、css及js文件全部外链引入；

2、恢复天气功能，并适应天气状况及时间调整配色。


2015-01-07代码整理 By Howard

1、合并css代码；

2、精简删除大量无用图片。


2015-01-28代码整理 By Howard

1、修复weather.php，每隔3个小时自动获取最新天气信息。
