<?php
	
	function conexion (&$link){

		$link = mysql_connect("localhost","root");
		mysql_select_db ("bservices", $link) or die ("DB Error");
		
	}
	
	conexion($link);	

	$sql = "SELECT * FROM events";
	$res = mysql_query($sql);

	while ($fila = mysql_fetch_array($res)){
		$data[]= $fila['name'].','.$fila['location'];
	}	

	echo json_encode($data);

?>	