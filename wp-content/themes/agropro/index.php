<?php get_header();?>
   <?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>
      <h1><?php the_title()?></h1>
          <?php the_content()?>
   <?php endwhile; else:?>
      <p><?php _e('Descupe, mas não foram encontrados post dessa categoria')?></p>
   <?php endif;?>
   <H1>Pagina Index</H1>

<?php get_footer();?>