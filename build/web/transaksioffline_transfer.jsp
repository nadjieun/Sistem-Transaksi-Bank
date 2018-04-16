<%-- 
    Document   : transaksioffline_transfer
    Created on : Apr 16, 2018, 7:03:42 PM
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
        <form action="transaksioffline_transferproses.jsp">
            <table>
                <tr>
                    <td>Masukkan No Rekening Tujuan</td>
                </tr>
                <tr>
                    <td><input type="text" name="rektujuan"></td>
                </tr>
                <br>
                <tr>
                    <td>Masukkan Jumlah Uang yang Ingin di Transfer</td>
                </tr>
                <tr>
                    <td><input type="text" name="uangtransfer"></td>
                </tr>
            </table>
            <button type="submit">Kirim</button>
        </form>
    </body>
</html>
