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
      <title><?php bloginfo('name')?></title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css">
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.0/jquery.min.js"></script>
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
                           <ul>
                              <li><a class="active" href="index.html">Home</a></li>
                              <li><a href="/cursos/agropro/about">About</a></li>
                              <li><a href="/cursos/agropro/service">Service</a></li>
                              <li><a href="/cursos/agropro/blog">Blog</a></li>
                              <li><a href="/cursos/agropro/contact">Contact</a></li>
                           </ul>
                           <button class="nav-toggler">
                           <span></span>
                           </button>
                        </nav>
                     </div>
                  </div>
                  <div class="col-md-2 padd_0 d_none">
                     <ul class="email text_align_right">
                        <li><a href="Javascript:void(0)">Login</a>
                        </li>
                        <li><a href="Javascript:void(0)"><i class="fa fa-search" aria-hidden="true"></i>
                           </a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </header>
         <!-- end header inner -->