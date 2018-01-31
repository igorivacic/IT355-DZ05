
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

  <title>About page</title>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
  <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
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

    
    
    
  <div class="hero-wrapper">
    <div class="hero-wrapper-inner">
      <div class="cover-container">
       
        <div class="inner cover">
          <h1 class="cover-heading">About Us</h1>
          <p class="lead"></p>
          <p class="lead">
              <a href="gallery" class="btn btn-lg btn-left">See our products</a>
            <a href="#section-1" class="btn btn-lg btn-left">Read More</a>
            <a href="/IgorIvacic" class="btn btn-lg btn-right">Back to Home</a>
          </p>
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row section-1" id="section-1">


     <div class="col-xs-12">
       <h1 class="cover-heading">Vision, mission and values</h1>
       <p class="lead">Our vision is simple: to become the premier online electronics seller by providing an unparalleled selection of the very best gadgets, an unbeatable shopping experience, prompt shipping and exceptional customer service that exceeds expectations.
       For us, the customer is always king. Our total commitment to customers empowers us to work closely together with every customer. When you buy from us, the sale is not complete when we ship your order, it is complete when you are totally satisfied.</p>



     </div>

   </div>



   <div class="row section-2" id="section-2">
    <div class="col-xs-6 " >
      <div class="image-1">
      </div>
    </div>
    <div class="col-xs-6" >
      <div class="image-2">
      </div>
    </div>
    <div class="col-xs-6" >
      <div class="image-3">
      </div>
    </div>
    <div class="col-xs-6" >
      <div class="image-4">
      </div>
    </div>
  </div>


  <div class="row section-3" id="section-3">
    <div class="col-xs-12 col-md-6 col-md-offset-3">




  </div>
</div>

</div>
 <footer>
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
                             <a href="gallery">Gallery </a>
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
    
    <!-- End -->



    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/homepage.js"></script>
    <script src="https://www.gstatic.com/firebasejs/3.9.0/firebase.js"></script>
  </body>
  </html>
