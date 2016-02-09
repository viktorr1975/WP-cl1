<?php
/*Создание элементов управления опциями плагина */
/**
* за основу взяты примеры из:
* http://wp-kama.ru/id_3773/api-optsiy-nastroek.html#kcmenu
* https://developer.wordpress.org/plugins/settings/creating-and-using-options/
*/

add_action( 'admin_init', 'viktorr1975_settings_api_init' );	//Вешаем все секции, поля и опции на хук admin_init
add_action( 'admin_menu', 'viktorr1975_add_options_submenu_page' );
/**
 * Add an admin submenu link under Settings
 */
function viktorr1975_add_options_submenu_page() {
     add_options_page(          
          __( 'viktorr1975 Options', 'viktorr1975 plugin' ), // page title
          __( 'viktorr1975 Options', 'viktorr1975 plugin' ), // menu title
          'manage_options',               // capability required to see the page
          'viktorr1975_options',                // admin page slug, e.g. options-general.php?page=viktorr1975_options
          'viktorr1975_options_page'            // callback function to display the options page
     );
}

function viktorr1975_settings_api_init() {
	// Добавляем блок опций на страницу с опциями viktorr1975_options
	add_settings_section(
		'viktorr1975_setting_section', // секция
		'Заголовок для секции настроек',
		'viktorr1975_setting_section_callback_function',
		'viktorr1975_options' // страница
	);

	// Добавляем поля опций. Указываем название, описание, 
	// функцию выводящую html код поля опции.
	add_settings_field(
		'viktorr1975_setting_name1',
		'Описание поля опции',
		'viktorr1975_setting_callback_function', // можно указать ''
		'viktorr1975_options', // страница
		'viktorr1975_setting_section' // секция, в которой будет поле
	);
	add_settings_field(
		'viktorr1975_setting_name2',
		'Описание поля опции2',
		'viktorr1975_setting_callback_function2',
		'viktorr1975_options', // страница
		'viktorr1975_setting_section' // секция
	);

	// Регистрируем опции, чтобы они сохранялись при отправке 
	// $_POST параметров и чтобы callback функции опций выводили их значение.
	register_setting( 'viktorr1975_options', 'viktorr1975_setting_name1', 'sanitize_viktorr1975_options' );
//	register_setting( 'viktorr1975_options', 'viktorr1975_setting_name2' );
}

// ------------------------------------------------------------------
// Сallback функция для секции
// ------------------------------------------------------------------
//
// Функция срабатывает в начале секции, если не нужно вывдить 
// никакой текст или делать что-то еще до того как выводить опции, 
// то функцию можно не использовать для этого укажите '' в третьем 
// параметре add_settings_section
//
function viktorr1975_setting_section_callback_function() {
	echo '<p>Текст описывающий блок настроек</p>';
}

// ------------------------------------------------------------------
// Callback функции выводящие HTML код опций
// ------------------------------------------------------------------
//
// Создаем checkbox и text input теги
//
function viktorr1975_setting_callback_function() {
	$val=get_option( 'viktorr1975_setting_name1' );
	$val=$val['check'];
	echo '<input 
		name="viktorr1975_setting_name1[check]" 
		type="checkbox" 
		value="1"  
		' . checked( 1, esc_html($val), false ) . ' 
	/>';
}
function viktorr1975_setting_callback_function2() {
	$val=get_option( 'viktorr1975_setting_name1' );
	$val=$val['textbox'];
	echo '<input 
		name="viktorr1975_setting_name1[textbox]"  
		type="text" 
		value="' . esc_html($val) . '" 
	 />';
}

/**
 * Build the options page
 */
function viktorr1975_options_page() { ?>
      <div class="wrap">         
          <h2> <?php echo esc_html( get_admin_page_title() ); ?></h2>           
          <div id="poststuff">
               <div id="post-body">
                    <div id="post-body-content">
                         <form method="POST" action="options.php">
                              <?php settings_fields( 'viktorr1975_options' ); 	// скрытые защитные поля
                                   do_settings_sections('viktorr1975_options'); //выводим секцию с опциями
                                   submit_button(); ?>
                         </form>
                    </div> <!-- end post-body-content -->
               </div> <!-- end post-body -->
          </div> <!-- end poststuff -->
     </div>
<?php
} 

//чистка данных
function sanitize_viktorr1975_options( $options ){ 
	// очищаем
	foreach( $options as $name => & $val ){
		if( $name == 'textbox' )
			$val = strip_tags( $val );

		if( $name == 'checkbox' )
			$val = intval( $val );
	}

	//die(print_r( $options )); // Array ( [textbox] => aaaa [checkbox] => 1 )

	return $options;
}?>