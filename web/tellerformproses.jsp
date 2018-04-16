<%-- 
    Document   : tellerformproses
    Created on : Apr 16, 2018, 4:45:09 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="singleton.SingletonApp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Teller)</title>
    </head>
    <body>
<%
    Long norek = Long.parseLong(request.getParameter("norek"));
    int pass = Integer.parseInt(request.getParameter("password"));
    SingletonApp singleton = new SingletonApp();
    Tabungan tabungan = new Tabungan(norek,"user",pass,0);
    if (singleton.getServiceTabungan().login(tabungan) != null){%>
        <h1>Selamat Datang di Teller</h1>
        <br>
        <h2>Silahkan Memilih Transaksi</h2>
        <br>
        <form>
            <button><a href="transaksioffline_transfer.jsp">Transfer</a></button>
            <button><a href="transaksioffline_ceksaldo.jsp">Cek Saldo</a></button>
            <button><a href="transaksioffline_tariktunai.jsp">Tarik Tunai</a></button>
            <button><a href="transaksioffline_setoruang.jsp">Setor Uang</a></button>
        </form>
    
<%    
    } else if(singleton.getServiceTabungan().findByUser(tabungan) == null){
%>
    
        <h1>User Tidak Ada</h1>
        <br>
        <h5>Silahkan mengulang kembali</h5>
        <br>
        <form>
            <button><a href="transaksionline.jsp">Kembali</a></button>
        </form>
<%    
    }
%>
    </body>
</html>
