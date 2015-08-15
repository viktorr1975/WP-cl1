<?php
/*
 * Template Name: DB QUERY
 * Description: A Page Template with a darker design.
 */
 if ( current_user_can( 'administrator' ) ) {
    global $wpdb;
    echo "<pre>";
    print_r( $wpdb->queries );
    echo "</pre>";
}
?>