<?php get_header();?>
<?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>

<div class="container" style="padding-top: 150px;">
        <div class="row">
            <div class="col-md-12">
                <div style="padding: 40px 0;">
                  <h1>
                     <?php the_title()?>
                  </h1>
                  <p>
                     <?php the_content()?>
                  </p>
                </div>
            </div>
        </div>
    </div>
   
   <?php endwhile; else:?>
      
   <section>
      <p>Pagina ou post não encontrado.</p>
   </section>
      
   <?php endif;?>

<?php get_footer();?>