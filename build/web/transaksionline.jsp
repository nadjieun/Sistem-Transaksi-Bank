<%-- 
    Document   : transaksionline
    Created on : Apr 15, 2018, 9:20:25 PM
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
        <form action="transaksionlineproses.jsp">
        <table>
            <tr>
                <td>Username</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="text" name="password"></td>
            </tr>
        </table>
            <button type="submit">Login</button>
            <button><a href="transaksionline_transfer.jsp">Transfer</a></button>
            <button><a href="transaksionline_ceksaldo.jsp">Cek Saldo</a></button>
        </form>
    </body>
</html>
