;(function($){
// 图片轮播插件
$.fn.UISlide = function(options){
var defaults = {
playTime :6000, // 间隔时间
duration :600, // 延迟时间
direction :'left', // 方向
easing :'easeInOutQuad', // 自动播放时 easing 方式
clickEasing :'easeOutCubic' // 点击时 easing 方式
};
var opts = $.extend({}, defaults, options); // 参数合并
var slide = {
// 播放调用及一些变量的初始化
play: function(opts, me){
var that = this,
isPlay;
that.me = me;
that.picList = me.find('ul'); // 图片列表
that.title = me.find('div').find('a'); // 图片标题
that.oNum = me.find('dl'); // 数字按钮
that.lis = that.picList.find('li'); // li
that.size = that.lis.length; // 图片的数量
that.lisWidth = that.lis.width();
that.isPlay = isPlay; // 是否自动播放
for (var p in opts) { // opts 绑定到 slide
that[p] = opts[p];
}
that.setNums().setTitle();
if(that.size > 1){ // 如果图片数量大于则轮播
that.autoPlay().slideEvent();
}
},
// 设置按钮
setNums: function(){
var that = this,
links, // 图片的链接
me = that.me,
size = that.size,
oNum = that.oNum, // 按钮对象
arrTemp = [];
links = that.picList.find('a').first();
that.title.html(links[0].title).attr('href', links[0].href); // 把链接的 title 内容放到标题栏上显示
for(var i=1; i<=size; i++){
arrTemp.push('<dd>' + i + '</dd>');
}
oNum.append(arrTemp.join(''));
that.slideNum = oNum.find('dd');
that.numWidth = (that.slideNum.width() + parseInt(that.slideNum.css('margin-right'))) * size; // 数字按钮宽度
that.setTitle();
return that;
},
// 自动播放
autoPlay: function(){
var that = this,
activePos,
direction = that.direction,
picList = that.picList,
slideNum = that.slideNum,
playTime = that.playTime;
that.isPlay = setInterval(function (){
activePos = that.oNum.find('.active').index();
if(direction == 'left')
{
	if(activePos == (that.size-1))
		{activePos=0;} 		
		else {activePos ++;}
		} 
		
	else {
		if(activePos == 0){
		direction = 'left';
		activePos ++;
		} 
}

/*if(direction == 'left')
{
	if(activePos == (that.size-1))
		{direction = 'right';
		activePos --;} 		
		else {activePos ++;}
		} 
		
	else {
		if(activePos == 0){
		direction = 'left';
		activePos ++;
		} 
		else {activePos --;}
}*/

picList.stop().animate({'margin-left': 0 - activePos * (that.lisWidth)}, {duration: that.duration, easing: that.easing});
slideNum.removeClass('active').eq(activePos).addClass('active');
var links = picList.find('a').eq(activePos);
that.title.html(links[0].title).attr('href', links[0].href);
}, playTime);
return that;
},
// 设置标题
setTitle: function(){
var that = this;
that.oNum.width(that.numWidth); // 设置数字按钮宽度
that.picList.width((that.lisWidth) * that.size); // 设置图片容器总宽度
that.slideNum.first().addClass('active');
return that;
},
// 绑定数字按钮事件
slideEvent: function(){
var that = this,
slideNum = that.slideNum;
slideNum.mouseover(function(){
var thisNum = $(this).index();
that.picList.stop().animate({"margin-left":0 - thisNum * (that.lisWidth)}, {duration:that.duration, easing:that.clickEasing});
slideNum.removeClass('active').eq(thisNum).addClass('active');
var links = that.picList.find('a').eq(thisNum);
that.title.html(links[0].title).attr('href', links[0].href);
});
// 鼠标到画面中任意位置，停止播放
that.me.hover(function(){
clearInterval(that.isPlay);
}, function(){
that.autoPlay();
})
return that;
}
};
return this.each(function(){ // $(a,b) 方式调用
slide.play(opts, $(this));
});
}
})(jQuery);