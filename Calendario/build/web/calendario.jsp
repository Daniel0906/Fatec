<%-- 
    Document   : calendario
    Created on : 15 de mar. de 2021, 16:56:11
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    String mes = null;
    int ano = 0;
    try{
         mes = request.getParameter("mes");
         ano = Integer.parseInt(request.getParameter("ano"));
    }catch(Exception ex){
        errorMessage = "Erro na validação dos valores!";
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calendário</title>
    </head>
    <body>
        <h1>Calendário</h1>
        <% if(errorMessage != null){ %>
        <div style="color: red;"><%= errorMessage %></div>
        <%}else{%>
        <h2><%= mes%>  <%= ano%>  <% if(ano%4 == 0){out.println("(Bissexto)");} %></h2>
            <table border="1">
                <!-- começa calendario -->
                <% if(mes.equals("Fevereiro")){%>
                    <tr><th>Domingo</th><th>Segunda</th><th>Terça</th><th>Quarta</th><th>Quinta</th><th>Sexta</th><th>Sabado</th></tr>
                    <tr><% for(int i=1; i<=28; i++){
                        out.println("<td>"+i+"</td>");
                        if(i%7 == 0){
                            out.println("<tr></tr>");
                        }
                    }%></tr>
                <%}else if(mes.equals("Abril") || mes.equals("Junho") || mes.equals("Setembro") || mes.equals("Novembro")){%>
                <tr><th>Domingo</th><th>Segunda</th><th>Terça</th><th>Quarta</th><th>Quinta</th><th>Sexta</th><th>Sabado</th></tr>
                <tr><% for(int i=1; i<=30; i++){
                    out.println("<td>"+i+"</td>");
                    if(i%7 == 0){
                        out.println("<tr></tr>");
                    }
                }%></tr>
                <%}else{%>
                <!-- termina calendario -->
                <!-- começa calendario -->
                <tr><th>Domingo</th><th>Segunda</th><th>Terça</th><th>Quarta</th><th>Quinta</th><th>Sexta</th><th>Sabado</th></tr>
                <tr><% for(int i=1; i<=31; i++){
                    out.println("<td>"+i+"</td>");
                    if(i%7 == 0){
                        out.println("<tr></tr>");
                    }
                }%></tr>
                <%}%>
                <!-- termina calendario -->
            </table>
        <%}%>
        <hr>
        <form>
            <label><b>Ano:</b></label>
            <input type="number" name="ano" placeholder="Digite um dia...">
            <br><br>
            <label><b>Mês:</b></label>
            <select name="mes">
                <option value="Janeiro" selected>Janeiro</option>
                <option value="Fevereiro">Fevereiro</option>
                <option value="Março">Março</option>
                <option value="Abril">Abril</option>
                <option value="Maio">Maio</option>
                <option value="Junho">Junho</option>
                <option value="Julho">Julho</option>
                <option value="Agosto">Agosto</option>
                <option value="Setembro">Setembro</option>
                <option value="Outubro">Outubro</option>
                <option value="Novembro">Novembro</option>
                <option value="Dezembro">Dezembro</option>
            </select>
            <br><br>
            <input type="submit" name="enviar" value="Enviar">
        </form>
        <hr>
        <div><a href="index.html">voltar</a></div>
    </body>
</html>
