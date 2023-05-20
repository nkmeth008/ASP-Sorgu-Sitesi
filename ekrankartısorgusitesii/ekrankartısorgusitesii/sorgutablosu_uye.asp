<!DOCTYPE HTML>
<html>
<head>
<title>Bilgisayar Donanımı Bilgi Paneli</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css_klasoru/anasayfa.css">
</head>
<body>
<header>
  <nav class="main-nav">
    <ul>
      <li>
        <ul>
          <li><a href="./anasayfa_uye.asp">Anasayfa</a></li>
          <li><a href="./ekraninfo.asp">Ekran Kartları</a></li>
          <li><a href="./ornekmodeller_uye.asp">Örnek Modeller</a></li>
          <li><a href="./sorgutablosu_uye.asp"class="active">Ekran Kartı Sorgu Tablosu</a></li
            <li><a href="./anasayfa_misafir.asp">Çıkış Yap</a></li>
        </ul>
      </li>
    </ul>
  </nav>
</header>
<section id="video" class="home">
  <h1 style="color: rgb(255, 255, 255);"><b> PC Donanım Ve Ekran Kartları Bilgi Paneli</b></h1>
  <h2 style="color: rgb(255, 255, 255);"><b>Yapım Tarihi 2021</b></h2>
</section>
<section id="main-content">

  <%
  set conn=Server.CreateObject("ADODB.Connection")
  conn.Provider="Microsoft.Jet.OLEDB.4.0"
  conn.Open Server.MapPath("htmldatabase1.mdb")
  
  set rs=Server.CreateObject("ADODB.recordset")
  rs.Open "Select * from ekrankartlarihtml", conn
  %>
  <table border="1" width="100%">
    <tr>
    <%for each x in rs.Fields%>
      <td><%Response.Write(x.name)%></td>
    <%next %>
    </tr>
    
  <%do until rs.EOF%>
    <tr>
    <%for each x in rs.Fields%>
      <td><%Response.Write(x.value)%></td>
    <%next
    rs.MoveNext%>
    </tr>
  <% loop
  
  rs.close
  conn.close
  %>

</section>
<footer>

  
  <div class="copyright"><small>Copyright. Bütün Hakları Saklıdır | by <a target="_blank" rel="nofollow" href="https://www.instagram.com/furkanugurlu_/">Furkan Uğurlu</a>.</small></div>
</footer>
</body>
</html>
