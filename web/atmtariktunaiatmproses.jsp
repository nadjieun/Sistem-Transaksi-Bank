<%-- 
    Document   : transaksioffline_tariktunaiatmproses
    Created on : Apr 17, 2018, 12:06:44 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOffline, model.Atm"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Offline)</title>
    </head>
    <body>
<%
    Long uangambil = Long.parseLong(request.getParameter("uangambil"));
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
    Atm transaksi = new Atm(tabungan);
    String atm;
    
    String teller;
    
    
    if (transaksi.ambil(uangambil) == true){
%>
        <h1>Transaksi Berhasil</h1>
        <br>
        <h2>Saldo anda sekarang</h2>
        <br>
        <%
            out.print(tabungan.getSaldo());
        %>
        <br>
        <form>
            <button><a href="atmmenu.jsp">Kembali ke menu utama</a></button>
            <button><a href="usersite.jsp">Keluar</a></button>
        </form>
<%    
    } else{   
%>
        <h1>Transaksi Gagal</h1>
        <br>
        <h2>Saldo anda sekarang</h2>
        <br>
        <%
            out.print(transaksi.cekSaldo());
        %>
        <br>
        <form>
            <button><a href="atmmenu.jsp">Kembali ke menu utama</a></button>
            <button><a href="usersite.jsp">Keluar</a></button>
        </form>
<%    
    }   
%>        
    </body>
</html>

