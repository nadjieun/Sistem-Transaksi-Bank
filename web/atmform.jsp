<%-- 
    Document   : atmform
    Created on : Apr 14, 2018, 6:31:56 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Online)</title>
    </head>
    <body>
        <h1>Selamat Datang di Bank Krut</h1>
        <br>
        <form action="atmformproses.jsp">
            <table>
                <tr>
                    <td>No Rek</td>
                    <td>:</td>
                    <td><input type="text" name="norek"></td>
                    <td>Password</td>
                    <td>:</td>
                    <td><input type="text" name="password"></td>
                </tr>
            </table>
            <button type="submit">Login</button>
        </form>
    </body>
</html>
