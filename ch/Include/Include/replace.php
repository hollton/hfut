<?php

error_reporting(0);

///修改首页新闻显示字数，可修改$titleLen1和$titleLen2变量

$myPath = dirname(__FILE__);//取得当下目录。

include dirname($myPath).'/../cache/cache/image.php';           //图片新闻数据源

include dirname($myPath).'/../cache/cache/articleCache.php';         //新闻数据源



include dirname($myPath).'/../cache/cache/changeless.php';            //置顶新闻数据源



$titleLen1 = 23;             ///新闻字数

$titleLen2 = 15;          //通知字数

$myPath = dirname(__FILE__);//取得当下目录。

$HtmlPath=dirname($myPath).'/../html/index.tpl';//先由函数dirname返回上级目录

          //打开模板

$Html=fopen($HtmlPath,"r");

$HtmlBody=fread($Html,filesize($HtmlPath));

fclose($Html);

   

$image_tpl=array (

  0 => 

  array (

    'image' => '<{$image_0_image}>',

    'url' => '<{$image_0_url}>',

    'title' => '<{$image_0_title}>',

  ),

  1 => 

  array (

    'image' => '<{$image_1_image}>',

    'url' => '<{$image_1_url}>',

    'title' => '<{$image_1_title}>',

  ),

  2 => 

  array (

    'image' => '<{$image_2_image}>',

    'url' => '<{$image_2_url}>',

    'title' => '<{$image_2_title}>',

  ),

  3 => 

  array (

    'image' => '<{$image_3_image}>',

    'url' => '<{$image_3_url}>',

    'title' => '<{$image_3_title}>',

  ),

  4 => 

  array (

    'image' => '<{$image_4_image}>',

    'url' => '<{$image_4_url}>',

    'title' => '<{$image_4_title}>',

  ),

)  ;

$news_tpl=array (

  0 => 

  array (

    'title' => '<{$news_0_title}>',

	'title1' => '<{$news_0_title1}>',

    'url' => '<{$news_0_url}>',

    'date' => '<{$news_0_date}>',

  ),

  1 => 

  array (

    'title' => '<{$news_1_title}>',

	'title1' => '<{$news_1_title1}>',

    'url' => '<{$news_1_url}>',

    'date' => '<{$news_1_date}>',

  ),

  2 => 

  array (

    'title' => '<{$news_2_title}>',

	'title1' => '<{$news_2_title1}>',

    'url' => '<{$news_2_url}>',

    'date' => '<{$news_2_date}>',

  ),

  3 => 

  array (

    'title' => '<{$news_3_title}>',

	'title1' => '<{$news_3_title1}>',

    'url' => '<{$news_3_url}>',

    'date' => '<{$news_3_date}>',

  ),

  4 => 

  array (

    'title' => '<{$news_4_title}>',

	'title1' => '<{$news_4_title1}>',

    'url' => '<{$news_4_url}>',

    'date' => '<{$news_4_date}>',

  ),

   5 => 

  array (

    'title' => '<{$news_5_title}>',

	'title1' => '<{$news_5_title1}>',

    'url' => '<{$news_5_url}>',

    'date' => '<{$news_5_date}>',

  ),

    6 => 

  array (

    'title' => '<{$news_6_title}>',

	'title1' => '<{$news_6_title1}>',

    'url' => '<{$news_6_url}>',

    'date' => '<{$news_6_date}>',

  ),

)  ;



$notice_tpl=array (

  0 => 

  array (

    'title' => '<{$notice_0_title}>',

    'title1' => '<{$notice_0_title1}>',

    'url' => '<{$notice_0_url}>',

    'date' => '<{$notice_0_date}>',

  ),

  1 => 

  array (

    'title' => '<{$notice_1_title}>',

	'title1' => '<{$notice_1_title1}>',

    'url' => '<{$notice_1_url}>',

    'date' => '<{$notice_1_date}>',

  ),

  2 => 

  array (

    'title' => '<{$notice_2_title}>',

	'title1' => '<{$notice_2_title1}>',

    'url' => '<{$notice_2_url}>',

    'date' => '<{$notice_2_date}>',

  ),

  3 => 

  array (

    'title' => '<{$notice_3_title}>',

	'title1' => '<{$notice_3_title1}>',

    'url' => '<{$notice_3_url}>',

    'date' => '<{$notice_3_date}>',

  ),

  4 => 

  array (

    'title' => '<{$notice_4_title}>',

	'title1' => '<{$notice_4_title1}>',

    'url' => '<{$notice_4_url}>',

    'date' => '<{$notice_4_date}>',

  ),

);

$zhaobiao_tpl=array (

  0 => 

  array (

    'title' => '<{$zhaobiao_0_title}>',

	'title1' => '<{$zhaobiao_0_title1}>',

    'url' => '<{$zhaobiao_0_url}>',

    'date' => '<{$zhaobiao_0_date}>',

  ),

  1 => 

  array (

    'title' => '<{$zhaobiao_1_title}>',

	'title1' => '<{$zhaobiao_1_title1}>',

    'url' => '<{$zhaobiao_1_url}>',

    'date' => '<{$zhaobiao_1_date}>',

  ),

  2 => 

  array (

    'title' => '<{$zhaobiao_2_title}>',

	'title1' => '<{$zhaobiao_2_title1}>',

    'url' => '<{$zhaobiao_2_url}>',

    'date' => '<{$zhaobiao_2_date}>',

  ),

  3 => 

  array (

    'title' => '<{$zhaobiao_3_title}>',

	'title1' => '<{$zhaobiao_3_title1}>',

    'url' => '<{$zhaobiao_3_url}>',

    'date' => '<{$zhaobiao_3_date}>',

  ),

  4 => 

  array (

    'title' => '<{$zhaobiao_4_title}>',

	'title1' => '<{$zhaobiao_4_title1}>',

    'url' => '<{$zhaobiao_4_url}>',

    'date' => '<{$zhaobiao_4_date}>',

  ),

);

$baogao_tpl=array (

  0 => 

  array (

    'title' => '<{$baogao_0_title}>',

	'title1' => '<{$baogao_0_title1}>',

    'url' => '<{$baogao_0_url}>',

    'date' => '<{$baogao_0_date}>',

  ),

  1 => 

  array (

    'title' => '<{$baogao_1_title}>',

	'title1' => '<{$baogao_1_title1}>',

    'url' => '<{$baogao_1_url}>',

    'date' => '<{$baogao_1_date}>',

  ),

  2 => 

  array (

    'title' => '<{$baogao_2_title}>',

	'title1' => '<{$baogao_2_title1}>',

    'url' => '<{$baogao_2_url}>',

    'date' => '<{$baogao_2_date}>',

  ),

  3 => 

  array (

    'title' => '<{$baogao_3_title}>',

	'title1' => '<{$baogao_3_title1}>',

    'url' => '<{$baogao_3_url}>',

    'date' => '<{$baogao_3_date}>',

  ),

  4 => 

  array (

    'title' => '<{$baogao_4_title}>',

	'title1' => '<{$baogao_4_title1}>',

    'url' => '<{$baogao_4_url}>',

    'date' => '<{$baogao_4_date}>',

  ),

);

for($i=0;$i<5;$i++)

{

	$HtmlBody=str_replace($image_tpl[$i]['image'],$image[$i]['image'],$HtmlBody);

	$HtmlBody=str_replace($image_tpl[$i]['url'],$image[$i]['url'],$HtmlBody);

	$HtmlBody=str_replace($image_tpl[$i]['title'],$image[$i]['title'],$HtmlBody);

	

	}

//用于对首页字符输出的控制

function shuchu($str,$len_new,$add=0){    

    

	$j=0;

	for($i=0;$i<$len_new;$i++)

	$arr[]=mb_substr($str,$i,1,'UTF-8');

	if($add==1)

	{

		if(ord($arr[$len_new])<0xa0&&ord($arr[$len_new+1])<0xa0)

		{

			$len_new=$len_new+1;			

		}else

			{

				$len_new=$len_new;

			}

		$j=0;             

	}

	else{

	if($add==0)

	{

		for($i=0;$i<$len_new;$i++)

	    {

		    if(ord($arr[$i])<0x7A)

		    {

			$j++;

			

			}

	     }

	}

	else

	for($i=$len_new-$add;$i<$len_new;$i++)

	{

		if(ord($arr[$i])<0x7A)

		{

			$j++;

			

		}

	}

	

	$add=floor(($j+1)/2);

	

	$len_new=$len_new+$add;

	

	if($add!=0){

			shuchu($str,$len_new,$add);

			}

	}

    return mb_substr($str,0,$len_new,'UTF-8')."...";;

}

///用于对模板中静态数据的替换

function replace($string,$array1,$array2,$num,$array3=NULL){

if($num>20){

	$num_size=69;

	}else

	{

		$num_size=42;

		}

	

for($i=1;$i<=count($array1);$i++)

{

	

	if($i-count($array3)<=0)

	{	

    $string=str_replace($array1[$i-1]['url'],$array3[$i-1]['url'],$string);

	$string=str_replace($array1[$i-1]['date'],$array3[$i-1]['date'],$string);

	$string=str_replace($array1[$i-1]['title'],$array3[$i-1]['title'],$string);

	}



	else{



	$a=$i-count($array3)-1;



    $string=str_replace($array1[$i-1]['url'], $array2[$a]['url'],$string);

    $string=str_replace($array1[$i-1]['date'], $array2[$a]['date'],$string);

	$string=str_replace($array1[$i-1]['title'], $array2[$a]['title'],$string);

	}



	

    if($i-count($array3)<=0){

			



	if(strlen($array3[$i-1]['title'])<=$num_size){

        

		$string=str_replace($array1[$i-1]['title1'],$array3[$i-1]['title'],$string);}



		else	{



	

		$string=str_replace($array1[$i-1]['title1'],shuchu($array3[$i-1]['title'],$num),$string);

		}

           

			

	}



	else{



	$a=$i-count($array3)-1;



	if(strlen($array2[$a]['title'])<=$num_size)



	$string=str_replace($array1[$i-1]['title1'], $array2[$a]['title'],$string);

	else{

    

	

	$string=str_replace($array1[$i-1]['title1'],shuchu($array2[$a]['title'],$num),$string);

	}



	}



}



return $string;

};



//实现对数据源的处理，防止其与自身或置顶中的新闻重复

function chuli($array1,$array2=NULL){            /// 对新闻进行处理

$array=$array1;

for($i=0;$i<count($array1);$i++)         //删除与置顶中新闻相重复的部分

{

	for($j=0;$j<count($array2);$j++){

		if($array[$i]['url']==$array2[$j]['url']){

			unset($array[$i]);

			}

		}

}



for($i=0;$i<count($array1);$i++){

	if($array[$i]!=NULL){

		$array_new[]=$array[$i];

		}

	}

return $array_new;



};

//检测置顶新闻的有效时间

function check_time($array1=NULL){          

	$array=$array1;

	if($array1!=NULL){

		for($i=0;$i<count($array1);$i++){

			if($array1[$i]['date2']!=NULL){

                if(date("Y-m-d H:i:s")>$array1[$i]['date2']){

				     unset($array[$i]);

				     }

				}

			}

		}

    $array_new=NULL;

	for($i=0;$i<count($array1);$i++){

	if($array[$i]!=NULL){

		$array_new[]=$array[$i];

		}

	}

	return $array_new;

}



$news=chuli($cacheData['news'],check_time($changeless['news']));



$notice=chuli($cacheData['notice'],check_time($changeless['notice']));

$zhoabiao=chuli($cacheData['zhaobiao'],check_time($changeless['zhaobiao']));

$baogao=chuli($cacheData['baogao'],check_time($changeless['baogao']));



$news_num=count($news)+count(check_time($changeless['news']));

$notice_num=count($notice)+count(check_time($changeless['notice']));

$zhoabiao_num=count($zhoabiao)+count(check_time($changeless['zhaobiao']));

$baogao_num=count($baogao)+count(check_time($changeless['baogao']));



if($news_num>=7&&$notice_num>=5&&$zhoabiao_num>=5&&$baogao_num>=5){	       //判断新闻条数是否足够，够则更新

	$HtmlBody=replace($HtmlBody,$news_tpl,$news,$titleLen1,check_time($changeless['news']));

	$HtmlBody=replace($HtmlBody,$notice_tpl,$notice,$titleLen2,check_time($changeless['notice']));

	$HtmlBody=replace($HtmlBody,$zhaobiao_tpl,$zhoabiao,$titleLen2,check_time($changeless['zhaobiao']));

	$HtmlBody=replace($HtmlBody,$baogao_tpl,$baogao,$titleLen2,check_time($changeless['baogao']));

	

	$myPath = dirname(__FILE__);//取得当下目录。

	$fh=dirname($myPath).'/../index.html';//先由函数dirname返回上级目录  

	$fileHandle=fopen($fh,"w");  

	fwrite($fileHandle,$HtmlBody);#写入html,生成html  

	fclose($fileHandle);

}



?>



