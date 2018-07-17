
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!-- Website Template by freewebsitetemplates.com -->
<html>
    <head>
        <meta charset="UTF-8">
        <title> Amusement Park</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <style>

            #txt
            {
                width:400px;
            }

        </style>
    </head> 
    <body>
        <div id="background">
            <div id="page">
                <div id="header">
                    <a href="index.jsp" class="logo">Amusement park</a>
                    <ul>
                        <li>
                            <a href="index.jsp">home</a>
                        </li>
                       
                        <li>
                            <a href="Registration.jsp">Registration</a>
                        </li>

                        <li>
                            <a href="about.html">about</a>
                        </li>
                        <li>
                           <a href="feedback.html">Feedback</a>
                        </li>
                        <li>
                            <a href="contact.html">contact</a>
                        </li>
                    </ul>
                </div>
                <h1> Park Registration</h1>
                    <s:form action="signup" method="POST" enctype="multipart/form-data">
                 
                    <s:textfield name="park.parkname" label="Parkname"></s:textfield>
                    <s:textfield name="park.location" label="location"></s:textfield>
                    <s:textfield name="park.city" label="City"></s:textfield>
                    <s:textfield name="park.email" label="email"></s:textfield>
                    <s:textfield name="park.phone" label="phone"></s:textfield>
                       <s:textfield name="park.otime" type="time" label="Openingtime"></s:textfield>
                    <s:textfield name="park.ctime" type="time" label="Closingtime"></s:textfield>
                
                    <s:textfield name="park.sotime" type="time" label="sundayopeningtime"></s:textfield>
                    <s:textfield name="park.sctime" type="time" label="sundayclosingtime"></s:textfield>
                    <s:textfield name="park.afees" label="Adultfees"></s:textfield>
                    <s:textfield name="park.cfees" label="Childfees"></s:textfield>



                    <s:file name="uploadFile" label="Upload Image"></s:file>
                    <s:submit value="Signup"/>
                </s:form>

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
