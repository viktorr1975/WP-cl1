<?php
$temp_var=ABSPATH . 'wp-admin\includes\plugin.php';
require_once( ABSPATH . 'wp-admin/includes/plugin.php' );
//проверка версии php и Wordpress
global $wp_version;

if ( version_compare( PHP_VERSION, $viktorr1975_copy_post_NEED_PHP, '<' ) ) {
	deactivate_plugins( plugin_basename( __FILE__ ) );
	wp_die('<p>' . sprintf(__( 'This plugin can not be activated because it requires a PHP version greater than %1$s. Your PHP version can be updated by your hosting company.', 'my_plugin' ),$viktorr1975_copy_post_NEED_PHP). '</p> <a href="' . admin_url( 'plugins.php' ) . '">' . __( 'go back', 'my_plugin' ) . '</a>');
}
if ( version_compare( $wp_version, $viktorr1975_copy_post_NEED_WP, '<' ) ) {
	deactivate_plugins( plugin_basename( __FILE__ ) );
	wp_die('<p>' . sprintf(__( 'This plugin can not be activated because it requires a WordPress version greater than %1$s. Please go to Dashboard &#9656; Updates to gran the latest version of WordPress .', 'my_plugin' ),$viktorr1975_copy_post_NEED_WP). '</p> <a href="' . admin_url( 'plugins.php' ) . '">' . __( 'go back', 'my_plugin' ) . '</a>');

}
?>