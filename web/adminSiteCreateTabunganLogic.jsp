<%-- 
    Document   : adminSiteCreateTabunganLogic
    Created on : Apr 15, 2018, 11:08:42 AM
    Author     : Rachmad
--%>

<%@page import= "singleton.SingletonApp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.Tabungan" %>
<!DOCTYPE html>
<%
    String id = request.getParameter("rekening");
    String user = request.getParameter("user");
    String pass = request.getParameter("pass");
    String saldo = request.getParameter("saldo");
    
    SingletonApp singletonApp = new SingletonApp();
    Tabungan tabungan = new Tabungan(Long.parseLong(id),user,Integer.parseInt(pass),Long.parseLong(saldo));
    
    singletonApp.getServiceTabungan().register(tabungan);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrasi Tabungan</title>
    </head>
    <body>
        <h3>Registrasi sukses</h3>
        <table>
            <tr>
                <td>Rekening</td>
                <td><% out.print(tabungan.getRekening()); %></td>
            </tr>
            <tr>
                <td>User</td>
                <td><% out.print(tabungan.getUser()); %></td>
            </tr>
            <tr>
                <td>Pass</td>
                <td><% out.print(tabungan.getPass()); %></td>
            </tr>
            <tr>
                <td>Saldo</td>
                <td><% out.print(tabungan.getSaldo()); %></td>
            </tr>
        </table>
        <button> <a href="adminsite.jsp">back to admin site</a></button>
    </body>
</html>