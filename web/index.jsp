
<!-- 
    Document   : index
    Created on : Jul 7, 2018, 9:27:11 AM
    Author     : s choudhry
-->

<%@page import="java.util.ArrayList"%>
<%@page import="com.universal.common.CommonToolClass"%>
<%@page import="com.universal.dto.Park"%>
<%@page import="com.universal.dto.User"%>
<%@page import="com.universal.dao.ParkDao"%>
<%@page import="com.universal.dao.UserDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html><!DOCTYPE HTML>
<!-- Website Template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>Amusement Park</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
    
    
    
    
    
    
	<div id="background">
		<div id="page">
			<div id="header">
				<a href="index.jsp" class="logo">Amusement Park </a>
				<ul>
					<li class="selected">
						<a href="index.jsp">Home</a>
					</li>
					
					<li>
						<a href="Registration.jsp">Registration </a>
					</li>
                                        <li>
						<a href="login.jsp">Login</a>
					</li>
					<li>
						<a href="about.html">About</a>
					</li>
					<li>
						<a href="feedback.html">Feedback</a>
					</li>
					<li>
						<a href="contact.html">Contact</a>
					</li>
				</ul>
		  </div>
			<div id="body">
				<div id="figure">
					<img src="images/mother-and-child.png" alt=""> <a href="tickets.html"><img src="images/discounts.png" alt=""></a>
				</div>
				
                            <div id="section">
					<h1>PARKS</h1>
					
                                        
						
							
                                                            
                                                            
                                                                 <%
                                                                    String imagename="";
                                                                    %>
                                                                    
                                                                <% 
                                                                    int id;
                                                                    ArrayList<Park>parklist= ParkDao.getParkList();
                                                                    
                                                                for(Park park:parklist){
                                                                imagename=park.getImagename();
                                                                id=park.getId();
                                                                %>
                                                                
                                                                
                                                                
                                                                    
                                                                <img style="width:200px; height: 200px;" src='upload/<%=imagename%>'>
                                                                <a style="text-decoration: none; font-size:20px; color:blue;" href="parkDetails?parkid=<%=id%>">Show details</a>
                                                             
                                                                
                                                                <%
                                                                    }%>
                


                                                                
                                                                                                                               
								
								
						
				
                            
                            
						<div class="aside">
							<div>
									</div>
							<div>
							
								<p>
									
								</p>
									</div>
						</div>
					
				</div>
		
			<div id="footer">
				<div>
					<div>
						<h3>categories</h3>
						<ul class="category">
							<li>
								<a href="index.jsp">home</a>
							</li>
							<li>
								<a href="about.html">about</a>
							</li>
							<li>
								<a href="Registration.jsp">Registration</a>
							</li>
							<li>
								<a href="feedback.html">Feedback</a>
							</li>
							<li>
								<a href="contact.html">contact</a>
							</li>
						</ul>
					</div>
					<div>
						<h3>connect</h3>
						<ul class="connect">
							<li id="facebook">
								<a href="http://freewebsitetemplates.com/go/facebook/">facebook</a>
							</li>
							<li id="twitter">
								<a href="http://freewebsitetemplates.com/go/twitter/">twitter</a>
							</li>
							<li id="googleplus">
								<a href="http://freewebsitetemplates.com/go/googleplus/">googleplus</a>
							</li>
						</ul>
					</div>
				</div>
				<p>
					&copy; Amusement Park 2018. all rights reserved.
				</p>
			</div>
                </div>
        </div>
	
</body>
</html>
