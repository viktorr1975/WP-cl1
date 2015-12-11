<?php
defined( 'ABSPATH' ) OR exit; //запрет запуска файла напрямую, в обход wp-config.php
/*
Plugin Name: 	viktorr1975-copy-post
Description: 	Project for study and testing purpose. Plugin exports and inports selected posts.
Version: 		0.1.0
License:     	GPLv2 or later
License URI: 	https://www.gnu.org/licenses/gpl-2.0.html
*/
//Шаблоны функций активации, деактивации и удаления взяты из http://wordpress.stackexchange.com/questions/25910/uninstall-activate-deactivate-a-plugin-typical-features-how-to/25979#25979
function WCM_Setup_Demo_on_activation()
{
	if ( ! current_user_can( 'activate_plugins' ) )
		return;
	$plugin = isset( $_REQUEST['plugin'] ) ? $_REQUEST['plugin'] : '';
	check_admin_referer( "activate-plugin_{$plugin}" );

	// Расcкомментируйте эту строку, чтобы увидеть функцию в действии
	// exit( var_dump( $_GET ) );
}

function WCM_Setup_Demo_on_deactivation()
{
	if ( ! current_user_can( 'activate_plugins' ) )
		return;
	$plugin = isset( $_REQUEST['plugin'] ) ? $_REQUEST['plugin'] : '';
	check_admin_referer( "deactivate-plugin_{$plugin}" );

	// Расcкомментируйте эту строку, чтобы увидеть функцию в действии
	// exit( var_dump( $_GET ) );
}

function WCM_Setup_Demo_on_uninstall()
{
	if ( ! current_user_can( 'activate_plugins' ) )
		return;
	check_admin_referer( 'bulk-plugins' );

	// Важно: проверим тот ли это файл, который
	// был зарегистрирован в процессе хука удаления.
	if ( __FILE__ != WP_UNINSTALL_PLUGIN )
		return;

	// Раскомментируйте эту строку, чтобы увидеть функцию в действии
	// exit( var_dump( $_GET ) );
}

register_activation_hook(   __FILE__, 'WCM_Setup_Demo_on_activation' );
register_deactivation_hook( __FILE__, 'WCM_Setup_Demo_on_deactivation' );
register_uninstall_hook(    __FILE__, 'WCM_Setup_Demo_on_uninstall' );
?>