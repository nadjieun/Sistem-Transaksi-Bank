<%-- 
    Document   : deleteTabunganLogic
    Created on : Apr 15, 2018, 9:16:14 PM
    Author     : Rachmad
--%>
<%@page import= "singleton.SingletonApp"%>
<%@page import = "model.Tabungan" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String id = request.getParameter("rekening");
    
    SingletonApp singletonApp = new SingletonApp();
    Tabungan tabungan = new Tabungan(Long.parseLong(id));
    
    singletonApp.getServiceTabungan().delete(tabungan);
    response.sendRedirect("adminsitecrud.jsp");
%>
