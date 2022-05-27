<!DOCTYPE html>
<html lang="pt-br">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title><?php bloginfo('name'); ?> <?php wp_title('-');?></title>
      <meta name="description" content="<?php the_field('descripion_site'); ?>">
      <meta name="author" content="<?php the_field('autor_site'); ?>">
      <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/favicon.ico">
      <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/images/favicon-16x16.png">
      <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/images/favicon-32x32.png">
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
      <!-- Inicio wp header -->
      <?php wp_head();?>
      <!-- Final wp header -->
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#"/></div>
      </div>
      <!-- end loader -->
      <div class="full_bg">
         <!-- header -->
         <header class="header-area">
            <div class="container-fluid">
               <div class="row d_flex">
                  <div class=" col-md-2 col-sm-3">
                     <div class="logo">
                        <a href="/cursos/agropro/">
                            <img src="<?php echo get_template_directory_uri();?>/images/logo.png" alt="logo da agro pro">
                        </a>
                     </div>
                  </div>
                  <div class="col-md-8 col-sm-9">
                     <div class="navbar-area">
                        <nav class="site-navbar">
                           <?php
                              $args = array(
                                 'menu' => 'Menu principal',
                                 'theme_location' => 'header menu',
                                 'container' => false,
                                 'menu_class' => 'menu_header',
                              );
                              wp_nav_menu( $args );
                           ?>
                           <button class="nav-toggler">
                           <span></span>
                           </button>
                        </nav>
                     </div>
                  </div>
               </div>
            </div>
         </header>
         <!-- end header inner -->