<?php
defined( 'ABSPATH' ) OR exit; //запрет запуска файла напрямую, в обход wp-config.php
/*
Plugin Name: 	viktorr1975-copy-post
Description: 	Project for study and testing purpose. Plugin exports and inports selected posts.
Version: 		0.1.0
License:     	GPLv2 or later
License URI: 	https://www.gnu.org/licenses/gpl-2.0.html
*/
/*переменные и константы, которые требуется устанавливать для каждой версии плагина
использоваться они могут и в других файлах плагина
*/
$viktorr1975_copy_post_NEED_PHP = '5.2';	//младшая версия php с которой плагин совместим
$viktorr1975_copy_post_NEED_WP = '4.1';	//младшая версия Wordpress с которой плагин совместим
$viktorr1975_copy_post_VER = '0.1.0';	//keep plugin version
$viktorr1975_copy_post_DB_VER = 2;		//keep database version. each time database schema changes you need to increment this one by 1

require 'check-php-wp-version.php';	//проверка версии php и Wordpress
//require 'dashboard-menu.php';		//Создание меню на странице администрирования
require 'check-plugin-version.php';	//проверка необходимости обновления плагина
require	'import-export.php';		//функции по переносу статей
//to detect whether a previous version of our plugin has been installed or not
/*
Шаблоны функций активации, деактивации и удаления взяты из http://wordpress.stackexchange.com/questions/25910/uninstall-activate-deactivate-a-plugin-typical-features-how-to/25979#25979 
Также использованы материалы http://solislab.com/blog/plugin-activation-checklist/
*/
function viktorr1975_copy_post_on_activation()
{
	if ( ! current_user_can( 'activate_plugins' ) )
		return;
	$plugin = isset( $_REQUEST['plugin'] ) ? $_REQUEST['plugin'] : '';
	check_admin_referer( "activate-plugin_{$plugin}" );
	
	 /*** Initialize default option values*/
// by using add_option, if these options have already been initialized, they will not be overwritten
	//add_option( 'solis_posts_per_page', 10 );
	//add_option( 'solis_show_welcome_page', true );
	
	
	// Расcкомментируйте эту строку, чтобы увидеть функцию в действии
	// exit( var_dump( $_GET ) );
}

function viktorr1975_copy_post_on_deactivation()
{
	if ( ! current_user_can( 'activate_plugins' ) )
		return;
	$plugin = isset( $_REQUEST['plugin'] ) ? $_REQUEST['plugin'] : '';
	check_admin_referer( "deactivate-plugin_{$plugin}" );

	// Расcкомментируйте эту строку, чтобы увидеть функцию в действии
	// exit( var_dump( $_GET ) );
}

function viktorr1975_copy_post_on_uninstall()
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
register_activation_hook(   __FILE__, 'viktorr1975_copy_post_on_activation' );
register_deactivation_hook( __FILE__, 'viktorr1975_copy_post_on_deactivation' );
register_uninstall_hook(    __FILE__, 'viktorr1975_copy_post_on_uninstall' );

/*the plugin activation hook  is not triggered when plugin is updated. So what we need to do is to also check for db version change on plugins_loaded.*/
add_action( 'plugins_loaded', 'maybe_update' , 1 );

?>