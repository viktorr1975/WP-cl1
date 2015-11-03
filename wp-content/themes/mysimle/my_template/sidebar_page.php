<?php
/*
 * Template Name: SidebarPage
 * Description: A Page Template to show page content with sidebar.
 * 
 */
?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <title><?php wp_title(); ?></title>
    <link rel="profile" href="http://gmpg.org/xfn/11" />
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <link rel="stylesheet" href="<?php bloginfo( 'stylesheet_url');?>" type="text/css" />
    <?php if ( is_singular() && get_option( 'thread_comments' ) ) wp_enqueue_script( 'comment-reply' ); ?>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>

<div id=header>

</div>
<div id=wrapper>
<?php get_sidebar('primary');?>
<div id=content> 
<?php
//************* WP_Query *************
$query_args=array('page_id'=>'37');	//WP_Query arguments
$my_query=new WP_Query($query_args);	
if ($my_query->have_posts()){	//Loop
	while($my_query->have_posts()){
		$my_query->the_post();
		echo"<h2>".the_title('','',false)."</h2>";
		the_content();
	}//while($my_query->have_posts()){
}//if ($my_query->have_posts()){	//Loop
wp_reset_postdata();	//Restory original post data
?>
</div>
</div>
<div id=footer>
Somthing about me
</div>

<?php wp_footer(); ?>
</body>
</html>