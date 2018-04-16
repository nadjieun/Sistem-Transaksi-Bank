<%-- 
    Document   : tellerform
    Created on : Apr 14, 2018, 6:29:04 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Teller)</title>
    </head>
    <body>
        <h1>Selamat Datang di Bank Krut</h1>
        <br>
        <form action="tellerformproses.jsp">
            <table>
                <tr>
                    <td>No. Rekening</td>
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
