<?php
// Template Name: Home
get_header();
?>
<?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>
   <!-- top -->
   <div class="slider_main">
   <!-- carousel code -->
      <div class="banner-carousel owl-carousel owl-theme wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s">
         <?php if (have_rows('carrosel_itens')) : while(have_rows('carrosel_itens')) : the_row();?>
            <!-- carousel item -->
            <article class="carousel-item" style="background-image: url('<?php the_sub_field('carrosel-item')?>')"></article>
         <?php endwhile; else: endif;?>
      </div>
      <div class="container-fluid">
         <div class="row">
            <div class="col-md-12">
               <div class="willom">
                  <h1><?php the_field('title_content')?></h1>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- end banner -->

   <?php include(TEMPLATEPATH . "/inc/about.php"); ?>
   <?php include(TEMPLATEPATH . "/inc/services.php"); ?>

   <!-- choose -->
   <div class="choose">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="titlepage text_align_center">
                  <h2><?php the_field('choose_title')?></h2>
               </div>
            </div>
         </div>
         <div class="row">
            <?php if (have_rows('choose_itens')) : while(have_rows('choose_itens')) : the_row();?>
               <div class="col-md-3">
                  <div class="point text_align_center">
                     <h3><?php the_sub_field('choose_number')?>+</h3>
                     <span><?php the_sub_field('choose_text')?></span>
                  </div>
               </div>
            <?php endwhile; else: endif;?>
         </div>
      </div>
   </div>
   <!-- choose -->

   <?php include(TEMPLATEPATH . "/inc/news.php"); ?>
   <?php include(TEMPLATEPATH . "/inc/contact.php"); ?>
   
<?php endwhile; else: endif;?>
<?php get_footer();?>