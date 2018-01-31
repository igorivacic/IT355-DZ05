
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>

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

        <title>Log in</title>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/style.css" />
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css">
    </head>




    <body background="https://images.unsplash.com/photo-1446776899648-aa78eefe8ed0?auto=format&fit=crop&w=1352&q=80&ixid=dW5zcGxhc2guY29tOzs7Ozs%3D&ixlib=rb-0.3.5&q=1500&w=2000">
        
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
            
     
               
                      </ul>
            
        </div>
      </div>
    </nav>

    
    
        
        
        
        
        
        
        
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Please sign in</h3>
                        </div>
                        <div class="panel-body">
                            <c:if test="${not empty error}">
                                <div class="error">${error}</div>
                            </c:if>
                            <c:if test="${not empty msg}">
                                <div class="msg">${msg}</div>
                            </c:if>
                            <form accept-charset="UTF-8" role="form"  name='loginForm' action="<c:url value='/j_spring_security_check' />"
                  method='POST'>
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Username" name="username" type="text">
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Password" name="password" type="password" value="">
                                    </div>
<!--                                    <div class="checkbox">
                                        <label>
                                            <input name="remember" type="checkbox" value="Remember Me"> Remember Me
                                        </label>
                                    </div>-->
                                      <input type="submit" name="submit" class="login loginmodal-submit" value="Submit">
                                        <input type="hidden" name="${_csrf.parameterName}"
                                             value="${_csrf.token}" />
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    </body>
</html>

