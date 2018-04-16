<%-- 
    Document   : transaksionline_transferproses
    Created on : Apr 15, 2018, 9:42:47 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Nasabah"%>
<%@page import="model.Tabungan"%>
<%@page import="singleton.SingletonApp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Online)</title>
    </head>
    <body>
        <h1>Transfer</h1>
<%
    String trf = request.getParameter("uangtransfer");
    Long transfer = Long.parseLong(trf);
    SingletonApp singletonApp = new SingletonApp();
    
    while(true){
        if (singletonApp.getServiceATM())
    }
    
%>

        <button><a href="adminsitecreate.jsp">Kembali</a></button>
    </body>
</html>
