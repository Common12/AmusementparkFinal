<%-- 
    Document   : admin
    Created on : 20 Jun, 2018, 9:32:47 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="jquery-3.3.1.js"></script>
        <script src="jquery.dataTables.min.js"></script>
        <link href="jquery.dataTables.min.css" rel="stylesheet"/>
        <script>
            $(document).ready(function() {
    var table = $('#example').DataTable();
 
    $('#example tbody').on( 'click', 'tr', function () {
        $(this).toggleClass('selected');
    } );
 
    $('#button').click( function () {
        alert( table.rows('.selected').data().length +' row(s) selected' );
    } );
} );
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>PARK NAME</th>
                <th>LOCATION </th>
             
                <th>CITY</th>
                <th>EMAIL</th>
                <th>PHONE</th>
                <th>CLOSING TIME</th>
                <th>OPENING TIME </th>
                <th>SUNDAY OPENING TIME</th>
                <th>SUNDAY CLOSING TIME</th>
                <th>ADULT FEES</th>
                <th>CHILD FEES</th>
                <th>IMAGE</th>
                <th>EDIT</th>
                <th>DELETE</th>
                
            </tr>
        </thead>
        <tbody>
        <s:iterator value="parkList">
            <tr>
           <td><s:property value="id"></s:property></td>
           <td><s:property value="parkname"></s:property></td>
           <td><s:property value="location"></s:property></td>
           <td><s:property value="city"></s:property></td>
           <td><s:property value="email"></s:property></td>
          <td><s:property value="phone"></s:property></td>
          <td><s:property value="ctime"></s:property></td>
          <td><s:property value="otime"></s:property></td>
          <td><s:property value="sotime"></s:property></td>
          <td><s:property value="sctime"></s:property></td>
          <td><s:property value="afees"></s:property></td>
          <td><s:property value="cfees"></s:property></td>
          <td><img src="upload/<s:property value="imagename"></s:property>"  width="35px" height="35px" style="border: 1px solid red;"/></td>
         
           <td><a href='edit?id=<s:property value="id"/>'><img src="edit.png" width="30px" height="30px"></a></td>
           <td><a href='delete?id=<s:property value="id"/>'><img src="delete1.png" width="30px" height="30px"></a></td>
          </tr>
        </s:iterator>         
          </tbody>
        </table>
    </body>
</html>
