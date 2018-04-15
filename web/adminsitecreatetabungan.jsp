<%-- 
    Document   : admincreatetabungan
    Created on : Apr 15, 2018, 10:56:50 AM
    Author     : Rachmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Silahkan mengisi form di bawah ini untuk membuat tabungan baru</h1>
        <form action="adminSiteCreateTabunganLogic.jsp">
            <input type="text" name="rekening">
            <input type="text" name="user">
            <input type="text" name="pass">
            <input type="text" name="saldo">
            <button type="submit"> submit </button>
        </form>
    </body>
</html>
