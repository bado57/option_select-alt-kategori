<?php
  //error_reporting(0);
     try{
       $db  =new  PDO("mysql:host=localhost;dbname=kategori_option; charset=utf8",  "root",   "");
       $db-> query("SET CHARACTER SET utf8");
     }catch(PDOExcepiton    $e){
         print  $e ->getMessage();
     }
	 

?>
