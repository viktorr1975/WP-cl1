<?php
/**
 * The primary sidebar containing the custom widget area
 *
 */

<?php if ( is_active_sidebar( 'primary' ) ) : ?>
	<div id="primary-sidebar" class="primary-sidebar" role="complementary">
		<?php dynamic_sidebar( 'primary' ); ?>
	</div><!-- .widget-area -->
<?php endif; ?>
<?php>
