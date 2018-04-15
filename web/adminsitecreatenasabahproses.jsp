<%-- 
    Document   : adminsitecreatenasabahproses
    Created on : Apr 15, 2018, 11:04:16 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Nasabah"%>
<%--<%@page import="service.ServiceNasabah"%>--%>
<%@page import="singleton.SingletonApp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut</title>
    </head>
    <body>
        <h1>Register Nasabah</h1>
<%
    String id = request.getParameter("idnasabah");
    Long idnasabah = Long.parseLong(id);
    Nasabah nasabah = new Nasabah(idnasabah);
    SingletonApp singletonApp = new SingletonApp();
    Nasabah nasabah2 = singletonApp.getServiceNasabah().login(nasabah);
    
    if (nasabah2 == null){
        singletonApp.getInstance().getServiceNasabah().register(nasabah);
        out.print("Nasabah telah dibuat");
    } else {
        out.print("Nasabah sudah ada");
    }
    
%>

        <button><a href="adminsitecreate.jsp">Kembali</a></button>
    </body>
</html>
