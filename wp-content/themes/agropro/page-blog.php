<?php
// Template Name: Blog
get_header();
?>
<?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>
<?php include(TEMPLATEPATH . "/inc/news.php"); ?>
      <?php endwhile; else: endif;?>

      <!-- end news -->
      <?php get_footer();?>