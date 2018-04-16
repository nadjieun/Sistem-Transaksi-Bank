<%-- 
    Document   : transaksioffline_setortunai
    Created on : Apr 16, 2018, 7:04:36 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Teller)</title>
    </head>
    <body>
        <form action="transaksioffline_setortunaiproses.jsp">
            <table>
                <tr>
                    <td>Masukkan Jumlah Uang yang Ingin di Setorkan</td>
                </tr>
                <tr>
                    <td><input type="text" name="uangsetor"></td>
                </tr>
            </table>
            <button type="submit">Simpan</button>
        </form>
    </body>
</html>
