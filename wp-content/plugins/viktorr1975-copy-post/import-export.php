<?php
/**
 * Based on the post https://www.skyverge.com/blog/add-custom-bulk-action/
 */
//будем экспортировать поля: post_content, post_title, post_excerpt, post_status, post_name, guid
//Экспорт и импорт выполняется для баз данных имеющих одинаковые имена таблицы с постами

if(is_admin()) {
	// admin actions/filters
	add_action('admin_footer-edit.php', 'custom_bulk_admin_footer');	// Fired on the page with the posts table
	add_action('load-edit.php','custom_bulk_action');	//load the wp admin edit.php post listing page
	add_action('admin_notices', 'custom_bulk_admin_notices');
	
}
/**
 * Step 1: add the custom Bulk Action to the select menus
 */
function custom_bulk_admin_footer() {
	global $post_type;
	
	if(($post_type == 'post')or ($post_type == 'page')) {
		?>
			<script type="text/javascript">
				jQuery(document).ready(function() {
					jQuery('<option>').val('export').text('<?php _e('Export')?>').appendTo("select[name='action']");	//inject our new bulk action item into the upper bulk action select dropdown control on the Posts edit page
					jQuery('<option>').val('export').text('<?php _e('Export')?>').appendTo("select[name='action2']");	//inject our new bulk action item into the botom bulk action select dropdown control on the Posts edit page
				});
			</script>
		<?php
	}
}

/**
 * Step 2: handle the custom Bulk Action
 * 
 * Based on the post http://wordpress.stackexchange.com/questions/29822/custom-bulk-action
 */
function custom_bulk_action() {
	global $typenow;
	$post_type = $typenow;

	if(($post_type == 'post')or ($post_type == 'page')) {
	
//	if($post_type == 'post') {
		
		// get the action
		$wp_list_table = _get_list_table('WP_Posts_List_Table');  // depending on your resource type this could be WP_Users_List_Table, WP_Comments_List_Table, etc
		$action = $wp_list_table->current_action();
		
		$allowed_actions = array("export");
		if(!in_array($action, $allowed_actions)) return;
		
		// security check
		check_admin_referer('bulk-posts');
		
		// make sure ids are submitted.  depending on the resource type, this may be 'media' or 'ids'
		if(isset($_REQUEST['post'])) {
			$post_ids = array_map('intval', $_REQUEST['post']);	//проверка что входные величины - числа.
		}
		
		if(empty($post_ids)) return;
		
		// this is based on wp-admin/edit.php
		$sendback = remove_query_arg( array('exported', 'untrashed', 'deleted', 'ids'), wp_get_referer() );
		if ( ! $sendback )
			$sendback = admin_url( "edit.php?post_type=$post_type" );
		
		$pagenum = $wp_list_table->get_pagenum();
		$sendback = add_query_arg( 'paged', $pagenum, $sendback );
		
		switch($action) {
			case 'export':
				
				// if we set up user permissions/capabilities, the code might look like:
				//if ( !current_user_can($post_type_object->cap->export_post, $post_id) )
				//	wp_die( __('You are not allowed to export this post.') );
				
//				$exported = 10;
//				foreach( $post_ids as $post_id ) {
				$exported = perform_export($post_ids);
				if ( !$exported)
					wp_die( __('Error exporting post.') );
	
//					$exported++;
//				}
				
				
				$sendback = add_query_arg( array('exported' => $exported, 'ids' => join(',', $post_ids) ), $sendback );
			break;
			
			default: return;
		}
		
		$sendback = remove_query_arg( array('action', 'action2', 'tags_input', 'post_author', 'comment_status', 'ping_status', '_status',  'post', 'bulk_edit', 'post_view'), $sendback );
		
		wp_redirect($sendback);
		exit();
	}
}

/**
 * Step 3: display an admin notice on the Posts page after exporting
 */
function custom_bulk_admin_notices() {
	global $post_type, $pagenow;
//	$expor=number_format_i18n($_REQUEST['ids'] );
	if($pagenow == 'edit.php' && $post_type == 'post' && isset($_REQUEST['exported']) && (int) $_REQUEST['exported']) {
		$message = sprintf( _n( 'Post %s exported.', 'Posts: %s  exported.', $_REQUEST['exported']) , $_REQUEST['exported']);
		echo "<div class=\"updated\"><p>{$message}</p></div>";
	}
	else if($pagenow == 'edit.php' && $post_type == 'page' && isset($_REQUEST['exported']) && (int) $_REQUEST['exported']) {
		$message = sprintf( _n( 'Page %s exported.', 'Pages: %s  exported.', $_REQUEST['exported']) , $_REQUEST['exported']);
		echo "<div class=\"updated\"><p>{$message}</p></div>";
	}
}

//функция экспортирует в sql-файл посты по идентификаторам
//$post_ids - идентификатор или массив идентификаторов постов, которые экспортируются
function perform_export($post_ids) {
	// Declare $wpdb as global and using it to execute an SQL query statement that returns a PHP object
	global $wpdb;
	$comma_separated_post_ids = implode(",", $post_ids);
	//$comma_separated_post_ids = is_array($post_ids) ? implode("','", $post_ids) : $post_ids;	//если экспортируется нескольно постов, сделаем список номеров постов	
	//не проверяем запрос на SQL-injection, т.к. входные величины уже проверены ($post_ids = array_map('intval', $_REQUEST['post']);	//проверка что входные величины - числа.)
	$sql_str="SELECT ID, post_content, post_title, post_excerpt, post_status, post_name, post_type, guid FROM $wpdb->posts
			WHERE  ID IN ($comma_separated_post_ids)";
	$result = $wpdb->get_results( $sql_str);//получим из БД данные выбранных постов
/*!!! Можно вставить проверку на успешность запроса	
    if empty ($result) {//проверим на успешность запроса данных из БД
	    не найдены посты по запрошеным номерам постов
	    return NULL;
    }
*/
	$db_host = get_home_url(null,"",'http');
	$db_name = $wpdb->dbname;
	$table = $wpdb->posts;
	$dump = "-- WP Live Server Deploy MySQL Dump 0.2\n"
    ."--\n"
    ."-- Host: ".$db_host."    Database: ".$db_name."\n"
    ."-- ------------------------------------------------------\n"
    ."-- Server version	".mysql_get_server_info()."\n";
  	$dump .= "-- \n-- Dumping data for table `".$table."`\n--\n\n";
    $dump .= "LOCK TABLES `".$table."` WRITE;\n";
    $dump .= "/*!40000 ALTER TABLE `".$table."` DISABLE KEYS */;\n";	//http://dev.mysql.com/doc/refman/5.5/en/mysqldump.html
	$exported="";	//число экспортированных постов
    foreach ( $result as $NextPost ) 
	{
        $dump .=$wpdb->prepare("INSERT INTO `$table` ( post_content, post_title, post_excerpt, post_status, post_name, post_type, guid ) VALUES (%s,%s,%s,%s,%s,%s,%s);\n",$NextPost->post_content, $NextPost->post_title, $NextPost->post_excerpt, $NextPost->post_status, $NextPost->post_name, $NextPost->post_type, $NextPost->guid);   //$wpdb->prepare для экранирования(sql-escape) спецсимволов sql в посте      
        $exported=$exported. " " . $NextPost->ID;	//экспортированные посты
	}
	$dump .= "/*!40000 ALTER TABLE `".$table."` ENABLE KEYS */;\n";	
   	$dump .= "UNLOCK TABLES;\n";  
   	$filename = ABSPATH . "posts-export-" . date("d-m-Y") . ".sql";
//  	$out = fopen($filename, "wb");
  //	if(! $out)
	//	return null;	//не удалось открыть файл экспорта
	if(! file_put_contents($filename, $dump))
		return null;	//не удалось записать файл экспорта
//	fclose($out);
	return $exported;
}
//функция экспортирует в sql-файл посты по идентификаторам
//$post_ids - идентификатор или массив идентификаторов постов, которые экспортируются
function perform_import() {
	global $wpdb;	// Declare $wpdb as global and using it to execute an SQL query statement that returns a PHP object	
	$file_name = ABSPATH . "posts-export-03-02-2016.sql";
	$sql_dump=file_get_contents($file_name);
	if(!$sql_dump)
		return null;	//не удалось открыть файл с данными	
    $contents = explode("\n",$sql_dump);
    $templine = '';
    foreach($contents as $line) {
        if (substr($line, 0, 2) == '/*' || substr($line, 0, 2) == '--' || $line == '')
            continue;
        
        $templine .= $line;
        if (substr(trim($line), -1, 1) == ';') {
            if(false === $wpdb->query($templine)) {
//!!!!! потестить на ошибки            	
                $wpdb->print_error();
            }
            $templine = '';
        }
    }
}
?>