

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
 
  <title>Mobile Shop📱📱</title>
 <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="assets/css/style.css" />
  <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
</head>



<body>
<div class="wrapper">
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
    <header class="header">
        <div class="container">
          <div class="row">
            <div class="col-md-5 col-md-offset-1">
                <div class="content">
                  <div class="pull-middle">
                    <h1 class="page-header">Create your account and buy best mobile phones online at the best prices. </h1>
                    
                  </div>              
                </div>
            </div>
            <div class="col-md-4 col-md-offset-1 text-center mt-100 mb-100">
                <div class="phone">
                    <img class="img-responsive img-rounded" src="images/mobile-1.jpg">
                </div>
            </div>
          </div>
        </div>
    </header>
    <section class="section">
        <div class="container">
            <div class="row">
               <div class="col-md-4 col-md-offset-1 text-center mt-100 mb-100">
                    <div class="phone">
                        <img class="img-responsive img-rounded" src="images/mobile-2.jpg">
                    </div>
                         <h1><strong>Samsung Galaxy S8</strong></h1>
                </div>
                <div class="col-md-5 col-md-offset-1">
                    <div class="content">
                        <div class="pull-middle">
                            <h2 class="h1 page-header">Discover more about features.</h2>
                            <ul class="media-list">
                              <li class="media">
                                <a class="media-left" href="#">
                                  <span class="glyphicon glyphicon-cloud icon text-success"></span>
                                </a>
                                <div class="media-body">
                                  <h3 class="media-heading">Infinity Display </h3>
                                  <p>Big, brilliant, and HDR certified.</p>
                                </div>
                              </li>
                              <li class="media">
                                <a class="media-left" href="#">
                                  <span class="glyphicon glyphicon-cloud icon text-success"></span>
                                </a>
                                <div class="media-body">
                                  <h3 class="media-heading">Camera</h3>
                                  <p>Smart, sharp, selfie-friendly.</p>
                                </div>
                              </li>
                              <li class="media">
                                <a class="media-left" href="#">
                                  <span class="glyphicon glyphicon-cloud icon text-success"></span>
                                </a>
                                <div class="media-body">
                                  <h3 class="media-heading">Bixby</h3>
                                  <p>Intelligence that learns from you.</p>
                                </div>
                              </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 text-right">
                    <div class="content">
                        <div class="pull-middle">
                            <h3><strong>Describe your product.</strong></h3>
                            <p><strong>All‑Glass Design.</strong> 
                            </p>
                           <p>The most durable glass ever in a smartphone, front and back. A color‑matched, aerospace‑grade aluminum band. New space gray, silver, and gold finishes.</p>
                        </div>
                    </div>
                </div>
               <div class="col-md-4 col-md-offset-1 mt-100 mb-100">
                    <div class="phone">
                        <img class="img-responsive img-rounded" src="images/mobile-3.jpg">
                    </div>
                       <h1><strong>   Apple Iphone 8+ </strong></h1>
                </div>
                <div class="col-md-3 col-md-offset-1">
                    <div class="content">
                        <div class="pull-middle">
                            <h3><strong>A beautiful mind.</strong></h3>
                            <p>iPhone 8 introduces an all‑new glass design. The world’s most popular camera, now even better. The most powerful and smartest chip ever in a smartphone. Wireless charging that’s truly effortless. And augmented reality experiences never before possible. iPhone 8. A new generation of iPhone. Sign up for free and buy Iphone 8+.</p>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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
                            <a href="index">Home</a>
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
    
    <!-- End -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

  </body>
  </html>
