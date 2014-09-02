<?php
/**

 * 本文件由系统定时自动执行，执行完毕后，数据将写入缓存中
 * 使用说明:
 * 1.系统定时执行此文件，数据写入缓存中，若需使用被缓存的数据，脚本中包含缓存文件，文件中有$cacheData变量，可访问到所有缓存数据、
 * 2.有新数据源时，添加对应的扩展类进行操作，注意数据格式（可在缓存文件中查看）
 * 3.添加数据有addTo方法，可将数据添加到指定分类的指定位置（不是数组索引）
 * 4 修改保存新闻的条数，可修改writeCache()函数中的$news_num变量

 */
//===============================================================================================//

class articles{
	//对于文章列表的操作
	static  public $news;
	static  public $notice;
	static  public $zhaobiao;
	static  public $baogao;

	//导出错误时描述消息来源（在子类中覆盖此属性）
	public $source='articles';
	//数组中包含数据元的必选项
	protected $format = array('title','content','url');
	
	
	/**
	 *
	 *
	 * @param string $class ['news','nitice','baogao','zhaobiao']
	 * @param int $place 添加的文章的位置（数组索引+1）
	 * @param arrray $list 文章列表
	 */
	function addTo($class,$place,$list){
		$place = $place-1;//位置从一开始。(数组索引从零开始)
		$list = $this->checkTimeOut($list);
		$list = $this->checkFormat($list);
		if(array_key_exists($place, self::${$class})){
			$total = count(self::${$class});
			$addNum = count($list);
			 
			for($point=$total;$point>$place;$point--){
				self::${$class}[$point+$addNum] = self::${$class}[$point-1];
			}
			foreach ($list as $value) {
				self::${$class}[$place++] = $value;
			}
		}else{//位置在大于数组元素个数，放到最后并保持索引连续
			foreach ($list as $key => $articleData){
				self::${$class}[] = $articleData;
			}
		}
		ksort(self::${$class});
	}


	/**
	 *
	 * 状态信息写入更新日志。
	 * @param mixed $source 数据来源。
	 * @param string $state 状态信息，是否成功删除
	 * @param string $other 其他补充信息
	 */
	function writeLog($source,$state,$other=''){
		$myPath = dirname(__FILE__);
		$logFile = dirname($myPath).'/../cache/cache/updateLog.txt';
		//$logFile = '../cache/updateLog.txt';
		$handle = fopen($logFile, 'a');

		$string = 'date:'.date("Y-m-d H:i:s");
		$string .= '  from:'.$source;
		if($other){
			$string .= $other;
		}
		$string .= '  state:'.$state;
		$string .= "\n";
		fwrite($handle, $string);
		fclose($handle);
	}

	//数据写入缓存文件
	static  function writeCache($dataList=''){
		try{
			if(!$dataList){
				$dataList = array(
					'news'=>self::$news,
					'notice'=>self::$notice,
					'zhaobiao'=> self::$zhaobiao,
					'baogao'=>self::$baogao
				);
			}
			if(!$dataList['news']){   //判断读取数据是否正常
				
				self::writeLog('文章类写入缓存失败', 'false',"数据读取错误");
				die();
			}
			else {
			
				  $news_num=7;      ///控制保存新闻的条数	
				  //缓存存储位置
				  $myPath = dirname(__FILE__);//取得当下目录。
				  $cacheFile = dirname($myPath).'/../cache/cache/articleCache.php';//先由函数dirname返回上级目录
				  //$cacheFile = '../cache/articleCache.php';
				  include  "$cacheFile";//访问$cacheData可获得之前缓存的数据
				  $cacheData_old=$cacheData;
				  foreach ($dataList as $class=>$list) {
                      $old = $cacheData[$class];
						  if(is_array($old) && !empty($old))
							  foreach ($old as $dadum){ 
							  $dataList[$class][] = $dadum;
						      }
                  }
				  $array=self::diffList1($dataList,$news_num);
				  $change=$array['flags']; //用于记录新闻是否改变       
				  $dataList=$array['list'];

				  $string = "<?php \n";
				  $string .= "/*\n";
				  $string .= date("Y-m-d H:i:s");
				  $string .="*/\n";
				  //变量名
				  $string .='$cacheData = ';
					  
				  $string .=var_export($dataList,true);
				  $string .='  ?>';
				  $fileHandle = fopen($cacheFile, "w");
				  fwrite($fileHandle, $string);
				  fclose($fileHandle);
				  
				  
				  return  $change;
			}
		}
		catch (Exception $e){
			self::writeLog('文章类写入缓存失败', 'fail',$e->getMessage());
			return ;
		}
	}

    function  diffList1(array $array1,$news_num){	//对新闻数据中相同部分进行处理
		$change_num_1=11;		                   //记录数据是否更新
		foreach ($array1 as $class=>$list) { 
		    $array_new=NULL;
			$array_flags=NULL;
			$string=NULL;
			if($class=="notice"){
			    $change_num_2=2;
			}else{
				$change_num_2=3;
			}
			for($i=0;$i<count($list)-1;$i++)          //删除新闻中同一链接的数据
			{
				for($j=$i+1;$j<count($list);$j++){
					if($list[$i]['url']==$list[$j]['url']&&$j!=$i){
					array_splice($list,$j,1);	
					$change_num_1--;
					$change_num_2--;
					$j--;
				    }
			    }
			}
			if($change_num_2>0){             ///判断新闻是否更新，更新写入日志
				$string="  数据更新：";
				$string.="\n";
				for($i=0;$i<$change_num_2;$i++){
					$string.=$i+1;
					$string.=".";
					$string.="url:".$list[$i]['url'];
					$string.="\n";
				}
			}
			$repetition_num=0;
			for($i=0;$i<count($list)-1;$i++)          //判断数据是否有标题重复，链接不一样的，有记录其位置。
			{
				for($j=$i+1;$j<count($list);$j++){
					if(trim($list[$i]['title'])==trim($list[$j]['title'])&&$j!=$i){
						if($list[$i]['date']==$list[$j]['date']){
							$html_1=file($list[$i]['url']);
                            $size1= count($html_1);
							$html_2=file($list[$i]['url']);
                            $size2= count($html_2);
							 if($size1>$size2){
								 $array_flags[]=$i;
								 $repetition_num++;	 
							 }
							 else if($size1<=$size2){
								 $array_flags[]=$j;
								 $repetition_num++;
							 }
					    }
				    }
			    }
			}
			 $a=count($list);
			if($a-$repetition_num>=$news_num){                   //判断重复的数据删除后是否满足新闻所需的条数，
				//满足直接删除
				if($repetition_num>0){                    //将重复的数据写入日志
						$string.="  重复数据删除：";
				        $string.="\n";
				        for($i=0;$i<count($array_flags);$i++){
							$string.=$i+1;
							$string.=".";
							$string.="url:".$list[$array_flags[$i]]['url'];
							$string.="\n";
				        }						
				}
				for($i=0;$i<count($array_flags);$i++){										
					unset($list[$array_flags[$i]]);
				}
				for($i=0;$i<$a;$i++){
					if($list[$i]!=NULL){
						$array_new[]=$list[$i];
						}
				}
			}else
			{   //不满足，删除其一部分
				$b=count($list)-$news_num;
				
				if($b>0){                                //将重复的数据写入日志
						$string.="重复数据删除：";
				        $string.="\n";
				        for($i=0;$i<$b;$i++){
							$string.=$i+1;
							$string.=".";
							$string.="url:".$list[$array_flags[$i]]['url'];
							$string.="\n";
				        }
				}
				for($i=0;$i<$b;$i++){
					unset($list[$array_flags[$i]]);
				}	
				for($i=0;$i<$a;$i++){
					if($list[$i]!=NULL){
						$array_new[]=$list[$i];
					}	
				}
			}
			
			for($i=0;$i<$news_num;$i++){          //生成新的新闻列表
				$array2[$class][]=$array_new[$i];
			}
			if(count($array_new)>$news_num){             //将满足新闻条数后多余需删除的新闻写入日志  
				$string.="   多余数据删除：";
				for($i=$news_num;$i<count($array_new);$i++){
					$string.=$i-$news_num+1;
					$string.=".";
					$string.="url:".$list[$i]['url'];
					$string.="\n";
				}
				
			}
			if(count($array_new)>$news_num||$change_num_2>0||$repetition_num>0){self::writeLog($class,"true",$string);}     //调用函数写日志
        }		
		$array['list']=$array2;	
		$array['flags']=$change_num_1;
		return $array;
	}
	//查找在$array2中出现，但$array1中不出现的元素列表，由其地址确定
	protected  function diffList(array $array1,array $array2){
		$diff =array();
		$array2 = self::checkTimeOut($array2);
		foreach ($array2 as $value2){
			$finded = 0;
			foreach ($array1 as $value1){
				if($value1['url'] == $value2['url']){
					$finded = 1;
					break;
				}
			}
			if($finded==0){
				$diff[] = $value2;
			}
		}
		return $diff;
	}

	/**
	 * 查找并删除过期的数据
	 * 2012年8月6日21:38:01
	 * 要求数组元素下标连续
	 * 若数据限制显示的时间，在对应数据的数组中添加元素$articleData['validity'];表示显示的最后时间。
	 * 时间格式为【Y-m-d H:i:s】其中时分秒可忽略，但年份不可忽略表示数据在此日期前显示。
	 * @param unknown_type $articleList
	 *
	 */
	function checkTimeOut($articleList){
		for($key=0;$key<count($articleList);){
			if(key_exists('validity',$articleList[$key]) && strtotime($articleList[$key]['validity'])<time()){
				$this->writeLog($this->source, 'fail','消息'.$articleList[$key]['title'].'于'.$articleList[$key]['validity'].'过期');
				for($point=$key;$point<count($articleList);$point++){
					$articleList[$point] = $articleList[$point+1];
				}
				array_pop($articleList);
				//echo '<br />'.$key;
				//var_dump($articleList);
			}else{
				$key++;
			}
		}
		return $articleList;
	}


	function checkFormat($articleList){
		for($key=0;$key<count($articleList);){
			foreach ($this->format as $required){
				$isChange = 0;
				if(!key_exists($required, $articleList[$key]) || $articleList[$key][$required]==''){
					$isChange = 1;
					$this->writeLog($this->source, 'fail','数据中缺失必选值'.$required.'  $key='.$key);
					for($point=$key;$point<count($articleList);$point++){
						$articleList[$point] = $articleList[$point+1];
					}
					array_pop($articleList);
					break;
				}
			}
			if($isChange == 0){
				$key++;
			}
		}
	}



}//end of classArticle









//===============================================================================================//
class newsJson extends articles{

	//使用php处理json数据 ,并且$json为一个对象
	public $json;
	public $jsonApi = "http://210.45.241.153/api.php?op=get_index";

	public $source = '新闻网';
	//单独的新闻网数据写入缓存
	//public $newsFile = 'newsCache.php';

	function __construct($json,$jsonApi=''){
		$this->json = $json;
		if($jsonApi){
			$this->jsonApi = $jsonApi;
		}
	}

    /*判断 $jsonApi 是否有效；*/
	public function url_exists($url) 
  { 
		$ch = curl_init(); 
		curl_setopt($ch, CURLOPT_URL,$url); 
		curl_setopt($ch, CURLOPT_NOBODY, 1); 
		curl_setopt($ch, CURLOPT_FAILONERROR, 1); 
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
		return (curl_exec($ch)!==false) ? true : false; 
	} 
	/**
	 * 获得数据并将json转化为指定数组格式
	 * @param string $jsonApi eg:"http://210.45.241.153/api.php?op=get_index"
	 */
	public function getData(){
		if($this->url_exists($this->jsonApi)){
		$fp = file($this->jsonApi);
		$jsonData = implode('', $fp);
		$articleList = $this->json->decode($jsonData);

		$articleList = $this->objectToArray($articleList);
		//转化为数组形式
		foreach($articleList as $class => $list){
			foreach($list as $key=>$objectData){
				$articleList[$class][$key] = $this->objectToArray($objectData);
				
			    $articleList[$class][$key]['date2']=date("Y-m-d H:i:s");//增加获取时间	
			}
		}
		$newurl="http://news.hfut.edu.cn/index.php?m=content&c=index&a=mrbs";//删除一周会议；
		if($articleList['notice'][0]['url']==$newurl)unset($articleList['notice'][0]);
		return $articleList;
		}else{
			$this->writeLog("新闻网(类newsJson)", "false", " API: $this->jsonApi");
			die();
			
		}
	}


	/**
	 *
	 * 添加数据到列表中，
	 * @param unknown_type $articleList
	 * @param unknown_type $jsonApi
	 */
	public function add($articleList=''){
		if(!$articleList){
			$articleList = $this->getData();
		}
		foreach($articleList as $class=>$list){
			$list = $this->checkTimeOut($list);
			foreach ($list as $key=>$articleData) {
				parent::${$class}[] = $articleData;
			}
		}
		$this->writeLog("新闻网(类newsJson)", "true", " API: $this->jsonApi");
	}


	protected function objectToArray($object){
		$arr = (Array) $object;
		foreach($arr as $key => $value) {
			unset($arr[$key]);
			$arr[preg_replace('/^.+\0/', '', $key)] = $value;
		}
		return $arr;
	}
}

//===============================================================================================//

require_once 'JSON.php';

//$myPath = dirname(__FILE__);
$json = new Services_JSON();
$jsonNews = new newsJson($json, '');
$jsonNews->add();

$change =articles::writeCache();


$url = "http://news.hfut.edu.cn/"; 

$array=file($url);            //以数组的形式读取网页

foreach ($array as $key => $value) {              //查找网页新闻图片的开始位置

	if(trim($value)=="<div class=\"changeDiv\">"){
		$id1=$key;
		}
}
foreach ($array as $key => $value) {           //查找网页新闻图片的结束位置

	if(trim($value)=="</div>"){
		$i=$key;
		if($i>$id1)break;
		}
}
$id2=$i;

$i=0;
foreach ($array as $key => $value) {             //读取新闻图片信息

	if($i>$id1&&$i<$id2){
		
		$data[]=&trim($value);
		}
		$i++;		
}
$i=0;  
while($data[$i]!=''){                          //提取有用信息
$string=$data[$i]; 
//echo $string;
$data2=explode('"',$string);
$image[$i]['image']=$data2[7];
$image[$i]['url']=$data2[1];
$image[$i]['title']=$data2[5];
$i++;
}
//写image.php文件；
            $myPath = dirname(__FILE__);//取得当下目录。
			$cacheFile = dirname($myPath).'/../cache/cache/image.php';//先由函数dirname返回上级目录       
            $string = "<?php \n";
			$string .= "/*\n";
			$string .= date("Y-m-d H:i:s");
			$string .="*/\n";
			//变量名
		
			$string .='$image= ';
				
			$string .=var_export($image,true);
			$string .='  ?>';
			$fileHandle = fopen($cacheFile, "w");
			fwrite($fileHandle, $string);
			fclose($fileHandle);

if($change){
include 'replace.php';
}

?>