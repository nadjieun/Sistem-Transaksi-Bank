<%-- 
    Document   : createATMLogic
    Created on : Apr 15, 2018, 11:46:26 PM
    Author     : Rachmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "singleton.SingletonApp"%>
<%@page import = "model.Tabungan, model.KartuATM" %>
<!DOCTYPE html>
<%
    String id = request.getParameter("rekening");
    String tipeKartu = "GOLD";
    int idKartu = Integer.parseInt(request.getParameter("idkartu"));
    
    SingletonApp singletonApp = new SingletonApp();
    Tabungan tabungan = new Tabungan(Long.parseLong(id));
    tabungan = singletonApp.getServiceTabungan().login(tabungan);
    
    if(tabungan.getSaldo() >= KartuATM.PLATINUM.getLongValue()){
        tipeKartu = KartuATM.PLATINUM.getStringValue();        
    }
    else if(tabungan.getSaldo() >= KartuATM.GOLD.getLongValue()){
        tipeKartu = KartuATM.GOLD.getStringValue();        
    }
    else{
        tipeKartu = KartuATM.SILVER.getStringValue();        
    }
    
    singletonApp.getServiceTabungan().createATM(tabungan.getRekening(), tipeKartu, idKartu);
    response.sendRedirect("adminsitecrud.jsp");
%>
