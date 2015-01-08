/*********************导航悬浮********************************/

//记录导航条原来在页面上的位置 

var naviga_offsetTop = 0; 


//使导航条，悬停在顶部 

function naviga_stay_top(){ 

//获取滚动距离 

var scrollTop = $(document).scrollTop(); 

//如果向下滚动的距离大于原来导航栏离顶部的距离 

//直接将导航栏固定到可视区顶部 

if( scrollTop > naviga_offsetTop ){ 

$("#nava").css({"top": "0px"}); 

} else { 

//如果向下滚动的距离小原来导航栏离顶部的距离，则重新计算导航栏的位置 

$("#nava").css({"top": naviga_offsetTop - scrollTop + "px"}); 

} 

} 


function onload_function(){ 

//记录初始状态导航栏的高度 

naviga_offsetTop = $("#nava").attr("offsetTop"); 


//绑定滚动和鼠标事件 

$(window).bind("scroll", naviga_stay_top); 

$(window).bind("mousewheel",naviga_stay_top); 

$(document).bind("scroll", naviga_stay_top); 

$(document).bind("mousewheel",naviga_stay_top); 

} 

$(document).ready( onload_function ); 


/*********************回到顶部********************************/
		
var getDiv=document.getElementById('returntop');

getDiv.onclick=function(){

window.scrollTo(0,0);

}

window.onscroll=function(){

if(document.documentElement.scrollTop){

getDiv.style.display="block";

}else if(document.body.scrollTop){

getDiv.style.display="block";

}else{

getDiv.style.display="none";

}

}

function getWinSize(){

var winHeight=window.innerHeight,winWidth=window.innerWidth;

if(document.documentElement.clientHeight){

winHeight=document.documentElement.clientHeight;

winWidth=document.documentElement.clientWidth;

}else{

winHeight=document.body.clientHeight;

winWidth=document.body.clientWidth;

}

 var height=winHeight-150;

var width=winWidth-100;

getDiv.style.top=height+"px";

getDiv.style.left=width+"px";

}

getWinSize();

window.onresize=getWinSize;