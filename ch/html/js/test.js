//��¼������ԭ����ҳ���ϵ�λ�� 

var naviga_offsetTop = 0; 



//ʹ����������ͣ�ڶ��� 

function naviga_stay_top(){ 

//��ȡ�������� 

var scrollTop = $(document).scrollTop(); 

//������¹����ľ������ԭ���������붥���ľ��� 

//ֱ�ӽ��������̶������������� 

if( scrollTop > naviga_offsetTop ){ 

$("#nava").css({"top": "0px"}); 

} else { 

//������¹����ľ���Сԭ���������붥���ľ��룬�����¼��㵼������λ�� 

$("#nava").css({"top": naviga_offsetTop - scrollTop + "px"}); 

} 

} 



function onload_function(){ 

//��¼��ʼ״̬�������ĸ߶� 

naviga_offsetTop = $("#nava").attr("offsetTop"); 



//�󶨹���������¼� 

$(window).bind("scroll", naviga_stay_top); 

$(window).bind("mousewheel",naviga_stay_top); 

$(document).bind("scroll", naviga_stay_top); 

$(document).bind("mousewheel",naviga_stay_top); 

} 



$(document).ready( onload_function ); 



/*time*/


  function time(){
    //�����ʾʱ���div
    t_div = document.getElementById('showtime');
   var now=new Date()
    //�滻div���� 
   t_div.innerHTML = now.getFullYear()
    +"��"+(now.getMonth()+1)+"��"+now.getDate()
    +"��";
    //�ȴ�һ���Ӻ����time����������settimeout��time�����ڣ����Կ������޵���
   setTimeout(time,1000);
  }





