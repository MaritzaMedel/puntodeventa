<%-- 
    Document   : productos
    Created on : 21 mar. 2024, 09:12:34
    Author     : MAR
--%>

<%@page import="Cafe.EL.Cafe"%>
<%@page import="java.util.LinkedList"%>
<%@page import="Cafe.DAL.DAL_Cafe"%>
<%@page import="usuarios.UTIL.DbUtil"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styleProducto.css"/>
        <script src="compra.js"></script>
    </head>
    <body>
        <%Connection dbCon = DbUtil.getInstance().getConnection();
            DAL_Cafe dal_cafe = new DAL_Cafe(dbCon);
            LinkedList<Cafe> cafes = dal_cafe.queryToDataBase();
        %>
        <table>
            <tr>
                <th>
                    CÓDIGO
                </th>
                <th>
                    NOMBRE
                </th>
                <th>
                    DESCRIPCION
                </th>
                <th>
                    PRECIO
                </th>
                <th>
                    EXISTENCIAS
                </th>
                <th>
                    MOLIENDA
                </th>

            </tr>


            <%
                for (int i = 0; i < cafes.size(); i++) {
                    Cafe c = cafes.get(i);
            %>
            <tr>
                <td><%= c.getIdProducto()%></td>
                <td><%= c.getNombre()%></td>
                <td><%= c.getDescripcion()%></td>
                <td><%=c.getExistencias()%></td>
                <td ><%= c.getPrecio()%></td>
                <td><%= c.getTipoMolienda()%></td>
            </tr>
            <% }%>
        </table>

        <%

            out.print("<script>");

            out.print("var lista = [");
            for (int i = 0; i < cafes.size(); i++) {
                Cafe cafe = cafes.get(i);
                out.print("{ codigo: '" + cafe.getIdProducto() + "',nombre:'" + cafe.getNombre() + "', precio: " + cafe.getPrecio() + " },");
            }
            out.print("];");

            out.print("</script>");
        %>


        <label for="codigo"  id="etiqueta">CÓDIGO</label>
        <input type="text" id="codigo" value=""/>
        
        <div id="ticket"  style="display:none">
            <p id ="parr" style="display: none">TICKET DE COMPRA <br> COFFEE BREAK</p>
            <ul id="listaCompras"></ul>
            <ul id="total"></ul>
        </div>

        <button id="comprar" onclick="comprar(lista)">COMPRAR</button>
        <button id="carrito" onclick="verCompra()">
            <p id="cantidad">0</p>
        </button>
        <div id="mensaje"></div>        
        <button id="terminar" disabled="true"onclick="finalizarCompra()">TERMINAR COMPRA</button>
        <button id="verVentas" onclick="verVentas()"> VER VENTAS</button>
        <div id="ventas"></div>
    </body>

</html>
