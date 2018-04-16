<%-- 
    Document   : transaksionline_transferproses
    Created on : Apr 15, 2018, 9:42:47 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOffline"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Online)</title>
    </head>
    <body>
<%
    Long rektujuan = Long.parseLong(request.getParameter("rektujuan"));
    Long uangtransfer = Long.parseLong(request.getParameter("uangtransfer"));
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
    TransaksiOffline transaksi = new TransaksiOffline(tabungan);
    
    if (transaksi.transfer(uangtransfer, rektujuan)== true){
%>
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
            <button><a href="transaksionlinemenu.jsp">Kembali ke menu utama</a></button>
            <button><a href="usersite.jsp">Keluar</a></button>
        </form>
<%    
    }   
%>        
    </body>
</html>