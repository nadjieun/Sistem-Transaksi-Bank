<%-- 
    Document   : adminsitecreateatm
    Created on : Apr 15, 2018, 12:53:35 PM
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
        <h1>Register Kartu ATM</h1>
        <br>
        <form action="adminsitecreatenasabahproses.jsp">
            <table>
                <tr>
                    <td>Pilihan</td>
                </tr>
                <tr>
                    <td>Silver&emsp;|&emsp;Gold&emsp;|&emsp;Platinum</td>
                </tr>
                <tr>
                    <td>Tipe Kartu</td>
                    <td>:</td>
                    <td><input type="text" name="tipekartu"></td>
                </tr>
            </table>
            <button type="submit">Buat</button>
        </form>
    </body>
</html>
