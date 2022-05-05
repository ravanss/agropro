<!-- about -->
<?php
   $about = get_page_by_title('about');
   if (have_rows('about_itens', $about)) : while(have_rows('about_itens', $about)) : the_row();
?>
<div class="about">
   <div class="container-fluid">
      <div class="row d_flex">
         <div class="col-lg-6 col-md-12">
            <div class="titlepage text_align_left">
               <span><?php the_field('link-span')?>About Us</span>
               <h2><?php the_field('link-title')?>AGRICULTURE MARKET</h2>
               <p><?php the_field('link-text')?>fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that itfact th</p>
               <?php if(is_page('about')) {?>
                  <a class="read_more" href="agropro/about"><?php the_field('link-about')?>Learn More</a>
               <?php } ?>
            </div>
         </div>
         <div class="col-lg-6 col-md-12">
            <div class="row d_flex">
               <div class="col-md-7">
               <div class="about_img">
                  <figure>
                     <img src="images/about_img.jpg" alt="#"/>
                  </figure>
               </div>
               </div>
               <div class="col-md-5">
               <div class="about_img">
                  <figure>
                     <img src="images/about_img1.jpg" alt="#"/>
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