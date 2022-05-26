      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class="col-lg-3 col-md-6">
                     <div class="hedingh3  text_align_left">
                        <h3>Newsletter</h3>
                        <?php echo apply_shortcodes( '[contact-form-7 id="132" title="newsletter"]' ); ?>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <div class="hedingh3 text_align_left">
                        <h3> Explore</h3>
                        <?php
                              $args = array(
                                 'menu' => 'Menu footer',
                                 'theme_location' => 'footer menu',
                                 'container' => false,
                                 'menu_class' => 'menu_footer',
                              );
                              wp_nav_menu( $args );
                           ?>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <div class="hedingh3 text_align_left">
                        <h3>Recent Posts</h3>
                        <ul class="recent">
                           <?php
                              // PEGADO OS POSTS DO WP
                              $listaPosts = get_posts([
                                 'posts_per_page' => 2,
                                 'post_type' => 'post',
                                 'orderby' => 'date',
                                 'order' => 'desc'
                              ]);
                              //EXIBINDO OS POSTS
                              foreach ( $listaPosts as &$postAtual ) : 
                           ?>
                              <li>
                                 <a href="<?php print get_the_permalink( $postAtual->ID );?>">
                                    <img src="<?php the_field('blog-img', $postAtual)?>" alt="Imagem do blog">
                                    <span><?php print $postAtual->post_title; ?></span>
                                 </a>
                              </li>
                           <?php endforeach; ?>
                        </ul>
                     </div>
                  </div>
                  <div class="col-lg-3 col-md-6">
                     <div class="hedingh3  flot_right text_align_left">
                        <h3>Contato</h3>
                        <ul class="top_infomation">
                           <?php if (have_rows('footer_itens', 'option')) : while(have_rows('footer_itens', 'option')) : the_row();?>
                              <li>
                                 <a href="<?php the_sub_field('link-icone', 'option'); ?>">
                                    <i class="<?php the_sub_field('class-icon', 'option'); ?>" aria-hidden="true"></i>
                                    <?php the_sub_field('text-icone', 'option'); ?>
                                 </a>
                              </li>
                           <?php endwhile; else: endif;?>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row d_flex">
                     <div class="col-md-8">
                        <p>© <?php echo date( 'Y' ); ?> Todos os direitos reservados. Desenvolvido por <a href="https://github.com/ravanss">Saulo Pedro</a></p>
                     </div>
                     <div class="col-md-4">
                        <ul class="social_icon ">
                           <?php if (have_rows('footer_icons', 'option')) : while(have_rows('footer_icons', 'option')) : the_row();?>
                              <li><a href="<?php the_sub_field('footer-link', 'option')?>"><i class="<?php the_sub_field('footer-icon', 'option')?>" aria-hidden="true"></i></a></li>
                           <?php endwhile; else: endif;?>         
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
       <!-- Inicio wp Footer -->
         <?php wp_footer();?>
      <!-- Final wp Footer -->
   </body>
</html>