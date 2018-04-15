<%-- 
    Document   : adminsitecreatenasabah
    Created on : Apr 15, 2018, 10:54:25 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut</title>
    </head>
    <body>
        <h1>Register Nasabah</h1>
        <br>
        <form action="adminsitecreatenasabahproses.jsp">
            <table>
                <tr>
                    <td>ID Nasabah</td>
                    <td>:</td>
                    <td><input type="text" name="idnasabah"></td>
                </tr>
            </table>
            <button type="submit">Buat</button>
        </form>
    </body>
</html>
