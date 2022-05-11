<?php $services = get_page_by_title('Services'); ?>
<!-- services -->
<div class="services">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="titlepage text_align_left">
               <span><?php the_field('services-title', $services)?></span>
               <h2><?php the_field('services-subtite', $services)?></h2>
            </div>
         </div>
      </div>
      <div class="row">
      <?php if (have_rows('services-itens', $services)) : while(have_rows('services-itens', $services)) : the_row();?>

         <div class="col-md-4">
            <div class="services_box_main">
               <div  class="services_box text_align_left">
                  <figure><img src="<?php the_sub_field('services-img-fir')?>" alt="primeira imagem do servicos"/></figure>
                  <div class="veget">
                     <h3><?php the_sub_field('services-card-title')?></h3>
                     <p><?php the_sub_field('services-card-text')?></p>
                  </div>
               </div>
               <?php if(!is_page('Services')) {?>
                  <a class="read_more" href="services.html">Leia mais</a>
               <?php }?>
            </div>
         </div>

      <?php endwhile; else: endif;?>
   
      </div>
   </div>
</div>