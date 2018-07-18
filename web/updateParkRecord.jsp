<%-- 
    Document   : updaterecord
    Created on : 23 Jun, 2018, 10:14:13 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <form action="update">
        <input type="text" name="park.id" value=" <s:property value="park.id"/>"> <br>
        <input type="text" name="park.parkname" value=" <s:property value="park.parkname"/>"> <br>
        <input type="text" name="park.location" value=" <s:property value="park.locaonti"/>"> <br>
        <input type="text" name="park.city" value=" <s:property value="park.city"/>"> <br>
        <input type="text" name="park.email" value=" <s:property value="park.email"/>"> <br>
        <input type="text" name="park.phone" value=" <s:property value="park.phone"/>"> <br>
        <input type="text" name="park.otime" value=" <s:property value="park.otime"/>"> <br>
        <input type="text" name="park.ctime" value=" <s:property value="park.ctime"/>"> <br>
        <input type="text" name="park.sotime" value=" <s:property value="park.sotime"/>"> <br>
        <input type="text" name="park.sctime" value=" <s:property value="park.sctime"/>"> <br>
        <input type="text" name="park.afees" value=" <s:property value="park.afees"/>"> <br>
        <input type="text" name="park.cfees" value=" <s:property value="park.cfees"/>"> <br>
        <input type="submit" value="Update"/>
        <input type="reset" value="Reset">
       </form>
    </body>
</html>
