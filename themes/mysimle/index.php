<?php
/*
Template Name: Mysimple
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
<div id=wrapper>
<div id=header>

</div>

<?php wp_nav_menu( $args ); ?>


<div id=content>
<?php			//the Loop
if ( have_posts() ) :
	while ( have_posts() ) : the_post();     
		echo"<h2>".the_title('','',false)."</h2>";
		the_content();
	endwhile; 
endif; ?>
</div>
<div id=footer>

</div>
</div>
<?php wp_footer(); ?>
</body>
</html>
