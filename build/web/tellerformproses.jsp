<%-- 
    Document   : tellerformproses
    Created on : Apr 16, 2018, 4:45:09 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="singleton.SingletonApp,java.io.*,java.util.*"%>
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
    Tabungan new_tabungan = singleton.getServiceTabungan().login(tabungan);
    if (new_tabungan != null && tabungan.getPass() == new_tabungan.getPass()){
        session.setAttribute("tabungan", new_tabungan);
        response.sendRedirect("tellermenu.jsp");
    } else if(new_tabungan == null){
%>
    
        <h1>User Tidak Ada</h1>
        <br>
        <h5>Silahkan mengulang kembali</h5>
        <br>
        <form>
            <button><a href="tellerform.jsp">Kembali</a></button>
        </form>
<%    
    } else if(tabungan.getPass() != new_tabungan.getPass()){
%>
    
        <h1>Password Salah</h1>
        <br>
        <h5>Silahkan mengulang kembali</h5>
        <br>
        <form>
            <button><a href="tellerform.jsp">Kembali</a></button>
        </form>
<%    
    }
%>

    </body>
</html>
