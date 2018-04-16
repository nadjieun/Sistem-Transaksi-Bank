<%-- 
    Document   : transaksioffline_tariktunai
    Created on : Apr 16, 2018, 7:04:25 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Offline)</title>
    </head>
    <body>
        <form action="atmtariktunaiatmproses.jsp">
            <table>
                <tr>
                    <td>Masukkan Jumlah Uang yang Ingin di Ambil</td>
                </tr>
                <tr>
                    <td><input type="text" name="uangambil"></td>
                </tr>
            </table>
            <button type="submit">Simpan</button>
        </form>
    </body>
</html>
