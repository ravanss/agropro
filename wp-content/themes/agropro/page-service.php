<?php
// Template Name: Services
get_header();
?>
<?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>
<?php include(TEMPLATEPATH . "/inc/services.php"); ?>
      
<?php endwhile; else: endif;?>

<!-- end services -->
<?php get_footer();?>