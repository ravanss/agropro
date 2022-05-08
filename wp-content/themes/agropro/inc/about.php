<!-- about -->
<?php $about = get_page_by_title('About'); ?>
<?php if (have_rows('about_itens', $about)) : while(have_rows('about_itens', $about)) : the_row();?>
<div class="about">
   <div class="container-fluid">
      <div class="row d_flex">
         <div class="col-lg-6 col-md-12">
            <div class="titlepage text_align_left">
               <span><?php the_sub_field('about-span')?></span>
               <h2><?php the_sub_field('about-title')?></h2>
               <p><?php the_sub_field('about-text')?></p>
               <?php if(!is_page('about')) {?>
                  <a class="read_more" href="agropro/about"><?php the_sub_field('about-link')?></a>
               <?php } ?>
            </div>
         </div>
         <div class="col-lg-6 col-md-12">
            <div class="row d_flex">
               <div class="col-md-7">
                  <div class="about_img">
                     <figure>
                        <img src="<?php the_sub_field('about-img-big')?>" alt="<?php the_sub_field('about-img-big-alt')?>"/>
                     </figure>
                  </div>
               </div>
               <div class="col-md-5">
                  <div class="about_img">
                     <figure>
                        <img src="<?php the_sub_field('about-img-small')?>" alt="<?php the_sub_field('about-img-small-alt')?>"/>
                     </figure>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- end about -->
<?php endwhile; else: endif;?>