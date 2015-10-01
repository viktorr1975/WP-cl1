<?php
/*
 * Template Name: SidebarPage
 * Description: A Page Template to show page content with sidebar.
 * 
 */
//************* ��� ��������� �������� ������������ WP_Query *************
$query_args=array('page_id'=>'22');	//WP_Query arguments
$my_query=new WP_Query($query_args);	//������� ���������� ��������  ��  ��
get_sidebar('primary');
if ($my_query->have_posts()){	//Loop
	while($my_query->have_posts()){
		$my_query->the_post();
		echo"<h2>".the_title('','',false)."</h2>";
		the_content();
	}//while($my_query->have_posts()){
}//if ($my_query->have_posts()){	//Loop
wp_reset_postdata();	//Restory original post data

