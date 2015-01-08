/*-----------------------天气+时间------------------*/
function time(){
   var date="2013.5.12";
   t_div = document.getElementById('showtime');
   var now=new Date()
   t_div.innerHTML = now.getFullYear()+"年"+(now.getMonth()+1)+"月"+now.getDate()+"日";
   setTimeout(time,1000);
  }

var oDiv1=document.getElementById('icon_w');

var oDiv2=document.getElementById('tq');

var oDiv3=document.getElementById('icon_c');

var oDiv4=document.getElementById('tq1');

var timer=null;

oDiv1.onmouseover=function ()

{
	clearTimeout(timer);

	oDiv2.style.display='block';

	oDiv1.style.color='#C60B02';

};

oDiv2.onmouseover=oDiv2.onmouseout=oDiv1.onmouseout=function ()

{

	timer=setTimeout(function (){

		oDiv2.style.display='none';

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