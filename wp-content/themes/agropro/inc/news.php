      <!-- ULTIMOS POSTS DO SITE PARA A HOME-->
      <div class="news">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage text_align_left">
                     <span>Nossas</span>
                     <h2>Ultimas noticias</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <?php
                  // PEGADO OS POSTS DO WP
                  $listaPosts = get_posts([
                     'posts_per_page' => 3,
                     'post_type' => 'post',
                     'orderby' => 'date',
                     'order' => 'desc'
                  ]);
                  //EXIBINDO OS POSTS
                  foreach ( $listaPosts as &$postAtual ) : 
               ?>
                  <div class=" col-md-4">
                     <div class="latest">
                        <span>
                           <?php echo get_the_date( 'd', $postAtual ); ?>
                           </br>
                           <?php echo get_the_date( 'M', $postAtual ); ?>
                        </span>
                        <img src="<?php the_field('blog-img', $postAtual)?>" alt="Imagem do blog">
                        <div class="nostrud">
                           <h3><?php print $postAtual->post_title; ?></h3>
                           <p><?php the_field('blog-content', $postAtual)?></p>
                           <a href="<?php print get_the_permalink( $postAtual->ID );?>" class="read_more">Leia mais</a>
                        </div>
                     </div>
                  </div>
               <?php endforeach; ?>
            </div>
         </div>
      </div>