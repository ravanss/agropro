<?php get_header() ?>

    <!-- PAGINA DE BLOG -->
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
            <?php if (have_posts() ) : while (have_posts() ) : the_post(); ?>
            
                <div class=" col-md-4">
                    <div class="latest">
                        <span>
                            <?php echo get_the_date( 'd'); ?>
                            </br>
                            <?php echo get_the_date( 'M'); ?>
                        </span>
                        <img src="<?php the_field('blog-img')?>" alt="Imagem do blog">
                        <div class="nostrud">
                            <h3><?php the_title() ?></h3>
                            <p><?php the_field('blog-content')?></p>
                            <a href="<?php print get_the_permalink( );?>" class="read_more">Leia mais</a>
                        </div>
                    </div>
                </div>

            <?php endwhile; ?>

                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="post-nav">
                                <?php next_posts_link('posts mais antigos');?>
                                <?php previous_posts_link('Posts  novos');?>
                            </div>
                        </div>
                    </div>
                </div>
                
            <?php else: endif;?>
            </div>
        </div>
    </div>


<?php get_footer();?>