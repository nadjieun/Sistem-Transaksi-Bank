<%-- 
    Document   : tellermenu
    Created on : Apr 16, 2018, 7:49:38 PM
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
        <h1>Selamat Datang di Teller</h1>
        <br>
        <h2>Silahkan Memilih Transaksi</h2>
        <br>
        <form>
            <button><a href="transaksioffline_transfer.jsp">Transfer</a></button>
            <button><a href="transaksioffline_ceksaldo.jsp">Cek Saldo</a></button>
            <button><a href="transaksioffline_tariktunai.jsp">Tarik Tunai</a></button>
            <button><a href="transaksioffline_setortunai.jsp">Setor Uang</a></button>
        </form>
    </body>
</html>
