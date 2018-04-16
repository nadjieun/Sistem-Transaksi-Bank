<%-- 
    Document   : atmmenu
    Created on : Apr 16, 2018, 11:57:23 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(ATM)</title>
    </head>
    <body>
        <h1>Selamat Datang di ATM</h1>
        <br>
        <h2>Silahkan Memilih Transaksi</h2>
        <br>
        <form>
            <button><a href="transaksioffline_transfer.jsp">Transfer</a></button>
            <button><a href="transaksioffline_ceksaldo.jsp">Cek Saldo</a></button>
            <button><a href="atmtariktunai.jsp">Tarik Tunai</a></button>
            <button><a href="transaksioffline_setortunai.jsp">Setor Uang</a></button>
        </form>
    </body>
</html>