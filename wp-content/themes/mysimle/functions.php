<?php
/**
 * Регистрация sidebar для страницы.
 * Регистрация с помощью add_action позволит при необходимости в дочерней теме отключить р * егистрацию
 * 
 */
add_action('widgets_init','my_register_sidebars');
 function my_register_sidebars(){
 	register_sidebar(
 		array(
 		'id'=>'primary',
 		'name'=>__('Primary'),
 		'description'=>__('Первый боковичок. Может быть как левым, так и правым'),
 		'before_widget'=>'<div id="%1$s" class="widget %2$s">',
 		'after_widget'=>'</div>',
 		'before_title'=>'<h3 class="widget-title">',
 		'after_title'=>'</h3>'
 		)
 	);
 }
 add_theme_support('automatic-feed-links');
 add_theme_support( 'custom-header' );
?>