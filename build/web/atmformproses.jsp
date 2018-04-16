<%-- 
    Document   : transaksiofflineatm
    Created on : Apr 16, 2018, 12:28:30 AM
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
    int idKartu = Integer.parseInt(request.getParameter("idkartu"));
    int pass = Integer.parseInt(request.getParameter("password"));
    
    Tabungan tabungan = new Tabungan(0L, "us", pass, 0L,"lala",idKartu);
    TransaksiOffline transaksi = new TransaksiOffline(tabungan);
    
    if (transaksi.loginATM(idKartu, pass)){
        session.setAttribute("tabungan", transaksi.getTabungan());
        response.sendRedirect("atmmenu.jsp");
    } else {
%>
        <h1>User Tidak Ada atau Password Salah</h1>
        <br>
        <h5>Silahkan mengulang kembali</h5>
        <br>
        <form>
            <button><a href="atmform.jsp">Kembali</a></button>
        </form>
<%    
    }
%>

    </body>
</html>
