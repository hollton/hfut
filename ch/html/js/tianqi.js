/*-----------------------天气------------------*/
function doAjaxCall(the_request)
    {
        var request=(window.XMLHttpRequest)?new XMLHttpRequest():new ActiveXObject("Microsoft.XMLHTTP");
        if(request)
        {
            request.open("GET",the_request,true);
            request.onreadystatechange=function()
            {
                if(request.readyState===4)
                {
                    if (request.status == 200 || request.status == 0)
                    {
					   var weather=request.responseText;  //ajax读取的数据
					   var weather=request.responseText;
					   var city;
					   var sun;
					   var tem;	
					   function factorial(num)
							{    
								if(num <= 1)
								{
									return weather.indexOf("\"")+1;
								}
								else
								{   
									return weather.indexOf("\"",factorial(num-1))+1; 
								}
							}
						function zb(num1)
							{    
								if(num1 <= 1)
								{
									return weather.indexOf(",")+1;
								}
								else
								{   
									return weather.indexOf(",",zb(num1-1))+1; 
								}
							}
						//sun=eval("'"+weather.substring(factorial(3),factorial(4)-1)+"'");
						sun=weather.substring(factorial(3),factorial(4)-1);
						sun=eval("'"+sun+"'");
						tem=weather.substring(zb(19),zb(20)-1);	
						tem=eval("'"+tem+"'");
						var sun1=weather.substring(factorial(13),factorial(14)-1);
						sun1=eval("'"+sun1+"'");
						var tem1=weather.substring(factorial(17),factorial(18)-1);
						tem1=eval("'"+tem1+"'");
						var tomorrowtem=weather.substring(zb(24),zb(25)-1);
						tomorrowtem=eval("'"+tomorrowtem+"'");
						var tomorrowweather=weather.substring(zb(23),zb(24)-1);	
						tomorrowweather=eval("'"+tomorrowweather+"'");
						var tomorrowtem2=weather.substring(zb(28),zb(29)-1);
						tomorrowtem2=eval("'"+tomorrowtem2+"'");
						var tomorrowweather2=weather.substring(zb(27),zb(28)-1);
						tomorrowweather2=eval("'"+tomorrowweather2+"'");	
						var tomorrowtem3=weather.substring(zb(32),zb(33)-1);
						tomorrowtem3=eval("'"+tomorrowtem3+"'");
						var tomorrowweather3=weather.substring(zb(31),zb(32)-1);
						tomorrowweather3=eval("'"+tomorrowweather3+"'");
				       document.getElementById("todayweather").innerHTML=sun;
					   document.getElementById("todaytem").innerHTML=tem;
				       document.getElementById("tomorrowweather").innerHTML=tomorrowweather;
					   document.getElementById("tomorrowtem").innerHTML=tomorrowtem;
				       document.getElementById("tomorrowweather2").innerHTML=tomorrowweather2;
					   document.getElementById("tomorrowtem2").innerHTML=tomorrowtem2;
				       document.getElementById("tomorrowweather3").innerHTML=tomorrowweather3;
					   document.getElementById("tomorrowtem3").innerHTML=tomorrowtem3;
					   document.getElementById("weather").innerHTML=sun;
					   document.getElementById("weathert").innerHTML=tem;
					   
					   /*时间*/
					   var time = new Date().getHours();
					   
					   /*封装背景颜色*/
					   function yin(){						   
					document.getElementById("todaybox").style.backgroundColor='#667785';
					//document.getElementById("todaybox").style.backgroundImage='-webkit-linear-gradient(top, rgb(72, 86, 99), rgb(161, 184, 202))';
					document.getElementById("tomorrowbox1").style.backgroundColor='#738695';
					document.getElementById("tomorrowbox1").style.borderRightColor='rgb(105, 123, 138)';
					document.getElementById("tomorrowbox2").style.backgroundColor='#738695';
					document.getElementById("tomorrowbox2").style.borderRightColor='rgb(105, 123, 138)';
					document.getElementById("tomorrowbox3").style.backgroundColor='#738695';
					}
					
					   function yu(){						   
					document.getElementById("todaybox").style.backgroundColor='#667785';		 					document.getElementById("todaybox").style.backgroundImage='url("images/yuBg.png")';
					document.getElementById("tomorrowbox1").style.backgroundColor='#738695';
					document.getElementById("tomorrowbox1").style.borderRightColor='rgb(105, 123, 138)';
					document.getElementById("tomorrowbox2").style.backgroundColor='#738695';
					document.getElementById("tomorrowbox2").style.borderRightColor='rgb(105, 123, 138)';
					document.getElementById("tomorrowbox3").style.backgroundColor='#738695';
					}
					
					   function qing(){
						   if(time>=6 && time<=18){
								document.getElementById("todaybox").style.backgroundColor='#2076C3';
								document.getElementById("todaybox").style.backgroundImage='url("images/qingBg.png")';
						   } else { document.getElementById("todaybox").style.backgroundColor='#2076C3'; }
					document.getElementById("tomorrowbox1").style.backgroundColor='#4790d1';
					document.getElementById("tomorrowbox1").style.borderRightColor='rgb(63, 130, 189)';
					document.getElementById("tomorrowbox2").style.backgroundColor='#4790d1';
					document.getElementById("tomorrowbox2").style.borderRightColor='rgb(63, 130, 189)';
					document.getElementById("tomorrowbox3").style.backgroundColor='#4790d1';
					
					}
					
					   function xue(){						   
					document.getElementById("todaybox").style.backgroundColor='#2076C3';
					document.getElementById("todaybox").style.backgroundImage='url("images/xueBg.png")';
					document.getElementById("tomorrowbox1").style.backgroundColor='#4790d1';
					document.getElementById("tomorrowbox1").style.borderRightColor='rgb(63, 130, 189)';
					document.getElementById("tomorrowbox2").style.backgroundColor='#4790d1';
					document.getElementById("tomorrowbox2").style.borderRightColor='rgb(63, 130, 189)';
					document.getElementById("tomorrowbox3").style.backgroundColor='#4790d1';
					}
					
					   function def(){
						   if(time>=6 && time<=18){						   
							document.getElementById("todaybox").style.backgroundColor='#2076C3';
							document.getElementById("todaybox").style.backgroundImage='-webkit-linear-gradient(top, rgb(13, 104, 188),rgb(81, 155, 221))'; } else { document.getElementById("todaybox").style.backgroundColor='#2076C3';}
					document.getElementById("tomorrowbox1").style.backgroundColor='#4790d1';
					document.getElementById("tomorrowbox1").style.borderRightColor='rgb(63, 130, 189)';
					document.getElementById("tomorrowbox2").style.backgroundColor='#4790d1';
					document.getElementById("tomorrowbox2").style.borderRightColor='rgb(63, 130, 189)';
					document.getElementById("tomorrowbox3").style.backgroundColor='#4790d1';
					
					}
					/*end*/
					   // test
					   /*
					   tem='bingg';
					   time=5;
					   */
					   
					    if(tem.indexOf("大雨")>= 0){
					document.getElementById("todaypic").style.backgroundImage='url("images/dy.png")';yu();
						}
						else if(tem.indexOf("中雨")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/zy.png")';yu();
						}		
						else if(tem.indexOf("小雨")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/xy.png")';yu();
						}		
						else if(tem.indexOf("雷阵雨")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/lzy.png")';yu();
						}
						else if(tem.indexOf("雨")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/zy.png")';yu();
						}
						else if(tem.indexOf("阴")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/yt.png")';yin();
						}
						else if(tem.indexOf("雪")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/xx.png")';xue();
						}
						else if(tem.indexOf("晴")>= 0){
						   if(time>=6 && time<=18){	
							  document.getElementById("todaypic").style.backgroundImage='url("images/qt.png")';
						   } 
						   else { document.getElementById("todaypic").style.backgroundImage='url("images/wq.png")';}
						   qing();
						}
						else if(tem.indexOf("多云")>= 0){
						   if(time>=6 && time<=18){	
							  document.getElementById("todaypic").style.backgroundImage='url("images/cy.png")';
						   } 
						   else { document.getElementById("todaypic").style.backgroundImage='url("images/wc.png")';}
						   qing();
						}
						else {
						   if(time>=6 && time<=18){	
							  document.getElementById("todaypic").style.backgroundImage='url("images/cy.png")';
						   } 
						   else { document.getElementById("todaypic").style.backgroundImage='url("images/wc.png")';}
						   def();
						}
						
						var week;
						if(new Date().getDay()==0)          week="星期日";								
						if(new Date().getDay()==1)          week="星期一";
						if(new Date().getDay()==2)          week="星期二";
						if(new Date().getDay()==3)          week="星期三";
						if(new Date().getDay()==4)          week="星期四";
						if(new Date().getDay()==5)          week="星期五";
						if(new Date().getDay()==6)          week="星期六";
						var week1;
						if(new Date().getDay()==6)          week1="星期日";								
						if(new Date().getDay()==0)          week1="星期一";
						if(new Date().getDay()==1)          week1="星期二";
						if(new Date().getDay()==2)          week1="星期三";
						if(new Date().getDay()==3)          week1="星期四";
						if(new Date().getDay()==4)          week1="星期五";
						if(new Date().getDay()==5)          week1="星期六";
						var week2;
						if(new Date().getDay()==5)          week2="星期日";								
						if(new Date().getDay()==6)          week2="星期一";
						if(new Date().getDay()==0)          week2="星期二";
						if(new Date().getDay()==1)          week2="星期三";
						if(new Date().getDay()==2)          week2="星期四";
						if(new Date().getDay()==3)          week2="星期五";
						if(new Date().getDay()==4)          week2="星期六";
						var week3;
						if(new Date().getDay()==4)          week3="星期日";								
						if(new Date().getDay()==5)          week3="星期一";
						if(new Date().getDay()==6)          week3="星期二";
						if(new Date().getDay()==0)          week3="星期三";
						if(new Date().getDay()==1)          week3="星期四";
						if(new Date().getDay()==2)          week3="星期五";
						if(new Date().getDay()==3)          week3="星期六";
						var todayweek=week;	
					    document.getElementById("todayweek").innerHTML=todayweek;
						document.getElementById("tomorrowweek").innerHTML=week1;
						document.getElementById("tomorrowweek2").innerHTML=week2;
						document.getElementById("tomorrowweek3").innerHTML=week3;
                    }
                }
            }
            request.send(null);
        }else{
            alert("error");
            }
    }