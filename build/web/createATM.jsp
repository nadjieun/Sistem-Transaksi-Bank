<%-- 
    Document   : createATM
    Created on : Apr 15, 2018, 11:43:30 PM
    Author     : Rachmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Silahkan mengisi form di bawah ini untuk membuat atm</h1>
        <form action="createATMLogic.jsp">
            <table>
                <tr>
                    <td>No. Rekening</td>
                    <td><input type="text" name="rekening"></td>
                </tr>
                <tr>
                    <td>ID Kartu</td>
                    <td><input type="text" name="idkartu"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit"> submit </button></td>
                </tr>
            </table>
            </form>
    </body>
</html>
