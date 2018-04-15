<%-- 
    Document   : createATMLogic
    Created on : Apr 15, 2018, 11:46:26 PM
    Author     : Rachmad
--%>
<%@page import= "singleton.SingletonApp"%>
<%@page import = "model.Tabungan" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String id = request.getParameter("rekening");
    String tipeKartu = "GOLD";
    
    SingletonApp singletonApp = new SingletonApp();
    Tabungan tabungan = new Tabungan(Long.parseLong(id));
    
    if(tabungan.getSaldo() >= 1000){
        tipeKartu = "PLATINUM";        
//    }
//    else if(tabungan.getSaldo() >= 300){
//        tipeKartu = "GOLD";        
//    }
//    else{
//        tipeKartu = "SILVER";        
//    }
    
    singletonApp.getServiceTabungan().createATM(tabungan.getRekening(), tipeKartu);
    response.sendRedirect("adminsitecrud.jsp");
%>
