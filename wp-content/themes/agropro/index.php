<?php get_header();?>
<?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>

   <section style="padding-top: 150px;">
      <h1>
         <?php the_title()?>
      </h1>

      <p>
         <?php the_content()?>
      </p>
   </section>

   <?php endwhile; else:?>
      
   <section>
      <p>Pagina ou post não encontrado.</p>
   </section>
      
   <?php endif;?>

<?php get_footer();?>