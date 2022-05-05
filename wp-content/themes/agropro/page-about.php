<?php
// Template Name: About
get_header();
?>
<?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>
<?php include(TEMPLATEPATH . "/inc/about.php"); ?>


<?php endwhile; else: endif;?>
<?php get_footer();?>