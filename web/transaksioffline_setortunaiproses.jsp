<%-- 
    Document   : transaksioffline_setortunaiproses
    Created on : Apr 16, 2018, 8:02:18 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="singleton.SingletonApp,java.io.*,java.util.*"%>
<!DOCTYPE html>
<%
    Long uangsetor = Long.parseLong(request.getParameter("uangsetor"));
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
    
    uangsetor = tabungan.getSaldo() + uangsetor;
    tabungan.setSaldo(uangsetor);
    SingletonApp singletonApp = new SingletonApp();
    
    singletonApp.getServiceTabungan().update(tabungan.getRekening(), tabungan, tabungan.getUser(), tabungan.getPass());
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Teller)</title>
    </head>
    <body>
        <h1>Saldo anda sekarang</h1>
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
