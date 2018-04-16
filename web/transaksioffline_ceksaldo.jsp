<%-- 
    Document   : transaksioffline_ceksaldo
    Created on : Apr 16, 2018, 7:03:58 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOffline"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Teller)</title>
    </head>
    <body>
<%
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
%>
        <h1>Saldo anda</h1>
        <br>
        <%
            out.print(tabungan.getSaldo());
        %>
        <br>
        <form>
            <button><a href="tellermenu.jsp">Kembali ke menu utama</a></button>
            <button><a href="usersite.jsp">Keluar</a></button>
        </form>
    </body>
</html>
