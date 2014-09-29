/*-----------------------天气------------------*/
function doAjaxCall(the_request)
    {
        var request=null;
        if(window.XMLHttpRequest)
        {
            request=new XMLHttpRequest();
        }else if(window.ActiveXObject)
        {
            request=new ActiveXObject("Microsoft.XMLHTTP");
        }
        if(request)
        {
            request.open("GET",the_request,true);
            request.onreadystatechange=function()
            {
                if(request.readyState===4)
                {
                    if (request.status == 200 || request.status == 0)
                    {
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
					    if(tem.indexOf("大雨")>= 0){
					document.getElementById("todaypic").style.backgroundImage='url("images/dy.png")';
						}
						else if(tem.indexOf("中雨")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/zy.png")';
						}		
						else if(tem.indexOf("小雨")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/xy.png")';
						}
						else if(tem.indexOf("雨")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/zy.png")';
						}
						else if(tem.indexOf("阴")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/yt.png")';
						}
						else if(tem.indexOf("雪")>= 0)
						{
					document.getElementById("todaypic").style.backgroundImage='url("images/xx.png")';
						}
						else if(tem.indexOf("晴")>= 0){
					document.getElementById("todaypic").style.backgroundImage='url("images/qt.png")';
						}
						else if(tem.indexOf("多云")>= 0){
					document.getElementById("todaypic").style.backgroundImage='url("images/mr.png")';
						}
						else {
					document.getElementById("todaypic").style.backgroundImage='url("images/mr.png")';
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