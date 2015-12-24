<?php
//Manage Plugin Version
update_option( 'viktorr1975_copy_post_ver', $GLOBALS['viktorr1975_copy_post_VER'] );	//version always apdated
add_option( 'viktorr1975_copy_post_db_ver', $GLOBALS['viktorr1975_copy_post_DB_VER'] );	//keep old version if exist

maybe_update();

function maybe_update() {
	// check if this plugin data need updating
	if ( get_option( 'viktorr1975_copy_post_db_ver' ) >= $GLOBALS['viktorr1975_copy_post_DB_VER'] )
	{
			return;
		}
		//можно процедуры обновления вынести в отдельный подкаталог: require_once( __DIR__ . '/update.php' );
		viktorr1975_copy__update();
}
/**
* Run the incremental updates one by one.
*
* For example, if the current DB version is 3, and the target DB version is 6,
* this function will execute update routines if they exist:
*  - viktorr1975_copy__update_routine_4()
*  - viktorr1975_copy__update_routine_5()
*  - viktorr1975_copy__update_routine_6()
*/
function viktorr1975_copy__update() {
	// no PHP timeout for running updates
	set_time_limit( 0 );
	  
	// this is the current database schema version number
	$current_db_ver = get_option( 'viktorr1975_copy_post_db_ver' );
	 
	// this is the target version that we need to reach
	$target_db_ver = $GLOBALS['viktorr1975_copy_post_DB_VER'];
	 
	// run update routines one by one until the current version number
	// reaches the target version number
	while ( $current_db_ver < $target_db_ver ) {
		// increment the current db_ver by one
		$current_db_ver ++;
		 
		// each db version will require a separate update function
		// for example, for db_ver 3, the function name should be viktorr1975_copy_update_routine_3
		$func = "viktorr1975_copy_post_update_routine_{$current_db_ver}";
		if ( function_exists( $func ) ) {
			call_user_func( $func );
		}
	 
		// update the option in the database, so that this process can always
		// pick up where it left off
		update_option( 'viktorr1975_copy_post_db_ver', $current_db_ver );
	}
}

/**
* Функция обновления схемы базы данных плагина до версии 2 базы данных
*/
function viktorr1975_copy_post_update_routine_2() {
	//$coffee_consumed = get_option( 'solis_coffee_consumed' );
	//update_option( 'solis_coffee_consumed', $coffee_consumed + 22 );
	/*Не стоит удалять не используемые в новой версии опции, т.к. твой плагин могут использовать другие плагины или пользователь захочет вернуться к старой версии*/
	//add_option( 'solis_coffee_consumed', 0 ); <--- delete this line
}
?>