<?php

    

	header("Content-Type: text/html; charset=utf-8");

	

	$wea_url="http://tianqi.2345.com/t/detect2009v2.php";

	$file_contents = file_get_contents($wea_url);

	

	$file_contents = iconv("gbk","utf-8//IGNORE",$file_contents);

	

	$myPath = dirname(__FILE__);//取得当下目录。

   

	$cacheFile =$myPath.'../../../ch/html/weather.txt';

	$s_weather=$file_contents;

	$fileHandle = fopen($cacheFile, "w");

	fwrite($fileHandle, $s_weather);

	fclose($fileHandle);



?>