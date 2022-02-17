<%-- 
    Document   : ticket
    Created on : 16 feb. 2022, 20:50:47
    Author     : joK28
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css" type="text/css"></link>
    </head>
    <body style="margin: 2%">
<div class="l-col-right ticket-wrap" aria-label="A fake boat ticket demonstrating mixing font weights and widths">
  <div class="ticket" aria-hidden="true">
    <div class="ticket__header">
      <div class="ticket__co">
        <span class="ticket__co-name">Boletos Azmita</span>
        <span class="u-upper ticket__co-subname">Disfruta tu evento</span>
      </div>
    </div>
    <div class="ticket__body">
      <p class="ticket__route"><%= request.getAttribute("concierto") %></p>
      <p class="ticket__description"><%= request.getAttribute("nombre") %></p>
      <div class="ticket__timing">
        <p>
          <span class="u-upper ticket__small-label">Folio</span>
          <span class="ticket__detail">28</span>
        </p>
        <p>
          <span class="u-upper ticket__small-label">Tipo</span>
          <span class="ticket__detail">Adulto</span>
        </p>
        <p>
          <span class="u-upper ticket__small-label">Zona</span>
          <span class="ticket__detail">Azul</span>
        </p>
      </div>
      <p class="ticket__fine-print"><%= request.getAttribute("lugar") %></p>
      <p class="u-upper ticket__admit"><%= request.getAttribute("fecha") %></p>
      <img class="ticket__barcode" src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/515428/barcode.png" alt="Fake barcode" />
    </div>
  </div>
</div>
    </body>
</html>
