      <!--  footer -->
      <footer>
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class="col-lg-3 col-md-6">
                     <div class="hedingh3  text_align_left">
                        <h3>Newsletter</h3>
                        <form id="colof" class="form_subscri">
                           <input class="newsl" placeholder="Enter Email" type="text" name="Email">
                           <button class="subsci_btn"><img src="images/new.png" alt="#"/></button>
                        </form>
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
                           <li><img src="images/resent.jpg" alt="#"/>ea commodo consequat. Duis aute </li>
                           <li><img src="images/resent.jpg" alt="#"/>ea commodo consequat. Duis aute </li>
                        </ul>
                     </div>
                  </div>
                     <div class="col-lg-3 col-md-6">
                     <div class="hedingh3  flot_right text_align_left">
                        <h3>ContacT</h3>
                        <ul class="top_infomation">
                           <li><i class="fa fa-phone" aria-hidden="true"></i>
                              +01 1234567892
                           </li>
                           <li><i class="fa fa-envelope" aria-hidden="true"></i>
                              <a href="Javascript:void(0)">demo@gmail.com</a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row d_flex">
                     <div class="col-md-8">
                        <p>© 2022 All Rights Reserved. Design by <a href="https://html.design/"> Free html Templates</a></p>
                     </div>
                     <div class="col-md-4">
                        <ul class="social_icon ">
                           <li><a href="Javascript:void(0)"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                           <li><a href="Javascript:void(0)"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                           <li><a href="Javascript:void(0)"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
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