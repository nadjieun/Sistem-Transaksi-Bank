<%-- 
    Document   : transaksionline_ceksaldo
    Created on : Apr 16, 2018, 10:06:53 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOnline"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Online)</title>
    </head>
    <body>
<%
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
    TransaksiOnline transaksi = new TransaksiOnline(tabungan);
    
%>
        <h1>Saldo anda</h1>
        <br>
        <%
            out.print(transaksi.cekSaldo());
        %>
        <br>
        <form>
            <button><a href="transaksionlinemenu.jsp">Kembali ke menu utama</a></button>
            <button><a href="usersite.jsp">Keluar</a></button>
        </form>
    </body>
</html>