

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
       

<!DOCTYPE html>
<html lang="en">
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="../../favicon.ico">

  <title>Our Products</title>
  <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
  <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
</head>



<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand text-uppercase" href="/IgorIvacic">WOW MOBILE 📱</a>
        </div>
    
        <div class="collapse navbar-collapse" id="navigation">
            <ul class="nav navbar-nav">
                <li><a href="about">About Us</a></li>
                <li><a href="gallery">Our Products</a></li>
            
                <sec:authorize access="hasRole('ROLE_ADMIN')">
         
                <li><a href="mobile" >Admin</a></li>
                
    </sec:authorize>
              </ul>        
                     
                      <ul class="nav navbar-nav navbar-right">
             <sec:authorize access="isAuthenticated()">
            <c:url value="/j_spring_security_logout" var="logoutUrl" />
            <form type="hidden" action="${logoutUrl}" method="post" id="logoutForm">
                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}" />
            </form>
                
            <script>
                function formSubmit() {
                    document.getElementById("logoutForm").submit();
                }
            </script>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
        <li><a href="#"> ${pageContext.request.userPrincipal.name}</a></li>
        
            </c:if>
          <li> <a href="javascript:formSubmit()" class="btn btn-lg btn-right">Logout</a></li>    
          
        </sec:authorize>
        
            <sec:authorize access="!isAuthenticated()">
        <li> <a href="login" class="btn btn-lg btn-right">Sign in</a></li>
                 </sec:authorize>

               
                      </ul>
            
        </div>
      </div>
    </nav>
    
    
    
    
<div class="container">
  <div class="row"><!--

Photos from unsplash.com

Follow me on
Dribbble: https://dribbble.com/supahfunk
Twitter: https://twitter.com/supahfunk
Codepen: https://codepen.io/supah/

-->
<h1 class="cover-heading">Gallery</h1>
<div class="gallery">

  <figure>
    <img src="https://images.unsplash.com/photo-1458862768540-8b091824fe2d?auto=format&fit=crop&w=1352&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixlib=rb-0.3.5&q=80&w=600" alt="" />
    <figcaption>Apple Iphone 6s<small>United States</small></figcaption>
  </figure>
  <figure>
    <img src="https://images.unsplash.com/photo-1505740494862-e7e49c099cf1?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixlib=rb-0.3.5&q=80&w=600" alt="" />
    <figcaption>HTC <small>Russia</small></figcaption>
  </figure>
  <figure>
    <img src="https://images.unsplash.com/photo-1510878933023-e2e2e3942fb0?auto=format&fit=crop&w=1351&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixlib=rb-0.3.5&q=80&w=600" alt="" />
    <figcaption>Apple Iphone X <small>Deutschland</small>
    </figcaption>
  </figure>
  <figure>
    <img src="https://images.unsplash.com/photo-1503173178995-e830507546b9?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixjsv=2.1.0&ixlib=rb-0.3.5&q=80&w=600" alt="" />
    <figcaption>Samsung Galaxy J8<small>United States</small></figcaption>
  </figure>
  <figure>
    <img src="https://images.unsplash.com/photo-1482176012301-7421d86c74bb?auto=format&fit=crop&w=1353&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixjsv=2.1.0&ixlib=rb-0.3.5&q=80&w=600" alt="" />
    <figcaption> H1<small>United Kingdom</small></figcaption>
  </figure>
  <figure>
    <img src="https://images.unsplash.com/photo-1495291158577-5f6a7097419f?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixlib=rb-0.3.5&q=80&w=600" alt="" />
    <figcaption>Apple Iphone SE <small>United States</small></figcaption>
  </figure>
  <figure>
    <img src="https://images.unsplash.com/photo-1457682524032-465ef406d105?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixlib=rb-0.3.5&q=80&w=600" alt="" />
    <figcaption>Sony Xperia<small>United States</small></figcaption>
  </figure>
  <figure>
    <img src="https://images.unsplash.com/photo-1496158939048-cf4a51cc1ab6?auto=format&fit=crop&w=1350&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixlib=rb-0.3.5&q=80&w=600" alt="" />
    <figcaption>Nexus <small>Russia</small></figcaption>
  </figure>
  <figure>
    <img src="https://images.unsplash.com/photo-1471014706828-7f1b12e6d88b?auto=format&fit=crop&w=1351&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixlib=rb-0.3.5&q=80&w=600" alt="" />
    <figcaption>Motorola <small>Deutschland</small>
    </figcaption>
  </figure>
 
</div>

<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="display:none;">
  <symbol id="close" viewBox="0 0 18 18">
    <path fill-rule="evenodd" clip-rule="evenodd" fill="#FFFFFF" d="M9,0.493C4.302,0.493,0.493,4.302,0.493,9S4.302,17.507,9,17.507
      S17.507,13.698,17.507,9S13.698,0.493,9,0.493z M12.491,11.491c0.292,0.296,0.292,0.773,0,1.068c-0.293,0.295-0.767,0.295-1.059,0
      l-2.435-2.457L6.564,12.56c-0.292,0.295-0.766,0.295-1.058,0c-0.292-0.295-0.292-0.772,0-1.068L7.94,9.035L5.435,6.507
      c-0.292-0.295-0.292-0.773,0-1.068c0.293-0.295,0.766-0.295,1.059,0l2.504,2.528l2.505-2.528c0.292-0.295,0.767-0.295,1.059,0
      s0.292,0.773,0,1.068l-2.505,2.528L12.491,11.491z"/>
  </symbol>
</svg>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
    popup = {
  init: function(){
    $('figure').click(function(){
      popup.open($(this));
    });
    
    $(document).on('click', '.popup img', function(){
      return false;
    }).on('click', '.popup', function(){
      popup.close();
    })
  },
  open: function($figure) {
    $('.gallery').addClass('pop');
    $popup = $('<div class="popup" />').appendTo($('body'));
    $fig = $figure.clone().appendTo($('.popup'));
    $bg = $('<div class="bg" />').appendTo($('.popup'));
    $close = $('<div class="close"><svg><use xlink:href="#close"></use></svg></div>').appendTo($fig);
    $shadow = $('<div class="shadow" />').appendTo($fig);
    src = $('img', $fig).attr('src');
    $shadow.css({backgroundImage: 'url(' + src + ')'});
    $bg.css({backgroundImage: 'url(' + src + ')'});
    setTimeout(function(){
      $('.popup').addClass('pop');
    }, 10);
  },
  close: function(){
    $('.gallery, .popup').removeClass('pop');
    setTimeout(function(){
      $('.popup').remove()
    }, 100);
  }
}

popup.init()

</script>

  </div>
</div>



  <footer class="login-foot">
     <div class="container">
       <div class="row text-center">
       
                 <div class="col-md-6 col-sm-6 col-xs-12">
                  <ul class="list-inline">
                             
                               <li>
                                    <a href="#"><i class="fa fa-facebook fa-2x"></i></a>
                               </li>
                               
                               <li>
                                    <a href="#"><i class="fa fa-dropbox fa-2x"></i></a>
                               </li>
                               
                               <li>
                                    <a href="#"><i class="fa fa-flickr fa-2x"></i></a> 
                               </li>
                              
                               <li>
                                    <a href="#"><i class="fa fa-github fa-2x"></i></a>
                               </li>
                                
                               <li>
                                    <a href="#"><i class="fa fa-linkedin fa-2x"></i></a>
                               </li>
                               
                               <li>
                                    <a href="#"><i class="fa fa-tumblr fa-2x"></i></a>
                               </li>
                                
                               <li>
                                    <a href="#"><i class="fa fa-google-plus fa-2x"></i></a>
                              </li>
                              
                     </ul>
                   </div>
           
                 <div class="col-md-6 col-sm-6 col-xs-12">
                  <ul class="menu list-inline">
                             
                         <li>
                            <a href="/IgorIvacic">Home</a>
                          </li>
                               
                          <li>
                             <a href="about">About</a>
                          </li>
                               
                          <li>
                            <a href="#">Blog</a>
                          </li>
                               
                          <li>
                             <a href="gallery">Our Products </a>
                          </li>
                               
                          <li>
                            <a href="#">Contact</a>
                         </li>
               
                 </ul>
               </div>
           
           
           </div> 
        </div>
    </footer>
    
    
    <div class="copyright">
     <div class="container">
       
         <div class="row text-center">
          <p>Copyright © 2017 All rights reserved</p>
         </div>
         
     </div>
    </div>


  </body>
  </html>
        
        