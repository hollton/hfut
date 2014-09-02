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



/*time*/


  function time(){
    //获得显示时间的div
    t_div = document.getElementById('showtime');
   var now=new Date()
    //替换div内容 
   t_div.innerHTML = now.getFullYear()
    +"年"+(now.getMonth()+1)+"月"+now.getDate()
    +"日";
    //等待一秒钟后调用time方法，由于settimeout在time方法内，所以可以无限调用
   setTimeout(time,1000);
  }





