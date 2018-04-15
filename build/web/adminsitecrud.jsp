<%-- 
    Document   : adminsitecrud
    Created on : Apr 15, 2018, 9:43:11 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "model.Tabungan" %>
<%@page import= "singleton.SingletonApp" %>
<%@page import= "java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut</title>
    </head>
    <body>
        <h1>Daftar semua Tabungan</h1>
        <table>
            <tr>
                <td>ID</td>
                <td>NAMA</td>
                <td>PASS</td>
                <td>SALDO</td>
            </tr>
            <%
                SingletonApp singletonApp = new SingletonApp();
                List<Tabungan> listTabungan = singletonApp.getServiceTabungan().findAll();
                for(Tabungan n : listTabungan){%>
            <tr>
                <td><%out.print(n.getRekening());%></td>
                <td><%out.print(n.getUser());%></td>
                <td><%out.print(n.getPass());%></td>
                <td><%out.println(n.getSaldo());%></td>
                <td><a href="editTabungan.jsp">edit</a></td>
                <td><a href="deleteTabungan.jsp">delete</a></td>
            </tr>
            <%}%>
        </table>    
    </body>
</html>
