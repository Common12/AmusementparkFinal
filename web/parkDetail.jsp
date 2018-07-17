<%@page import="com.universal.dao.ParkDao"%>
<%@page import="com.universal.dao.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.universal.dto.Park"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!-- Website Template by freewebsitetemplates.com -->
<html>
    <head>
        <meta charset="UTF-8">
        <title> Amusement Park</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
    <body>
	
        <h1 style="color:#FF0000" >  <a href="index.jsp" > Back</a> </h1>
            <s:iterator value="park">
             <ul>  <h1 style="color:#000000"> 
               <center> <h1 style="font-size:50px">PARK DETAILS</h1></center>    
                <img src="upload/<s:property value="imagename"></s:property>" align="right" height="400px" width="400px" hspace="250" style="border: 1px solid red;"/>
            
              <li>NAME : <s:property value="parkname"></s:property></li><br>
    <li> LOCATION : <s:property value="location"></s:property></li><br>
    <li>    CITY: <s:property value="city"></s:property></li><br>
   <li> EMAIL:     <s:property value="email"></s:property></li><br>
   <li>  PHONE:    <s:property value="phone"></s:property></li><br>
    <li>   OPENING TIME:  <s:property value="otime"></s:property></li><br>
    <li>   CLOSING TIME:  <s:property value="ctime"></s:property></li><br>
    <li>  SUNDAY OPENING TIME :  <s:property value="sotime"></s:property></li><br>
    <li>  SUNDAY CLOSING TIME:   <s:property value="sctime"></s:property></li><br>
    <li>    ADULT FEES: <s:property value="afees"></s:property></li><br>
    <li>    CHILD FEES: <s:property value="cfees"></s:property></li><br>
                    </h1>  </ul> 
    </div>        
                
   
                
           </s:iterator>
                     	<br>
						<br>					
              
    <center> <h1 style="color:#FF0000">  <a href="login.jsp"> BOOK NOW</a> </h1>
    
    </center>
    
                
           
       
</body>
    
</html>
<%-- 
    Document   : parkdetails
    Created on : Jul 12, 2018, 11:40:57 AM
    Author     : SHRADHA
--%>


