<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<html>
    <head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="bootstrap.min.js"></script>
        <script src="jquery-1.11.1.min.js"></script>
     
        <meta charset="UTF-8">
	<title>Amusement Park</title>
	<link rel="stylesheet" href ="css/style.css" type="text/css">
        <style type="text/css">
            .error{background-color:#31b0d5
            }
            
        </style>
</head>

    <body style="background-image: url('parkd3.jpg'); opacity:0.9 ;background-size: 100%">

	<div id="background">
		<div id="page">
			<div id="header">
				<a href="index.jsp" class="logo">Amusement Park </a>
				<ul>
					<li class="selected">
						<a href="index.jsp">home</a>
					</li>
					<li>
						<a href="Registration.jsp">Registration </a>
					</li>
					<li>
						<a href="about.html">about</a>
					</li>
					<li>
						<a href="feedback.html">Feedback</a>	</li>
					<li>
						<a href="contact.html">contact</a>
					</li>
				</ul>
		  </div>
        
                    <div class="container" style="margin-left: 100px;" >    
            <div id="loginbox" style="margin-top:100px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 100%; position: relative; top:-10px"><a href="forget.html">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <form action="controller" id="loginform" class="form-horizontal" role="form">
                          <div style="margin-bottom: 35px" class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                              <input id="login-username" type="text" class="form-control" name="user.username" value="" placeholder="username">
                          </div>
                          <div style="margin-bottom: 35px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="login-password" type="password" class="form-control" name="user.password" placeholder="password">
                          </div>



                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                        <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                    </label>
                                </div>
                            </div>


                            <div style="margin-top:30px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                  
                                    <input type="submit" value="login" id="btn-login" class="btn btn-success">

                                    <!--  <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>-->

                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:100%" >
                                        Don't have an account! 
                                        <a href="userSignup.jsp" onClick="$('#loginbox').hide();
                                                $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                    </div>
                                </div>
                            </div>    
                        </form>     



                    </div>                     
                </div>  
            </div>
        </div>
    </body>

</html>
