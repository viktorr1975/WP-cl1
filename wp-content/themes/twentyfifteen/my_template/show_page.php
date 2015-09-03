<?php
/*
 * Template Name: ShowPage
 * Description: A Page Template to show page content.
 * 
 */
//************* для получения страницы используется WP_Query *************
$query_args=array('page_id'=>'22');	//WP_Query arguments
$my_query=new WP_Query($query_args);	//получим содержимое страницы  из  БД

if ($my_query->have_posts()){	//Loop
	while($my_query->have_posts()){
		$my_query->the_post();
		echo"<h2>".the_title('','',false)."</h2>";
		the_content();
	}//while($my_query->have_posts()){
}//if ($my_query->have_posts()){	//Loop
wp_reset_postdata();	//Restory original post data

//************* для получения страницы используется get_pages() *************
echo("<p><em>Next method </em></p>");
global $my_page;
$selected_pages=get_pages((array('include'=>array('22'))));	//запросим страницу 22
foreach($selected_pages as $my_page){
	setup_postdata($my_page);
	echo"<h2>".the_title('','',false)."</h2>";
		the_content();
}
//************* для получения страницы используется get_post() *************
echo("<p><em>Next method </em></p>");
$page_data = get_post('22');
if($page_data){
	echo "<h2>".$page_data->post_title."</h2>";
	echo "<p>".$page_data->post_content."</p>";
}
?>
