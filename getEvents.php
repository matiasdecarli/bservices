<?php
	
	function conexion (&$link){
		/**
		$link = mysql_connect("localhost","root");
		mysql_select_db ("bservices", $link) or die ("DB Error");
		**/
		// Esto es para que conecte con appfog
		$services_json = json_decode(getenv("VCAP_SERVICES"),true);
		$mysql_config = $services_json["mysql-5.1"][0]["credentials"];
		$username = $mysql_config["username"];
		$password = $mysql_config["password"];
		$hostname = $mysql_config["hostname"];
		$port = $mysql_config["port"];
		$db = $mysql_config["name"];
		$link = mysql_connect("$hostname:$port", $username, $password);
		$db_selected = mysql_select_db($db, $link) or die ("DB Error");
		
	}
	
	conexion($link);	

	//get events
	$sql = " SELECT e.id, e.name, e.location, e.place, e_t.name as event FROM event as e left join event_type as e_t on e.id=e_t.id ";

	$res = mysql_query($sql);

	while ($fila = mysql_fetch_array($res)){			

		//get associated hashtags
		$sql2= 'SELECT *
				FROM hashtag as h 
				     join event_hash as e_h on e_h.id_hashtag = h.id
				     join event as e on e_h.id_event = e.id
				WHERE 
				     e.id = '.$fila['id'];
		$res2 = mysql_query($sql2);

		$hashtags='';
		while ($fila2 = mysql_fetch_array($res2)){		

			$hashtags.= $fila2['hashtag'].',';

		}		     
		$hashtags = substr($hashtags,0,strlen($hashtags)-1);
		
		//prepare to encode
		$data[]= array('name' => $fila['name'], 'location' => $fila['location'], 'place' => $fila['place'],'event' => $fila['event'],'hashtags' =>  $hashtags );

	}	

	echo json_encode($data);

?>	