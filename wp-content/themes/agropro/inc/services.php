<!-- services -->
<?php $services = get_page_by_title('Services'); ?>
<div class="services">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            <div class="titlepage text_align_left">
               <span><?php the_field('services-title')?></span>
               <h2><?php the_field('services-subtite')?></h2>
            </div>
         </div>
      </div>
      <div class="row">
      <?php if (have_rows('services-itens', $services)) : while(have_rows('services-itens', $services)) : the_row();?>

         <div class="col-md-4">
            <div class="services_box_main">
               <div  class="services_box text_align_left">
                  <figure><img src="images/service1.jpg" alt="#"/></figure>
                  <div class="veget">
                     <h3>FRESH<br>VEGETABLES</h3>
                     <p>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip</p>
                  </div>
               </div>
               <a class="read_more" href="services.html">Read More</a>
            </div>
         </div>

      <?php endwhile; else: endif;?>
   
      </div>
   </div>
</div>