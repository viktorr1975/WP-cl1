<?php
/*Создание меню на странице администрирования */
/**
* Register the "About My Plugin" page
*/
function register_admin_menu() {
	add_plugins_page( 'About viktorr1975-copy-post Plugin', 'About viktorr1975-copy-post', 'manage_options', 'about-viktorr1975-copy-post-plugin', 'display_about_page' );
}
 /**
* Output the HTML for the about page
*/
function display_about_page() {
// output the HTML code here
	if ( ! current_user_can( 'manage_options' ) ){
		echo '<div class="wrap"><h2>' . sprintf(__( 'You need  "manage_options" capability to see options page. ' . '</h2></div> <a href="') . admin_url( 'index.php' ) . '">' . __( 'go back', 'Plagins page' ) . '</a>');
	}
	else{
	echo '<div class="wrap"><h2>Welcome to My Awesome viktorr1975-copy-post Plugin</h2></div>';		
	}
	
} 
add_action( 'admin_menu',  'register_admin_menu' );
?>