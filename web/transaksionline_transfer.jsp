<%-- 
    Document   : transaksionline_transfer
    Created on : Apr 15, 2018, 9:51:24 PM
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
        <form action="transaksionline.jsp">
            <table>
                <tr>
                    <td>Masukkan Jumlah Uang yang Ingin di Transfer</td>
                </tr>
                <tr>
                    <td><input type="text" name="uangtransfer"></td>
                </tr>
            </table>
            <button type="submit">Kirim</button>
        </form>
    </body>
</html>
