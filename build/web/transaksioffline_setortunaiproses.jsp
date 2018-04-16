<%-- 
    Document   : transaksioffline_setortunaiproses
    Created on : Apr 16, 2018, 8:02:18 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOffline"%>
<!DOCTYPE html>
<%
    Long uangsetor = Long.parseLong(request.getParameter("uangsetor"));
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
    TransaksiOffline transaksi = new TransaksiOffline(tabungan);
    
    transaksi.simpan(uangsetor);
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Offline)</title>
    </head>
    <body>
        <h1>Transaksi Berhasil</h1>
        <br>
        <h2>Saldo anda sekarang</h2>
        <br>
        <%
            out.print(transaksi.cekSaldo());
        %>
        <br>
        <form>
            <button><a href="tellermenu.jsp">Kembali ke menu utama</a></button>
            <button><a href="usersite.jsp">Keluar</a></button>
        </form>
    </body>
</html>
