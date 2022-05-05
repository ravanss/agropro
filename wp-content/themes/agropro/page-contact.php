<?php
// Template Name: Contact
get_header();
?>
<?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>
<?php include(TEMPLATEPATH . "/inc/contact.php"); ?>

<?php endwhile; else: endif;?>


<?php get_footer();?>