<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
 <!--Kodlaması Bayram ALTINIŞIK'a ait.
   Teşekkür için reklama tıklamanız yeterlidir :)
   iletisim: http://www.softwareline.net
 -->
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<style type="text/css">@import url("css/kategori.css");</style>

	<title>KATEGORİ UYGULAMASI</title>
</head>

<body>
    <span id=text>Ana kategori ve alt kategoriler</span>
	<div id="kategori">
		<ul class="anasayfa">
		<?php 		  
	     $query  =$db->query("SELECT  * FROM ana_kategori ORDER BY kategori_id  ASC",PDO::FETCH_ASSOC);
	     if ($query -> rowCount()) {
          foreach ($query   as  $row) {
            echo '<li id="'.$row["kategori_id"].'"><a href="#">'.$row["kategori_adi"].'</a>'; 
				$querym =$db->query("SELECT * FROM alt_kategoriler WHERE alt_ana_kategori=".$row["kategori_id"]."");
				if($querym -> rowCount()){ 
				 echo '<ul id="'.$row["kategori_id"].'" >';
				 foreach ($querym as $row){
				   echo '<li><a href="#">'.$row["alt_kategori_adi"].'</a></li>';
				  }
			echo '</ul>';
          }
      } 
	}
	  ?>
	</ul>
	</div>
	<div id="alt_kategori">
		<ul>
		<span>Option'da Kategori ve Alt Kategoriler:</span><br/>
		<select name="salt_ana_kategori">
			 <?php
			 $query  =$db->query("SELECT  * FROM ana_kategori ORDER BY kategori_id  ASC",PDO::FETCH_ASSOC);
			  if ($query -> rowCount()) {
				  foreach ($query   as  $katRow) {
					echo '<option value="asd">&'.$katRow["kategori_adi"].'</option>';
					$querym =$db->query("SELECT * FROM alt_kategoriler WHERE alt_ana_kategori=".$katRow["kategori_id"]."");
				    if($querym->rowCount()){
					  foreach ($querym as $row){
					   echo '<option value="ads">--'.$row["alt_kategori_adi"].'</option>';
					  }
					}
				  }
			  }
			?>
		</select>
		</ul>
	</div>
</body>
</html>